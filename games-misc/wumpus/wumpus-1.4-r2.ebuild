# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit toolchain-funcs

DESCRIPTION="Classic Hunt the Wumpus Adventure Game"
HOMEPAGE="http://cvsweb.netbsd.org/bsdweb.cgi/src/games/wump/"
SRC_URI="ftp://ftp.netbsd.org/pub/NetBSD/NetBSD-release-1-6/src/games/wump/wump.c
	ftp://ftp.netbsd.org/pub/NetBSD/NetBSD-release-1-6/src/games/wump/wump.6
	ftp://ftp.netbsd.org/pub/NetBSD/NetBSD-release-1-6/src/games/wump/wump.info"
S="${WORKDIR}"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="sys-apps/less"
RDEPEND="
	${DEPEND}
	!games-misc/bsd-games:0/3
"

src_unpack() {
	cp "${DISTDIR}"/wump.{info,c,6} "${S}/" || die
}

src_compile() {
	touch pathnames.h

	[[ -z "${PAGER}" ]] && PAGER=/usr/bin/less
	$(tc-getCC) ${LDFLAGS} -Dlint -D_PATH_PAGER=\"${PAGER}\" \
		-D_PATH_WUMPINFO=\"/usr/share/${PN}/wump.info\" ${CFLAGS} \
		-o wump wump.c || die
}

src_install() {
	dobin wump
	doman wump.6
	insinto /usr/share/${PN}
	doins wump.info
}
