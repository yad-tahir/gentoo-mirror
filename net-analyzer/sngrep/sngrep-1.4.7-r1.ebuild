# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit autotools

DESCRIPTION="Ncurses SIP Messages flow viewer"
HOMEPAGE="https://github.com/irontec/sngrep"
SRC_URI="https://github.com/irontec/sngrep/releases/download/v${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="eep gnutls ipv6 openssl pcre unicode"
REQUIRED_USE="
	gnutls? ( !openssl )
"

DEPEND="
	net-libs/libpcap
	sys-libs/ncurses:=[unicode(+)?]
	openssl? ( dev-libs/openssl:0= )
	gnutls? ( net-libs/gnutls )
	pcre? ( dev-libs/libpcre )
"
RDEPEND="${DEPEND}"
PATCHES=(
	"${FILESDIR}"/${PN}-1.4.7-tinfo.patch
	"${FILESDIR}"/${PN}-1.4.7-LDFLAGS.patch
)

src_prepare() {
	default
	eautoreconf
}

src_configure() {
	econf \
		$(use_enable eep) \
		$(use_enable ipv6) \
		$(use_enable unicode) \
		$(use_with gnutls) \
		$(use_with openssl) \
		$(use_with pcre)
}
