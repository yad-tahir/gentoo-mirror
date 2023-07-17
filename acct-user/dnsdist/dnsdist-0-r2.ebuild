# Copyright 2020-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit acct-user

DESCRIPTION="A user for net-dns/dnsdist"

ACCT_USER_GROUPS=( "dnsdist" )
ACCT_USER_ID="414"

acct-user_add_deps
