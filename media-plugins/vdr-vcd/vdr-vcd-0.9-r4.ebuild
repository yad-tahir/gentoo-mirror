# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit vdr-plugin-2

DESCRIPTION="VDR plugin: play video cds"

HOMEPAGE="https://wiki.gentoo.org/wiki/No_homepage"
SRC_URI="http://vdr.websitec.de/download/vdr-vcd/${P}.tgz"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~amd64 x86"
IUSE=""

DEPEND=">=media-video/vdr-1.5.9"
RDEPEND="${DEPEND}"

PATCHES=( "${FILESDIR}/${P}_xgettext.diff"
		"${FILESDIR}/${P}_vdr-1.7.2.diff"
		"${FILESDIR}/${P}_devicetrickspeed.patch"
		"${FILESDIR}/${P}_gcc-6.patch" )

src_prepare() {
	vdr-plugin-2_src_prepare

	# Patch Makefile, as VDRDIR is no well known variable name
	# to stop spare -I in gcc cmdline
	sed -e 's:$(VDRINC):$(VDRDIR)/include:' -i Makefile || die
}
