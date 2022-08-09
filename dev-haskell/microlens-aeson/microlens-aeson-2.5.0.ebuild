# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Law-abiding lenses for Aeson, using microlens"
HOMEPAGE="https://github.com/fosskers/microlens-aeson/"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc64 ~x86"

RDEPEND=">=dev-haskell/aeson-2.0:=[profile?]
	>=dev-haskell/attoparsec-0.10:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/microlens-0.3:=[profile?]
	>=dev-haskell/scientific-0.3.2:=[profile?]
	>=dev-haskell/vector-0.9:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/tasty-0.10.1.2
		>=dev-haskell/tasty-hunit-0.9.2 )
"
