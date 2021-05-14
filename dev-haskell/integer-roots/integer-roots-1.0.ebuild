# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite"
inherit haskell-cabal

DESCRIPTION="Integer roots and perfect powers"
HOMEPAGE="https://github.com/Bodigrim/integer-roots"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # requires porting to smallcheck-1.2

RDEPEND=">=dev-lang/ghc-8.0.1:=[gmp]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"	# test? ( >=dev-haskell/smallcheck-1.1.3 <dev-haskell/smallcheck-1.2
# 		>=dev-haskell/tasty-0.10
# 		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.11
# 		>=dev-haskell/tasty-quickcheck-0.9 <dev-haskell/tasty-quickcheck-0.11
# 		>=dev-haskell/tasty-smallcheck-0.8 <dev-haskell/tasty-smallcheck-0.9 )
# "
