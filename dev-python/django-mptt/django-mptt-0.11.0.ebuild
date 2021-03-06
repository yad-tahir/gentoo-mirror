# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7..9} )
inherit distutils-r1

DESCRIPTION="utilities for modified preorder tree traversal and trees of model instances"
HOMEPAGE="https://github.com/django-mptt/django-mptt"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
	dev-python/django-js-asset[${PYTHON_USEDEP}]
"

DEPEND="${RDEPEND}"
