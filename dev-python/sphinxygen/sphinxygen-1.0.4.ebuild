# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1 pypi

DESCRIPTION="Python module/script that generates Sphinx markup to describe a C API"
HOMEPAGE="
	https://gitlab.com/drobilla/sphinxygen
	https://pypi.org/project/sphinxygen/
"

SLOT="0"
LICENSE="ISC"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~loong ~ppc ~ppc64 ~riscv ~sparc ~x86"

distutils_enable_tests pytest
