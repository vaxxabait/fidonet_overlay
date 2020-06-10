# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit acct-user

DESCRIPTION="User for fuglu"
ACCT_USER_ID=121
ACCT_USER_HOME=/var/lib/${PN}
ACCT_USER_HOME_OWNER=${PN}:root
ACCT_USER_HOME_PERMS=0750
ACCT_USER_GROUPS=( "${PN}" )

acct-user_add_deps
