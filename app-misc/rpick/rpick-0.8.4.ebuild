# Copyright 2019-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.1

EAPI=7

CRATES="
aho-corasick-0.7.18
ansi_term-0.11.0
approx-0.4.0
arrayref-0.3.6
arrayvec-0.5.2
assert_cmd-1.0.4
atty-0.2.14
autocfg-1.0.1
base64-0.13.0
bitflags-1.2.1
blake2b_simd-0.5.11
bstr-0.2.16
byteorder-1.4.3
cfg-if-1.0.0
clap-2.33.3
constant_time_eq-0.1.5
crossbeam-utils-0.8.4
csv-1.1.6
csv-core-0.1.10
difference-2.0.0
dirs-1.0.5
dirs-next-2.0.0
dirs-sys-next-0.1.2
doc-comment-0.3.3
downcast-0.10.0
dtoa-0.4.8
encode_unicode-0.3.6
float-cmp-0.8.0
fragile-1.0.0
getrandom-0.1.16
getrandom-0.2.3
heck-0.3.2
hermit-abi-0.1.18
itoa-0.4.7
lazy_static-1.4.0
libc-0.2.94
libm-0.2.1
linked-hash-map-0.5.4
matrixmultiply-0.3.1
memchr-2.4.0
mockall-0.9.1
mockall_derive-0.9.1
nalgebra-0.26.2
normalize-line-endings-0.3.0
num-complex-0.3.1
num-integer-0.1.44
num-rational-0.3.2
num-traits-0.2.14
paste-1.0.5
ppv-lite86-0.2.10
predicates-1.0.8
predicates-core-1.0.2
predicates-tree-1.0.2
prettytable-rs-0.8.0
proc-macro-error-1.0.4
proc-macro-error-attr-1.0.4
proc-macro2-1.0.27
quote-1.0.9
rand-0.8.3
rand_chacha-0.3.0
rand_core-0.6.2
rand_distr-0.4.0
rand_hc-0.3.0
rawpointer-0.2.1
redox_syscall-0.1.57
redox_syscall-0.2.8
redox_users-0.3.5
redox_users-0.4.0
regex-1.5.4
regex-automata-0.1.9
regex-syntax-0.6.25
remove_dir_all-0.5.3
rpick-0.8.4
rust-argon2-0.8.3
ryu-1.0.5
serde-1.0.126
serde_derive-1.0.126
serde_yaml-0.8.17
simba-0.4.0
statrs-0.14.0
strsim-0.8.0
structopt-0.3.21
structopt-derive-0.4.14
syn-1.0.72
tempfile-3.2.0
term-0.5.2
textwrap-0.11.0
thiserror-1.0.25
thiserror-impl-1.0.25
treeline-0.1.0
typenum-1.13.0
unicode-segmentation-1.7.1
unicode-width-0.1.8
unicode-xid-0.2.2
vec_map-0.8.2
version_check-0.9.3
wait-timeout-0.2.0
wasi-0.10.2+wasi-snapshot-preview1
wasi-0.9.0+wasi-snapshot-preview1
winapi-0.3.9
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
yaml-rust-0.4.5
"

inherit cargo

DESCRIPTION="Helps you pick items from a list by various algorithms"
HOMEPAGE="https://github.com/bowlofeggs/rpick"
SRC_URI="$(cargo_crate_uris ${CRATES})"

# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="GPL-3 Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD BSD-2 Boost-1.0 CC0-1.0 MIT Unlicense"
SLOT="0"
KEYWORDS="~amd64 ~ppc64 ~x86"

# Rust packages ignore CFLAGS and LDFLAGS so let's silence the QA warnings
QA_FLAGS_IGNORED="usr/bin/rpick"

src_install() {
	cargo_src_install

	einstalldocs
}
