# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1
#hackport: flags: -weigh-maps

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Measure allocations of a Haskell functions/values"
HOMEPAGE="https://github.com/fpco/weigh#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/mtl:=[profile?]
	dev-haskell/split:=[profile?]
	dev-haskell/temporary:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	>=dev-lang/ghc-8.2.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-weigh-maps
}
