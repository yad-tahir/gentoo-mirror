# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

NEED_EMACS=27.1

inherit elisp

DESCRIPTION="Modern style for your GNU Emacs Org buffers"
HOMEPAGE="https://github.com/minad/org-modern/"
SRC_URI="https://github.com/minad/${PN}/archive/${PV}.tar.gz
	-> ${P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=app-emacs/compat-29.1.4.0"
BDEPEND="${RDEPEND}"

DOCS=( README.org example.org )
SITEFILE="50${PN}-gentoo.el"
