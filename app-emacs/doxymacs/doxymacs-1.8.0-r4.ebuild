# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit elisp flag-o-matic

DESCRIPTION="Doxygen editing minor mode"
HOMEPAGE="http://doxymacs.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND=">=dev-libs/libxml2-2.6.13"
RDEPEND="${DEPEND}"

PATCHES=("${FILESDIR}"/${P}-gcc7.patch)
SITEFILE="50${PN}-gentoo.el"

src_configure() {
	append-flags -Wno-error		#260874
	econf --with-lispdir="${SITELISP}/${PN}"
}

src_compile() {
	default
}

src_install() {
	emake DESTDIR="${D}" install
	elisp-site-file-install "${FILESDIR}/${SITEFILE}"
	dodoc AUTHORS ChangeLog NEWS README TODO
}
