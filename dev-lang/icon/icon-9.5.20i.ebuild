# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit flag-o-matic toolchain-funcs

DESCRIPTION="Very high level language"
HOMEPAGE="http://www.cs.arizona.edu/icon/"

SRC_URI="https://github.com/gtownsend/icon/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="public-domain HPND"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sparc ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos"
IUSE="X"

S="${WORKDIR}/icon-${PV}"

RDEPEND="
	X? ( x11-libs/libX11:= )"
DEPEND="
	${RDEPEND}
	X? (
		x11-libs/libXpm
		x11-libs/libXt
	)"

src_prepare() {
	default
	# Add CFLAGS and LDFLAGS to Makefiles as needed
	sed -i -e 's/CFLAGS="$(CFLAGS)"/& LDFLAGS="$(LDFLAGS)"/g' ipl/cfuncs/Makefile || die
	sed -i -e 's/^CFLAGS = \(.*\)/CFLAGS = $(CFLAGS) \1/g' ipl/packs/loadfunc/Makefile || die
	sed -i -e 's/CFLAGS="$(CFLAGS)"/& LDFLAGS="$(LDFLAGS)"/g' ipl/packs/loadfunc/Makefile || die
	sed -i -e 's/-o $LIBNAME $CFLAGS/& $LDFLAGS/g' ipl/cfuncs/mklib.sh || die
	sed -i -e 's/$LIBNAME -fPIC/$LIBNAME -fPIC $LDFLAGS/g' ipl/cfuncs/mklib.sh || die
	sed -i -e 's/$(RLINK)/& $(LDFLAGS)/g' src/runtime/Makefile || die

	# executables in src/common are only used to prep the build
	sed -i -e 's/$(CC) $(CFLAGS)/& $(LDFLAGS)/g' src/common/Makefile || die
	# executables in src/rtt are only used to perform the build
	sed -i -e 's/$(CC) $(CFLAGS)/& $(LDFLAGS)/g' src/rtt/Makefile || die

	# do not prestrip files
	find "src" -name 'Makefile' -exec sed -i -e '/strip/d' '{}' \; || die
}

src_configure() {
	# select the right compile target.  Note there are many platforms
	# available
	local mytarget;
	if [[ ${CHOST} == *-darwin* ]]; then
		mytarget="macintosh"
	else
		mytarget="linux"
	fi

	# Fails if more then one make job process.
	# This is an upstream requirement.
	emake -j1 $(usex X X-Configure Configure) name=${mytarget}

	# sanitise the Makedefs file generated by 'make Configure'
	sed -i \
		-e 's:-L/usr/X11R6/lib64::g' \
		-e 's:-L/usr/X11R6/lib::g' \
		-e 's:-I/usr/X11R6/include::g' \
		-e 's:-I/usr/X11R6/include::g' \
		-e '/^CFLAGS/d' \
		Makedefs || die "sed of Makedefs failed"

	if use elibc_musl; then
		append-flags "-D_MUSL"
	fi
	append-flags $(test-flags -fno-strict-aliasing -fwrapv)
}

src_compile() {
	# Fails if more then one make job process.
	# This is an upstream requirement.
	emake -j1 CC="$(tc-getCC)" CFLAGS="${CFLAGS}"
}

src_test() {
	emake Samples
	emake Test
}

src_install() {
	# Needed for make Install
	dodir /usr/$(get_libdir)

	emake Install dest="${D}/usr/$(get_libdir)/icon"
	dosym ../$(get_libdir)/icon/bin/icont /usr/bin/icont
	dosym ../$(get_libdir)/icon/bin/iconx /usr/bin/iconx
	dosym ../$(get_libdir)/icon/bin/icon  /usr/bin/icon
	if use X; then
		dosym ../$(get_libdir)/icon/bin/vib /usr/bin/vib
	fi

	cd "${S}/man/man1" || die
	doman "${PN}"t.1
	doman "${PN}".1

	cd "${S}/doc" || die
	local DOCS=( *.txt ../README )

	local HTML_DOCS=( *.{htm,gif,jpg,css} )
	einstalldocs

	# Clean up items from make Install that get installed elsewhere
	rm -r "${ED}"/usr/$(get_libdir)/${PN}/man || die
	rm -r "${ED}"/usr/$(get_libdir)/icon/{doc,README} || die

	cd "${S}" || die

	# Install Icon Programming Library files

	# Remove files only needed for building the library before copying
	rm -v ipl/{BuildBin,BuildExe,CheckAll,Makefile} || die

	insinto /usr/$(get_libdir)/icon
	doins -r ipl
}
