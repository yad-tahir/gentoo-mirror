# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="An ncurses based mpd client with vi-like key bindings"
HOMEPAGE="https://github.com/boysetsfrog/vimpc"
SRC_URI="https://github.com/boysetsfrog/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="boost taglib"

RDEPEND="dev-libs/libpcre
	media-libs/libmpdclient
	boost? ( dev-libs/boost:= )
	taglib? ( media-libs/taglib )"
DEPEND="${RDEPEND}"
BDEPEND="virtual/pkgconfig"

PATCHES=( "${FILESDIR}"/${P}-boost.patch )

src_prepare() {
	default
	eautoreconf
}

src_configure() {
	econf \
		$(use_enable boost) \
		$(use_enable taglib)
}

src_install() {
	local DOCS=( AUTHORS README.md doc/vimpcrc.example )
	default

	# vimpc will look for help.txt
	docompress -x /usr/share/doc/${PF}/help.txt
}
