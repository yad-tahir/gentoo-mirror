# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=ELLIOTJS
MODULE_VERSION=1.001000
inherit perl-module

DESCRIPTION="Extensions to PPI"

SLOT="0"
KEYWORDS="~alpha amd64 ppc ~ppc64 x86 ~amd64-linux ~x86-linux ~ppc-macos ~sparc-solaris"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND=">=dev-perl/PPI-1.208
	dev-perl/Exception-Class
	dev-perl/Readonly
	virtual/perl-Scalar-List-Utils"
DEPEND="${RDEPEND}
	dev-perl/Module-Build
	test? ( dev-perl/Test-Deep )"

SRC_TEST="do"
