# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit toolchain-funcs

DESCRIPTION="A small utility that measures throughput between stdin and stdout"
HOMEPAGE="http://pipeworks.sourceforge.net/"
SRC_URI="mirror://sourceforge/pipeworks/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc x86 ~amd64-linux ~x86-linux ~ppc-macos"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

src_compile() {
	emake CC="$(tc-getCC) ${CFLAGS} ${LDFLAGS}"
}

src_install() {
	dobin pipeworks
	doman pipeworks.1
	dodoc Changelog README
}
