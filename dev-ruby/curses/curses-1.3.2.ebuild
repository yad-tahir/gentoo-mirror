# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby25 ruby26 ruby27"

RUBY_FAKEGEM_EXTRADOC="README.md"

RUBY_FAKEGEM_RECIPE_TEST="none"

inherit ruby-fakegem

DESCRIPTION="Ruby binding for curses, ncurses, and PDCurses"
HOMEPAGE="https://github.com/ruby/curses"
LICENSE="|| ( Ruby BSD-2 )"

KEYWORDS="~amd64 ~x86"

SLOT="1"
IUSE=""

DEPEND+=" sys-libs/ncurses:0"
RDEPEND+=" sys-libs/ncurses:0"

each_ruby_configure() {
	${RUBY} -Cext/curses extconf.rb || die
}

each_ruby_compile() {
	emake V=1 -Cext/curses
	cp ext/curses/curses.so lib/ || die
}
