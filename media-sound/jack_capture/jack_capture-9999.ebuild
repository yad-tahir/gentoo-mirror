# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit toolchain-funcs git-r3

DESCRIPTION="JACK Recording utility"
HOMEPAGE="https://github.com/kmatheussen/jack_capture"
EGIT_REPO_URI="https://github.com/kmatheussen/jack_capture.git"

LICENSE="GPL-2"
SLOT="0"
IUSE="mp3 ogg osc"

RDEPEND="
	media-libs/libsndfile
	virtual/jack
	mp3? ( media-sound/lame )
	ogg? ( media-libs/libogg )
	osc? ( media-libs/liblo )
"
DEPEND="${RDEPEND}"
BDEPEND="virtual/pkgconfig"

PATCHES=(
	"${FILESDIR}"/${PN}-0.9.73-r1-Makefile.patch
)

DOCS=( README config )

src_prepare() {
	default

	use ogg || sed -i -e 's/HAVE_OGG 1/HAVE_OGG 0/' gen_das_config_h.sh
	use mp3 || sed -i -e 's/HAVE_LAME 1/HAVE_LAME 0/' -e '/COMPILEFLAGS -lmp3lame/d' gen_das_config_h.sh
	use osc || sed -i -e 's/HAVE_LIBLO 1/HAVE_LIBLO 0/' -e '/COMPILEFLAGS .* liblo/d' gen_das_config_h.sh
}

src_compile() {
	tc-export CC CXX

	emake PKG_CONFIG="$(tc-getPKG_CONFIG)" PREFIX="${EPREFIX}/usr" jack_capture
}

src_install() {
	dobin jack_capture

	dodoc "${DOCS[@]}"
}
