# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Orphan Instances for 'Data.Vector'"
HOMEPAGE="https://github.com/ekmett/vector-instances"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc64 ~x86"
IUSE="+hashable"

RDEPEND=">=dev-haskell/comonad-3:=[profile?]
	>=dev-haskell/keys-3:=[profile?]
	>=dev-haskell/pointed-3:=[profile?]
	>=dev-haskell/semigroupoids-3:=[profile?]
	>=dev-haskell/semigroups-0.8.3.1:=[profile?]
	>=dev-haskell/vector-0.9:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	hashable? ( >=dev-haskell/hashable-1.1.1.0:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag hashable hashable)
}
