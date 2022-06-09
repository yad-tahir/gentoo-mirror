# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..11} )

inherit distutils-r1

MY_PN="python-glyr"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A python wrapper for Glyr"
HOMEPAGE="https://sahib.github.io/python-glyr/intro.html
	https://github.com/sahib/python-glyr"
SRC_URI="https://github.com/sahib/${MY_PN}/archive/${PV}.tar.gz -> ${MY_P}.tar.gz"
S="${WORKDIR}/${MY_P}"

LICENSE="GPL-3+"
KEYWORDS="amd64 x86"
SLOT="0"

RDEPEND="media-libs/glyr:="
DEPEND="${RDEPEND}"
BDEPEND="
	dev-python/cython[${PYTHON_USEDEP}]"

distutils_enable_sphinx docs
distutils_enable_tests pytest

EPYTEST_DESELECT=(
	# Internet
	tests/test_misc.py::TestMisc::test_download
)
