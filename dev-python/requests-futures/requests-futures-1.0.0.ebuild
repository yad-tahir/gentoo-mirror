# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7..9} )
PYTHON_REQ_USE="threads(+)"

inherit distutils-r1

DESCRIPTION="Asynchronous Python HTTP for Humans"
HOMEPAGE="https://github.com/ross/requests-futures"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~mips ~ppc ~ppc64 ~riscv ~s390 ~sparc ~x86 ~amd64-linux ~x86-linux ~x64-macos"
RESTRICT="test" # https://github.com/ross/requests-futures/issues/94

RDEPEND=">=dev-python/requests-1.2.0[${PYTHON_USEDEP}]"

distutils_enable_tests pytest
