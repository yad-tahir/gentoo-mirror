# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..10} )

inherit cmake python-any-r1 xdg

DESCRIPTION="A hierarchical note taking application (C++ version)"
HOMEPAGE="https://www.giuspen.com/cherrytree https://github.com/giuspen/cherrytree"

if [[ ${PV} == *9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/giuspen/cherrytree"
	S="${WORKDIR}/${P}/future"
else
	SRC_URI="https://github.com/giuspen/cherrytree/releases/download/${PV}/${P/-/_}.tar.xz"
	#SRC_URI="https://github.com/giuspen/cherrytree/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
	S="${WORKDIR}"/${P/-/_}

	KEYWORDS="~amd64 ~x86"
	# S="${WORKDIR}/${PN}-${COMMIT}/future"
fi

# GPL-3 — future/src/ct (CherryTree)
# LGPL-2.1 — future/src/7za (7zip)
# MIT — future/src/fmt (libfmt)
LICENSE="GPL-3 LGPL-2.1 MIT"
SLOT="0"
IUSE="nls test"

# Has deps that aren't available in ::gentoo repo
RESTRICT="test"

RDEPEND="app-i18n/uchardet
	app-text/gspell:=
	>=dev-cpp/glibmm-2.64.2:2
	dev-cpp/gtkmm:3.0
	dev-cpp/gtksourceviewmm:3.0
	dev-cpp/libxmlpp:2.6
	dev-cpp/pangomm:1.4
	dev-db/sqlite:3
	dev-libs/glib:2
	dev-libs/libfmt:=
	dev-libs/libxml2:2
	dev-libs/spdlog
	net-misc/curl
	x11-libs/cairo
	x11-libs/gtk+:3
	x11-libs/pango"
DEPEND="${RDEPEND}
	$(python_gen_any_dep 'dev-python/lxml[${PYTHON_USEDEP}]')"
BDEPEND="${PYTHON_DEPS}
	virtual/pkgconfig
	nls? (
		dev-util/intltool
		sys-devel/gettext
	)
	test? ( dev-util/cpputest )"

python_check_deps() {
	has_version "dev-python/lxml[${PYTHON_USEDEP}]"
}

src_prepare() {
	# disable compress man pages
	sed -i -e \
		'/install(FILES/s|${MANFILE_FULL_GZ}|${CMAKE_SOURCE_DIR}/data/cherrytree.1|' \
		CMakeLists.txt || die

	if [[ ${PV} != *9999 ]]; then
		sed -i \
			-e "/^set(CT_VERSION/s|\"\(.*\)\"|\"${PV}\"|" \
			CMakeLists.txt || die
	fi

	# python_fix_shebang .
	cmake_src_prepare
}

src_configure() {
	local mycmakeargs=(
		-DPYTHON_EXEC="${PYTHON}"
		-DUSE_NLS=$(usex nls)
		-DBUILD_TESTING=$(usex test)
		-DUSE_SHARED_FMT_SPDLOG=ON
	)

	cmake_src_configure
}
