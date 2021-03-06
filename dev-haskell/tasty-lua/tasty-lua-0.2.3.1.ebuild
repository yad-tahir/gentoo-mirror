# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Write tests in Lua, integrate into tasty"
HOMEPAGE="https://github.com/hslua/tasty-lua"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/file-embed-0.0:=[profile?] <dev-haskell/file-embed-0.1:=[profile?]
	>=dev-haskell/hslua-1.0.3:=[profile?] <dev-haskell/hslua-1.4:=[profile?]
	>=dev-haskell/tasty-1.2:=[profile?] <dev-haskell/tasty-1.4:=[profile?]
	>=dev-haskell/text-1.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/tasty-hunit )
"
