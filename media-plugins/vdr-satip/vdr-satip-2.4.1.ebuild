# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit vdr-plugin-2

DESCRIPTION="VDR Plugin: integrates SAT>IP network devices seamlessly into VDR"
HOMEPAGE="https://github.com/rofafor/vdr-plugin-satip"
SRC_URI="https://github.com/rofafor/vdr-plugin-satip/archive/v${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/vdr-plugin-satip-${PV}"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"

DEPEND="
	>=media-video/vdr-2.4.0
	>=net-misc/curl-7.36
	|| ( dev-libs/tinyxml dev-libs/pugixml )"
RDEPEND="${DEPEND}"

QA_FLAGS_IGNORED="
	usr/lib/vdr/plugins/libvdr-satip.*
	usr/lib64/vdr/plugins/libvdr-satip.*"

src_prepare() {
	vdr-plugin-2_src_prepare

	if has_version "dev-libs/tinyxml"; then
		sed -e "s:#SATIP_USE_TINYXML:SATIP_USE_TINYXML:" -i Makefile || die "sed failed"
	fi
}
