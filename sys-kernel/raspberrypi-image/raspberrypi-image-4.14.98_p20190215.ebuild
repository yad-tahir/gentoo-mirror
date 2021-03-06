# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit mount-boot

DESCRIPTION="Raspberry Pi (all versions) kernel and modules"
HOMEPAGE="https://github.com/raspberrypi/firmware"
LICENSE="GPL-2 raspberrypi-videocore-bin"
SLOT="0"
RESTRICT="binchecks strip"

RDEPEND="sys-boot/raspberrypi-firmware"

if [[ "${PV}" == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/raspberrypi/firmware"
	EGIT_CLONE_TYPE="shallow"
else
	[[ "$(ver_cut 4)" == 'p' ]] || die "Unsupported version format, tweak the ebuild."
	MY_PV="1.$(ver_cut 5)"
	SRC_URI="https://github.com/raspberrypi/firmware/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"
	S="${WORKDIR}/firmware-${MY_PV}"
	KEYWORDS="-* ~arm"
fi

src_install() {
	insinto /lib/modules
	doins -r modules/*
	insinto /boot
	doins boot/*.img
}
