# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A HUnit/hspec assertion library to verify that an expression does not typecheck"
HOMEPAGE="https://github.com/CRogers/should-not-typecheck"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/hunit-1.2:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/hspec-2.1
		>=dev-haskell/hspec-expectations-0.6 )
"
