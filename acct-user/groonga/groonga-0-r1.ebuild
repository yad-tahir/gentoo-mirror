# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit acct-user

DESCRIPTION="User for app-text/groonga"

ACCT_USER_GROUPS=( "groonga" )
ACCT_USER_ID="266"

acct-user_add_deps
