# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4.9999
#hackport: flags: +useghc

CABAL_FEATURES="lib profile haddock hoogle" # disable hscolour: ghc-8.8.1 is buggy: https://github.com/haskell/haddock/issues/1091
inherit haskell-cabal

DESCRIPTION="a persistent store for values of arbitrary types"
HOMEPAGE="https://github.com/HeinrichApfelmus/vault"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/hashable-1.1.2.5:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
	>=dev-haskell/semigroups-0.1:=[profile?] <dev-haskell/semigroups-1.0:=[profile?]
	>=dev-haskell/unordered-containers-0.2.3.0:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=useghc
}
