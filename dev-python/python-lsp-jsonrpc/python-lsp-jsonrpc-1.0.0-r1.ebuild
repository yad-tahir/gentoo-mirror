# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYPI_NO_NORMALIZE=1
PYTHON_COMPAT=( python3_{9..11} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="JSON RPC 2.0 server library"
HOMEPAGE="https://github.com/python-lsp/python-lsp-jsonrpc"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~ppc64 ~x86"

BDEPEND="
	test? (
		dev-python/pycodestyle[${PYTHON_USEDEP}]
		dev-python/pyflakes[${PYTHON_USEDEP}]
	)"

RDEPEND=">=dev-python/ujson-3[${PYTHON_USEDEP}]"

distutils_enable_tests pytest

PATCHES=( "${FILESDIR}/${P}-fix-test-with-ujson-3-and-up.patch" )

python_prepare_all() {
	# Remove pytest-cov dep
	sed -i -e '0,/addopts/I!d' setup.cfg || die

	distutils-r1_python_prepare_all
}
