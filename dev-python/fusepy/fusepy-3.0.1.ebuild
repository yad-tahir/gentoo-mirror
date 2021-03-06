# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7,8,9} )

inherit distutils-r1

DESCRIPTION="Python FUSE bindings using ctypes"
HOMEPAGE="https://github.com/fusepy/fusepy https://pypi.org/project/fusepy/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="ISC"
KEYWORDS="~amd64 ~x86"
SLOT="0"

RDEPEND="
	>=sys-fs/fuse-2.9.7:0
	!dev-python/fuse-python
"
