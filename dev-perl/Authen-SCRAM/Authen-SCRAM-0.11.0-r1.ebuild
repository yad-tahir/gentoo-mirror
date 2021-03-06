# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DIST_AUTHOR=DAGOLDEN
DIST_VERSION=0.011
DIST_EXAMPLES=("devel/*")
inherit perl-module

DESCRIPTION="Salted Challenge Response Authentication Mechanism (RFC 5802)"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="
	dev-perl/Authen-SASL-SASLprep
	virtual/perl-Carp
	dev-perl/Crypt-URandom
	virtual/perl-Encode
	virtual/perl-MIME-Base64
	>=dev-perl/Moo-1.1.0
	>=dev-perl/PBKDF2-Tiny-0.3.0
	dev-perl/Try-Tiny
	dev-perl/Type-Tiny
	dev-perl/namespace-clean
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.170.0
	test? (
		virtual/perl-Exporter
		virtual/perl-File-Spec
		dev-perl/Test-FailWarnings
		dev-perl/Test-Fatal
		>=virtual/perl-Test-Simple-0.960.0
	)
"
