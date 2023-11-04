# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.2.2.9999
#hackport: flags: -check_alignment,-old_toolchain_inliner,+support_deepseq,support_aesni:cpu_flags_x86_aes,support_pclmuldq:cpu_flags_x86_sse4_1,support_sse:cpu_flags_x86_sse,support_rdrand:cpu_flags_x86_rdrand

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit flag-o-matic haskell-cabal

DESCRIPTION="Cryptography Primitives sink"
HOMEPAGE="https://github.com/haskell-crypto/cryptonite"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm64 ~ppc64 ~riscv ~x86"
IUSE="cpu_flags_x86_aes cpu_flags_x86_rdrand cpu_flags_x86_sse cpu_flags_x86_sse4_1 +integer-gmp +target-attributes"

RDEPEND=">=dev-lang/ghc-8.4.3:=
	>=dev-haskell/memory-0.14.18:=[profile?]
	>=dev-haskell/basement-0.0.6:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/tasty
			dev-haskell/tasty-hunit
			dev-haskell/tasty-kat
			dev-haskell/tasty-quickcheck )
"

src_prepare() {
	default

	# On AVX2 cryptonite's own test suite crashes on unaligned access:
	# https://github.com/haskell-crypto/cryptonite/issues/347
	# Disable extensions that might require extra alignment.
	use amd64 && append-flags -mno-avx2
	use x86 && append-flags -mno-avx2
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-check_alignment \
		$(cabal_flag integer-gmp integer-gmp) \
		--flag=-old_toolchain_inliner \
		$(cabal_flag cpu_flags_x86_aes support_aesni) \
		--flag=support_deepseq \
		$(cabal_flag cpu_flags_x86_sse4_1 support_pclmuldq) \
		$(cabal_flag cpu_flags_x86_rdrand support_rdrand) \
		$(cabal_flag cpu_flags_x86_sse support_sse) \
		$(cabal_flag target-attributes use_target_attributes)
}
