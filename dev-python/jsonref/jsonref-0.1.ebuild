# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_SETUPTOOLS=no
PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1

DESCRIPTION="An implementation of JSON Reference for Python"
HOMEPAGE="https://github.com/gazpachoking/jsonref https://pypi.org/project/jsonref/"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

distutils_enable_tests pytest

python_test() {
	epytest tests.py
}
