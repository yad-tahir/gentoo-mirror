# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DIST_AUTHOR=MARKOV
DIST_VERSION=1.60
inherit perl-module

DESCRIPTION="Compilation based XML Processing"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="
	>=virtual/perl-Digest-MD5-2.360.0
	>=dev-perl/Log-Report-1.200.0
	>=virtual/perl-MIME-Base64-3.100.0
	>=virtual/perl-Math-BigInt-1.770.0
	>=virtual/perl-Math-BigRat-0.100.0
	dev-perl/Types-Serialiser
	virtual/perl-Scalar-List-Utils
	>=dev-perl/XML-LibXML-2.10.700
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=dev-perl/Test-Deep-0.95.0
		>=virtual/perl-Test-Simple-0.540.0
		>=dev-perl/XML-Compile-Tester-0.900.0
	)
"
src_install() {
	perl-module_src_install
	dodoc -r html
}
