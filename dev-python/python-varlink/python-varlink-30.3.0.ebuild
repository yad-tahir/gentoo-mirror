# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7,8} )

inherit distutils-r1

DESCRIPTION="Python implementation of the Varlink protocol"
HOMEPAGE="https://github.com/varlink/python"
SRC_URI="https://github.com/varlink/python/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="Apache-2.0"
SLOT="0"

KEYWORDS="~amd64"
RESTRICT="test"
RDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/future[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
S="${WORKDIR}/python-${PV}"

python_prepare_all() {
	distutils-r1_python_prepare_all

	sed -e 's|^[[:space:]]*setuptools_scm$||' \
		-i setup.cfg || die
}

python_test() {
	esetup.py test || die "tests failed with ${EPYTHON}"
}
