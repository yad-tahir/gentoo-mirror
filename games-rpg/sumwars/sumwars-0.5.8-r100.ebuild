# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LUA_COMPAT=( lua5-{1..2} )

inherit cmake desktop flag-o-matic lua-single xdg-utils

DESCRIPTION="a multi-player, 3D action role-playing game"
HOMEPAGE="http://sumwars.org"
SRC_URI="mirror://sourceforge/sumwars/${P//_/-}-src.tar.bz2"

LICENSE="GPL-3 CC-BY-SA-3.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+tools debug"

LANGS="de en it pl pt ru uk"
for L in ${LANGS} ; do
	IUSE="${IUSE} l10n_${L}"
done
unset L

REQUIRED_USE="${LUA_REQUIRED_USE}"

RDEPEND="${LUA_DEPS}
	>=dev-games/cegui-0.8[ogre]
	>=dev-games/ogre-1.7.4-r1[freeimage,opengl]
	dev-games/ois
	dev-games/physfs
	>=dev-libs/tinyxml-2.6.2-r2
	media-libs/freealut
	media-libs/openal
	media-libs/libogg
	media-libs/libvorbis
	>=net-libs/enet-1.3.0
	x11-libs/libX11
	x11-libs/libXrandr
	tools? ( dev-libs/boost )"
DEPEND=${RDEPEND}

PATCHES=(
	"${FILESDIR}"/${PN}-0.5.8-cmake_lua_version.patch
)
CMAKE_REMOVE_MODULES_LIST="FindLua FindLua51"

S=${WORKDIR}/${PN}-${PV%_*}

src_configure() {
	# QA
	append-flags -fno-strict-aliasing

	use debug && CMAKE_BUILD_TYPE=Debug

	local l langs
	for l in ${LANGS}; do
		if use l10n_${l}; then
			langs="${langs} ${l}"
		fi
	done

	[[ -z "${langs}" ]] && langs="en"

	# configure sumwars with cmake
	local mycmakeargs=(
		-DCMAKE_INSTALL_PREFIX=""
		-DLUA_VERSION="$(lua_get_version)"
		-DSUMWARS_BUILD_TOOLS="$(usex tools)"
		-DSUMWARS_DOC_DIR="/usr/share/doc/${PF}"
		-DSUMWARS_EXECUTABLE_DIR="/usr/bin"
		-DSUMWARS_LANGUAGES="${langs}"
		-DSUMWARS_NO_ENET=ON
		-DSUMWARS_NO_TINYXML=ON
		-DSUMWARS_PORTABLE_MODE=OFF
		-DSUMWARS_POST_BUILD_COPY=OFF
		-DSUMWARS_RANDOM_REGIONS=ON
		-DSUMWARS_SHARE_DIR="/usr/share/${PN}"
		-DSUMWARS_STANDALONE_MODE=OFF
	)

	cmake_src_configure
}

src_compile() {
	cmake_src_compile
}

src_install() {
	cmake_src_install
	newicon -s 128 share/icon/SumWarsIcon_128x128.png ${PN}.png
	make_desktop_entry ${PN} "Summoning Wars"
}

pkg_postinst() {
	xdg_icon_cache_update
}

pkg_postrm() {
	xdg_icon_cache_update
}
