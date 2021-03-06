# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

JAVA_PKG_IUSE="test"

inherit java-pkg-2 java-ant-2

DESCRIPTION="Junit plugin for bndlib, a swiss army knife for OSGi"
HOMEPAGE="http://www.aqute.biz/Bnd/Bnd"
SRC_URI="https://github.com/bndtools/bnd/archive/${PV}.REL.tar.gz -> bndlib-${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

CDEPEND="
	dev-java/osgi-core-api:0
	dev-java/bndlib:0"

DEPEND="
	${CDEPEND}
	>=virtual/jdk-1.5
	test? ( dev-java/junit:4 )"

RDEPEND="
	${CDEPEND}
	>=virtual/jre-1.5"

S="${WORKDIR}/bnd-${PV}.REL/biz.aQute.junit"

EANT_BUILD_TARGET="build"
JAVA_ANT_REWRITE_CLASSPATH="true"
EANT_GENTOO_CLASSPATH="bndlib,junit-4,osgi-core-api"

# Tests appear broken and cause a circular dependency.
RESTRICT="test"

src_prepare() {
	default
	java-pkg_clean
	cp ../cnf/build.xml . || die
}

src_install() {
	java-pkg_newjar generated/biz.aQute.junit.jar
}
