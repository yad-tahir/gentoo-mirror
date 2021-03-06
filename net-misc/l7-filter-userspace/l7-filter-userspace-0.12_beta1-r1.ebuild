# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

MY_P=${PN}-$(ver_rs 2 -)

DESCRIPTION="Userspace utilities for layer 7 iptables QoS"
HOMEPAGE="https://l7-filter.clearos.com http://l7-filter.sourceforge.net"
SRC_URI="https://dev.gentoo.org/~bircoph/distfiles/${MY_P}.tar.gz"

LICENSE="GPL-2"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""
SLOT="0"

DEPEND=">=net-libs/libnetfilter_conntrack-0.0.100
	>=net-libs/libnetfilter_queue-1.0.0
	net-libs/libnfnetlink"
RDEPEND="${DEPEND}
	net-misc/l7-protocols"

S=${WORKDIR}/${MY_P}

PATCHES=( "${FILESDIR}/${PN}-0.11-libnetfilter_conntrack-0.0.100.patch"
		  "${FILESDIR}/${PN}-0.11-datatype.patch" )
