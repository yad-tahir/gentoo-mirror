# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit toolchain-funcs flag-o-matic

DESCRIPTION="Converts DVI files to SVG"
HOMEPAGE="https://dvisvgm.de/"
SRC_URI="https://github.com/mgieseki/dvisvgm/releases/download/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~alpha amd64 arm ~arm64 ~hppa ~ia64 ppc ppc64 ~s390 sparc x86 ~amd64-linux ~ppc-macos ~x64-macos"
IUSE="test"
# Tests don't work from $WORKDIR: kpathsea tries to search in relative
# directories from where the binary is executed.
# We cannot really use absolute paths in the kpathsea configuration since that
# would make it harder for prefix installs.
RESTRICT="test"

BDEPEND="
	app-text/xmlto
	app-text/asciidoc
	dev-libs/libxslt
	virtual/pkgconfig
	test? ( dev-cpp/gtest )
"
RDEPEND="
	>=app-arch/brotli-1.0.5:=
	app-text/ghostscript-gpl
	dev-libs/kpathsea:=
	dev-libs/openssl:=
	>=dev-libs/xxhash-0.6.5
	>=media-gfx/potrace-1.10-r1
	media-libs/freetype:2
	>=media-libs/woff2-1.0.2
	sys-libs/zlib
	virtual/tex-base
"
DEPEND="${RDEPEND}"

src_configure() {
	local myargs=(
		--without-ttfautohint
	)

	econf "${myargs[@]}"
}
