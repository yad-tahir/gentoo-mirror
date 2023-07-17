# Copyright 2019-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit acct-user

DESCRIPTION="user for murmur daemon"
ACCT_USER_ID=122
ACCT_USER_HOME=/var/lib/${PN}
ACCT_USER_HOME_OWNER=${PN}:root
ACCT_USER_HOME_PERMS=0750
ACCT_USER_GROUPS=( murmur )

acct-user_add_deps
