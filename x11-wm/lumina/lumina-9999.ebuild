# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 qmake-utils

DESCRIPTION="Lumina desktop environment"
HOMEPAGE="https://lumina-desktop.org/"
EGIT_REPO_URI="https://github.com/trueos/lumina"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE="desktop-utils"

DEPEND="
	dev-qt/qtconcurrent:5
	dev-qt/qtcore:5
	dev-qt/qtdeclarative:5
	dev-qt/qtgui:5
	dev-qt/qtmultimedia:5[widgets]
	dev-qt/qtnetwork:5
	dev-qt/qtsvg:5
	dev-qt/qtwidgets:5
	dev-qt/qtx11extras:5
	x11-libs/libxcb:0
	x11-libs/xcb-util
	x11-libs/xcb-util-image
	x11-libs/xcb-util-wm"

RDEPEND="${DEPEND}
	app-admin/sysstat
	media-sound/alsa-utils
	sys-fs/inotify-tools
	sys-power/acpi
	|| (
		x11-apps/xbacklight
		sys-power/acpilight
	)
	x11-misc/numlockx
	x11-wm/fluxbox"

BDEPEND="
	dev-qt/linguist-tools:5"

S="${WORKDIR}/${P/_/-}"

PATCHES=(
	"${FILESDIR}/1.2.0-desktop-files.patch"
)

src_prepare() {
	default

	if ! use desktop-utils ; then
		rm -rf src-qt5/desktop-utils || die
		sed -e "/desktop-utils/d" -i src-qt5/src-qt5.pro || die
	fi
}

src_configure() {
	eqmake5 PREFIX="${EPREFIX}/usr" LIBPREFIX="${EPREFIX}/usr/$(get_libdir)" \
		DESTDIR="${D}" CONFIG+=WITH_I18N QMAKE_CFLAGS_ISYSTEM=
}

src_install() {
	default
	mv "${ED}"/etc/luminaDesktop.conf{.dist,} || die
	rm "${ED}"/${PN}-* "${ED}"/start-${PN}-desktop || die
}
