# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit vim-plugin

DESCRIPTION="vim plugin: Perl-IDE - Write and run Perl scripts using menus and hotkeys"
HOMEPAGE="https://www.vim.org/scripts/script.php?script_id=556"
LICENSE="GPL-2 GPL-2+"
KEYWORDS="amd64 ppc x86 ~amd64-linux ~x86-linux"

VIM_PLUGIN_HELPFILES="perlsupport.txt"

RDEPEND="
	dev-perl/Perl-Tags
	dev-perl/Perl-Critic"

src_prepare() {
	# Don't set tabstop and shiftwidth
	sed -i '/=4/s/^/"/' ftplugin/perl.vim || die
	default
}

src_install() {
	dodoc ${PN}/doc/{ChangeLog,perl-hot-keys.pdf}
	rm -r ${PN}/doc/ || die

	vim-plugin_src_install
}
