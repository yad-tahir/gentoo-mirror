# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit autotools flag-o-matic

DESCRIPTION="Multimedia library used by many games"
HOMEPAGE="https://plib.sourceforge.net/"
SRC_URI="https://plib.sourceforge.net/dist/${P}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ppc sparc x86"

DEPEND="virtual/opengl"
RDEPEND="${DEPEND}"

PATCHES=(
	"${FILESDIR}"/${P}-shared-libs.patch
	"${FILESDIR}"/${P}-X11-r1.patch
	"${FILESDIR}"/${P}-CVE-2011-4620.patch
	"${FILESDIR}"/${P}-CVE-2012-4552.patch
)

src_prepare() {
	default

	eautoreconf
}

src_configure() {
	append-cxxflags -std=c++03

	local myconf=(
		--enable-shared
	)

	econf "${myconf[@]}"
}

src_install() {
	default

	dodoc KNOWN_BUGS TODO* NOTICE

	find "${ED}" -name '*.la' -delete || die
}
