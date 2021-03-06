# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DIST_AUTHOR=XAOC
DIST_VERSION=0.12
DIST_A_EXT=tar.gz
inherit perl-module virtualx

DESCRIPTION="Perl binding for the C library gtksourceview"

SLOT="0"
LICENSE="|| ( GPL-2+  Artistic-2 )"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-perl/Gtk2
	>=dev-perl/glib-perl-1.160.0
"
DEPEND="${RDEPEND}
	dev-perl/ExtUtils-Depends
	dev-perl/ExtUtils-PkgConfig
	virtual/perl-ExtUtils-MakeMaker
	x11-libs/gtksourceview:2.0
"

src_test() {
	virtx perl-module_src_test
}
