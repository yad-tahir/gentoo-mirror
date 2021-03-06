# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1 desktop pax-utils

MY_PN="${PN/-bin}"
MY_P="${MY_PN}-${PV}"
BIN_ARCHIVE="${MY_P}-linux_x64.bin"

DESCRIPTION="Complete set of tools that provide a virtual environment for Android"
HOMEPAGE="https://genymotion.com"
SRC_URI="${BIN_ARCHIVE}"

LICENSE="genymotion"
SLOT="0"
KEYWORDS="-* ~amd64"

RDEPEND="app-emulation/virtualbox
	|| (
		dev-libs/openssl-compat:1.0.0
		=dev-libs/openssl-1.0*:0
	)
	>=dev-libs/hiredis-1.0.0
	sys-apps/util-linux
	virtual/opengl
"

RESTRICT="bindist fetch"
S="${WORKDIR}"

QA_PREBUILT="
	opt/${MY_PN}/*.so*
	opt/${MY_PN}/imageformats/*.so
	opt/${MY_PN}/plugins/*.so*
	opt/${MY_PN}/${MY_PN}
	opt/${MY_PN}/genyshell
	opt/${MY_PN}/player
	opt/${MY_PN}/${MY_PN}adbtunneld
	opt/${MY_PN}/gmtool
"

pkg_nofetch() {
	einfo
	einfo "Please visit"
	einfo
	einfo "  https://www.genymotion.com/download/"
	einfo
	einfo "and download "
	einfo
	einfo "  ${BIN_ARCHIVE}"
	einfo
	einfo "which must be placed in DISTDIR directory."
	einfo
}

src_unpack() {
	cp "${DISTDIR}/${BIN_ARCHIVE}" "${WORKDIR}" || die "cp failed"
}

src_prepare() {
	default

	chmod +x ${BIN_ARCHIVE} || die "chmod failed"
	yes | ./${BIN_ARCHIVE} > /dev/null || die "unpack failed"

	# removed windows line for bashcompletion
	sed -i "/complete -F _gmtool gmtool.exe/d" "${MY_PN}/completion/bash/gmtool.bash" || die "sed failed"
}

src_install() {
	insinto /opt/"${MY_PN}"
	exeinto /opt/"${MY_PN}"

	# Use qt bundled
	doins -r "${MY_PN}"/{geoservices,Qt,QtGraphicalEffects,QtLocation,QtPositioning,QtQuick,QtQuick.2}
	doins -r "${MY_PN}"/{icons,imageformats,platforms,plugins,sqldrivers,translations,xcbglintegrations}
	doins "${MY_PN}"/libQt*
	doins "${MY_PN}"/qt.conf
	doins "${MY_PN}"/libicu*

	doexe "${MY_PN}"/{libcom,librendering,libswscale,libavutil}.so*
	# android library
	doexe "${MY_PN}"/{libEGL_translator,libGLES_CM_translator,libGLES_V2_translator,libOpenglRender,libemugl_logger}.so*

	find "${ED}/opt/${MY_PN}" -name "*.so*" -type f -exec chmod +x {} \; || die "Change .so permission failed"

	doexe "${MY_PN}"/{genymotion,genyshell,player,gmtool}

	pax-mark -m "${ED}/opt/${MY_PN}/genymotion"
	pax-mark -m "${ED}/opt/${MY_PN}/gmtool"

	dosym ../"${MY_PN}"/genyshell /opt/bin/genyshell
	dosym ../"${MY_PN}"/genymotion /opt/bin/genymotion
	dosym ../"${MY_PN}"/gmtool /opt/bin/gmtool

	newbashcomp "${MY_PN}/completion/bash/gmtool.bash" gmtool

	insinto /usr/share/zsh/site-functions
	doins "${MY_PN}/completion/zsh/_gmtool"

	sed -i -e "s:Icon.*:Icon=/opt/${MY_PN}/icons/icon.png:" \
		-e "s:Exec.*:Exec=/opt/${MY_PN}/genymotion:" \
		"${HOME}"/.local/share/applications/genymobile-genymotion.desktop || die "sed failed"
	domenu "${HOME}"/.local/share/applications/genymobile-genymotion.desktop
}

pkg_postinst() {
	elog "Genymotion needs adb to work correctly: install with android-sdk-update-manager"
	elog "'Android SDK Platform-tools' and 'Android SDK Tools'"
	elog "Your user should also be in the android group to work correctly"
	elog "Then in Genymotion set the android-sdk-update-manager directory: (Settings->ADB)"
	elog
	elog "      /opt/android-sdk-update-manager"
}
