# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="A gtk frontend to rsync"
HOMEPAGE="http://www.opbyte.it/grsync/"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc ppc64 x86"
IUSE=""
SRC_URI="http://www.opbyte.it/release/${P}.tar.gz"

RDEPEND=">=x11-libs/gtk+-2.16:2
	net-misc/rsync"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	dev-util/intltool"

DOCS="AUTHORS NEWS README"

PATCHES=( "${FILESDIR}"/${P}-gcc-10.patch )

src_configure() {
	econf --disable-unity
}
