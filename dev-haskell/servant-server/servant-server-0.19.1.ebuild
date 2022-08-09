# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
CABAL_HACKAGE_REVISION="1"
inherit haskell-cabal

CABAL_FILE="${S}/${PN}.cabal"
CABAL_DISTFILE="${P}-rev${CABAL_HACKAGE_REVISION}.cabal"

DESCRIPTION="A family of combinators for defining webservices APIs and serving them"
HOMEPAGE="https://docs.servant.dev/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz
	https://hackage.haskell.org/package/${P}/revision/${CABAL_HACKAGE_REVISION}.cabal
		-> ${CABAL_DISTFILE}"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc64 ~x86"
IUSE="examples"

PATCHES=( "${FILESDIR}/${PN}-0.18.3-add-examples-flag.patch" )

RDEPEND=">=dev-haskell/aeson-1.4.1.0:=[profile?] <dev-haskell/aeson-3:=[profile?]
	>=dev-haskell/base-compat-0.10.5:=[profile?] <dev-haskell/base-compat-0.13:=[profile?]
	>=dev-haskell/base64-bytestring-1.0.0.1:=[profile?] <dev-haskell/base64-bytestring-1.3:=[profile?]
	>=dev-haskell/constraints-0.2:=[profile?] <dev-haskell/constraints-0.14:=[profile?]
	>=dev-haskell/http-api-data-0.4.1:=[profile?] <dev-haskell/http-api-data-0.4.4:=[profile?]
	>=dev-haskell/http-media-0.7.1.3:=[profile?] <dev-haskell/http-media-0.9:=[profile?]
	>=dev-haskell/http-types-0.12.2:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/monad-control-1.0.2.3:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/network-2.8:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-haskell/network-uri-2.6.1.0:=[profile?] <dev-haskell/network-uri-2.8:=[profile?]
	>=dev-haskell/resourcet-1.2.2:=[profile?] <dev-haskell/resourcet-1.3:=[profile?]
	>=dev-haskell/servant-0.19:=[profile?]
	>=dev-haskell/sop-core-0.4.0.0:=[profile?] <dev-haskell/sop-core-0.6:=[profile?]
	>=dev-haskell/string-conversions-0.4.0.1:=[profile?] <dev-haskell/string-conversions-0.5:=[profile?]
	>=dev-haskell/tagged-0.8.6:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/transformers-base-0.4.5.2:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-haskell/wai-3.2.1.2:=[profile?] <dev-haskell/wai-3.3:=[profile?]
	>=dev-haskell/wai-app-static-3.1.6.2:=[profile?] <dev-haskell/wai-app-static-3.2:=[profile?]
	>=dev-haskell/word8-0.1.3:=[profile?] <dev-haskell/word8-0.2:=[profile?]
	>=dev-lang/ghc-8.10.1:=
	examples? ( >=dev-haskell/warp-3.2.25:=[profile?] <dev-haskell/warp-3.4:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
	test? ( >=dev-haskell/hspec-2.6.0 <dev-haskell/hspec-2.10
		>=dev-haskell/hspec-wai-0.10.1 <dev-haskell/hspec-wai-0.12
		>=dev-haskell/quickcheck-2.12.6.1 <dev-haskell/quickcheck-2.15
		dev-haskell/safe
		>=dev-haskell/should-not-typecheck-2.1.0 <dev-haskell/should-not-typecheck-2.2
		>=dev-haskell/temporary-1.3 <dev-haskell/temporary-1.4
		dev-haskell/transformers-compat
		>=dev-haskell/wai-extra-3.0.24.3 <dev-haskell/wai-extra-3.2 )
"
BDEPEND="app-text/dos2unix"

src_prepare() {
	# pull revised cabal from upstream
	cp "${DISTDIR}/${CABAL_DISTFILE}" "${CABAL_FILE}" || die

	# Convert to unix line endings
	dos2unix "${CABAL_FILE}" || die

	# Apply patches *after* pulling the revised cabal
	default
}
