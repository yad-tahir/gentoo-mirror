# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit go-module
CONSUL_EXPORTER_COMMIT=ae46e2e
MY_PV="v${PV/_rc/-rc.}"

DESCRIPTION="Prometheus exporter for consul metrics"
HOMEPAGE="https://github.com/prometheus/consul_exporter"
SRC_URI="https://github.com/prometheus/consul_exporter/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0 BSD BSD-2 MIT MPL-2.0"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="dev-util/promu"
COMMON_DEPEND="acct-group/consul_exporter
	acct-user/consul_exporter"
DEPEND="${COMMON_DEPEND}"
RDEPEND="${COMMON_DEPEND}"

RESTRICT+=" test"

src_prepare() {
	default
	sed -i \
		-e "s/{{.Revision}}/${CONSUL_EXPORTER_COMMIT}/" \
		-e "s/{{.Version}}/${PV}/" \
		.promu.yml || die "Sed failed"
}

src_compile() {
	promu build -v || die
}

src_install() {
	newbin ${P} ${PN}
	dodoc {README,CONTRIBUTING}.md
	keepdir /var/log/consul_exporter
	fowners ${PN}:${PN} /var/log/consul_exporter
	newinitd "${FILESDIR}"/${PN}.initd ${PN}
	newconfd "${FILESDIR}"/${PN}.confd ${PN}
}
