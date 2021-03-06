# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
VIRTUALX_REQUIRED="test"
inherit flag-o-matic git-r3 meson-multilib virtualx

DESCRIPTION="VDPAU wrapper and trace libraries"
HOMEPAGE="https://www.freedesktop.org/wiki/Software/VDPAU"
EGIT_REPO_URI="https://gitlab.freedesktop.org/vdpau/${PN}/"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="doc dri"

RDEPEND="
	>=x11-libs/libX11-1.6.2[${MULTILIB_USEDEP}]
	dri? ( >=x11-libs/libXext-1.3.2[${MULTILIB_USEDEP}] )
"
DEPEND="${RDEPEND}
	dri? ( x11-base/xorg-proto )
"
BDEPEND="
	virtual/pkgconfig
	doc? (
		app-doc/doxygen
		media-gfx/graphviz
		virtual/latex-base
	)
"

src_prepare() {
	sed -i -e "/^docdir/s|${PN}|${PF}|g" doc/meson.build || die
	default
}

multilib_src_configure() {
	append-cppflags -D_GNU_SOURCE
	local emesonargs=(
		$(meson_use dri dri2)
		$(meson_native_use_bool doc documentation)
	)
	meson_src_configure
}

multilib_src_test() {
	virtx meson_src_test
}
