# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DIST_AUTHOR=PODMASTER
DIST_VERSION=0.13
inherit perl-module

DESCRIPTION="A bare-bone HTML parser, similar to HTML::Parser"

SLOT="0"
KEYWORDS="amd64 ~ia64 ppc ppc64 sparc x86"
IUSE=""

DEPEND="dev-perl/HTML-Parser"
RDEPEND="${DEPEND}
	dev-perl/URI"
