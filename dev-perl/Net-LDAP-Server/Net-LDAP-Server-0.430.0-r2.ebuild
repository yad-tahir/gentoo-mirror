# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
DIST_AUTHOR=AAR
DIST_VERSION=0.43
DIST_EXAMPLES=( "examples/*" )
inherit perl-module

DESCRIPTION="LDAP server side protocol handling"
SLOT="0"
KEYWORDS="~amd64 ~x86"

PERL_RM_FILES=(
	t/02-pod.t
	t/03-podcoverage.t
)

# Net::LDAP -> perl-ldap
RDEPEND="dev-perl/perl-ldap
	dev-perl/Convert-ASN1"
BDEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker"
