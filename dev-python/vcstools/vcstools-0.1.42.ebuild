# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python{3_7,3_8} )

SCM=""
if [ "${PV#9999}" != "${PV}" ] ; then
	SCM="git-r3"
	EGIT_REPO_URI="https://github.com/vcstools/vcstools"
fi

inherit ${SCM} distutils-r1

DESCRIPTION="Python library for interacting with various VCS systems"
HOMEPAGE="https://wiki.ros.org/vcstools"
if [ "${PV#9999}" != "${PV}" ] ; then
	SRC_URI=""
else
	SRC_URI="http://download.ros.org/downloads/${PN}/${P}.tar.gz
		https://github.com/vcstools/vcstools/archive/${PV}.tar.gz -> ${P}.tar.gz
	"
	KEYWORDS="~amd64 ~arm"
fi

LICENSE="BSD"
SLOT="0"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/python-dateutil[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}"
BDEPEND="test? (
		dev-python/nose[${PYTHON_USEDEP}]
		dev-vcs/git
		dev-vcs/bzr
		dev-vcs/mercurial
		dev-vcs/subversion
	)
"
PATCHES=( "${FILESDIR}/yaml.patch" )

python_test() {
	# From travis.yml
	# Set git config to silence some stuff in the tests
	git config --global user.email "foo@example.com"
	git config --global user.name "Foo Bar"
	# Set the hg user
	echo -e "[ui]\nusername = Your Name <your@mail.com>" >> ~/.hgrc
	# Set the bzr user
	bzr whoami "Your Name <name@example.com>"
	#git config --global user.email "you@example.com"
	#git config --global user.name "Your Name"

	nosetests --with-coverage --cover-package vcstools || die
}
