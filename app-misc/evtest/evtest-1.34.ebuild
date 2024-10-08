# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="test program for capturing input device events"
HOMEPAGE="https://gitlab.freedesktop.org/libevdev/evtest"
SRC_URI="https://cgit.freedesktop.org/evtest/snapshot/${PN}-${P}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha amd64 arm ~arm64 ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~s390 ~sparc x86"

BDEPEND="app-text/asciidoc
	app-text/xmlto
	virtual/pkgconfig"

S="${WORKDIR}/${PN}-${P}"

PATCHES=(
	"${FILESDIR}"/${P}-musl-include.patch
)

src_prepare() {
	default
	eautoreconf
}
