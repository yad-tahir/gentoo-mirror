# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit epatch

DESCRIPTION="3D File Browser"
HOMEPAGE="https://sourceforge.net/projects/dz3d/"
SRC_URI="mirror://sourceforge/dz3d/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc x86"

RDEPEND="dev-libs/glib:2
	media-libs/freeglut
	virtual/opengl
	x11-libs/libXmu"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

DOCS=( AUTHORS ChangeLog NEWS README WISHLIST )

src_prepare() {
	epatch "${FILESDIR}/${PV}-gcc41.patch" \
		"${FILESDIR}/${P}-freeglut-compat.patch"
	epatch_user
}
