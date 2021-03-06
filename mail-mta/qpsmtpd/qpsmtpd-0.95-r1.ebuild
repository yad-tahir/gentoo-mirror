# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

[[ ${PV} == *9999 ]] && SCM="git-r3"
inherit perl-module ${SCM}

DESCRIPTION="qpsmtpd is a flexible smtpd daemon written in Perl"
HOMEPAGE="https://smtpd.github.io/qpsmtpd/"
if [[ ${PV} != *9999 ]]; then
	SRC_URI="https://github.com/smtpd/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
else
	# This is a spotted development fork with many improvements
	EGIT_REPO_URI="https://github.com/smtpd/${PN}.git"
fi

LICENSE="MIT"
SLOT="0"
IUSE="postfix ipv6 syslog"

RDEPEND="
	acct-group/smtpd
	acct-user/smtpd
	dev-lang/perl
	dev-perl/Danga-Socket
	dev-perl/IPC-Shareable
	dev-perl/MailTools
	dev-perl/Net-DNS
	dev-perl/ParaDNS
	dev-perl/Socket6
	dev-perl/UNIVERSAL-isa
	postfix? ( acct-group/postdrop )
	virtual/inetd
	virtual/perl-MIME-Base64
	ipv6? ( dev-perl/IO-Socket-INET6 )
	syslog? ( virtual/perl-Sys-Syslog )
"

src_unpack() {
	if [[ ${PV} != *9999 ]]; then
		unpack ${A}
		cd "${S}"
	else
		git-r3_src_unpack
		cd "${S}"
	fi
}

src_install() {
	perl-module_src_install

	insinto /etc/xinetd.d
	newins "${FILESDIR}"/qpsmtpd.xinetd qpsmtpd

	dodir /usr/share/qpsmtpd
	cp -Rf plugins "${ED}"/usr/share/qpsmtpd/ || die

	diropts -m 0755 -o smtpd -g smtpd
	keepdir /var/spool/qpsmtpd

	insinto /etc/qpsmtpd
	doins config.sample/*

	echo "/usr/share/qpsmtpd/plugins" > "${ED}"/etc/qpsmtpd/plugin_dirs || die
	echo "/var/spool/qpsmtpd" > "${ED}"/etc/qpsmtpd/spool_dir || die
	if use syslog; then
		echo "logging/syslog loglevel LOGINFO priority LOG_NOTICE" > "${ED}"/etc/qpsmtpd/logging
	else
		diropts -m 0755 -o smtpd -g smtpd
		dodir /var/log/qpsmtpd
		keepdir /var/log/qpsmtpd
		echo "logging/file loglevel LOGINFO /var/log/qpsmtpd/%Y-%m-%d" > "${ED}"/etc/qpsmtpd/logging
	fi

	newenvd "${FILESDIR}"/qpsmtpd.envd 99qpsmtpd

	newconfd "${FILESDIR}"/qpsmtpd.confd qpsmtpd
	newinitd "${FILESDIR}"/qpsmtpd.initd-r1 qpsmtpd

	dodoc CREDITS Changes README.md README.plugins.md STATUS UPGRADING.md
}
