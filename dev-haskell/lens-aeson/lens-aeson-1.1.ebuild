# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999
#hackport: flags: -lib-werror,+test-doctests

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Law-abiding lenses for aeson"
HOMEPAGE="https://github.com/lens/lens-aeson/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # doctest fails: warnings of "is ambiguous"

RDEPEND=">=dev-haskell/aeson-0.7.0.5:=[profile?] <dev-haskell/aeson-1.5:=[profile?]
	>=dev-haskell/attoparsec-0.10:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/lens-4.4:=[profile?] <dev-haskell/lens-5:=[profile?]
	>=dev-haskell/scientific-0.3.2:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/text-0.11.1.10:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2.3:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.9:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	>=dev-haskell/cabal-doctest-1 <dev-haskell/cabal-doctest-1.1
	test? ( >=dev-haskell/doctest-0.11.1 <dev-haskell/doctest-0.17
		dev-haskell/generic-deriving
		>=dev-haskell/semigroups-0.9
		>=dev-haskell/simple-reflect-0.3.1 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-lib-werror \
		--flag=test-doctests
}
