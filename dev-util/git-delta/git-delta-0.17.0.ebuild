# Copyright 2022-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.2

EAPI=8

CRATES="
	adler@1.0.2
	aho-corasick@1.1.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	ansi_colours@1.2.2
	ansi_term@0.12.1
	anstream@0.6.5
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	anstyle@1.0.4
	anyhow@1.0.79
	approx@0.5.1
	autocfg@1.1.0
	base64@0.21.5
	bat@0.24.0
	bincode@1.3.3
	bitflags@1.3.2
	bitflags@2.4.1
	box_drawing@0.1.2
	bstr@1.9.0
	bumpalo@3.14.0
	bytelines@2.5.0
	bytemuck@1.14.0
	bytesize@1.3.0
	cc@1.0.83
	cfg-if@1.0.0
	chrono-humanize@0.2.3
	chrono@0.4.31
	clap@4.4.13
	clap_builder@4.4.12
	clap_complete@4.4.6
	clap_derive@4.4.7
	clap_lex@0.6.0
	clircle@0.4.0
	colorchoice@1.0.0
	console@0.15.7
	content_inspector@0.2.4
	core-foundation-sys@0.8.6
	crc32fast@1.3.2
	ctrlc@3.4.2
	deranged@0.3.11
	dirs-sys@0.4.1
	dirs@5.0.1
	either@1.9.0
	encode_unicode@0.3.6
	encoding_rs@0.8.33
	equivalent@1.0.1
	errno@0.3.8
	etcetera@0.8.0
	fast-srgb8@1.0.0
	flate2@1.0.28
	fnv@1.0.7
	form_urlencoded@1.2.1
	getrandom@0.2.11
	git2@0.18.2
	glob@0.3.1
	globset@0.4.14
	grep-cli@0.1.10
	hashbrown@0.14.3
	heck@0.4.1
	home@0.5.9
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.59
	idna@0.5.0
	indexmap@2.1.0
	itertools@0.10.5
	itoa@1.0.10
	jobserver@0.1.27
	js-sys@0.3.66
	lazy_static@1.4.0
	libc@0.2.153
	libgit2-sys@0.16.2+1.7.2
	libredox@0.0.1
	libz-sys@1.1.12
	line-wrap@0.1.1
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.12
	log@0.4.20
	memchr@2.7.1
	miniz_oxide@0.7.1
	mio@0.8.11
	nix@0.27.1
	ntapi@0.4.1
	nu-ansi-term@0.49.0
	num-traits@0.2.17
	once_cell@1.19.0
	onig@6.4.0
	onig_sys@69.8.1
	option-ext@0.2.0
	palette@0.7.3
	palette_derive@0.7.3
	path_abs@0.5.1
	pathdiff@0.2.1
	percent-encoding@2.3.1
	phf@0.11.2
	phf_generator@0.11.2
	phf_macros@0.11.2
	phf_shared@0.11.2
	pkg-config@0.3.28
	plist@1.6.0
	powerfmt@0.2.0
	proc-macro2@1.0.75
	quick-xml@0.31.0
	quote@1.0.35
	rand@0.8.5
	rand_core@0.6.4
	redox_syscall@0.4.1
	redox_users@0.4.4
	regex-automata@0.4.3
	regex-syntax@0.7.5
	regex-syntax@0.8.2
	regex@1.10.2
	rgb@0.8.37
	rustix@0.38.28
	ryu@1.0.16
	safemem@0.3.3
	same-file@1.0.6
	semver@1.0.21
	serde@1.0.194
	serde_derive@1.0.194
	serde_json@1.0.111
	serde_yaml@0.9.30
	shell-words@1.1.0
	siphasher@0.3.11
	smol_str@0.1.24
	std_prelude@0.2.12
	strsim@0.10.0
	syn@2.0.48
	syntect@5.1.0
	sysinfo@0.29.11
	termcolor@1.4.0
	terminal-colorsaurus@0.3.1
	terminal-trx@0.2.0
	terminal_size@0.3.0
	thiserror-impl@1.0.56
	thiserror@1.0.56
	time-core@0.1.2
	time-macros@0.2.16
	time@0.3.31
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	unicode-bidi@0.3.14
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	unicode-segmentation@1.10.1
	unicode-width@0.1.11
	unsafe-libyaml@0.2.10
	url@2.5.0
	utf8parse@0.2.1
	vcpkg@0.2.15
	walkdir@2.4.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.89
	wasm-bindgen-macro-support@0.2.89
	wasm-bindgen-macro@0.2.89
	wasm-bindgen-shared@0.2.89
	wasm-bindgen@0.2.89
	wild@2.2.0
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
	windows-sys@0.45.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.42.2
	windows-targets@0.48.5
	windows-targets@0.52.0
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.0
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.0
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.0
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.0
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.0
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.0
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.0
	xdg@2.5.2
	yaml-rust@0.4.5
"

inherit cargo shell-completion

DESCRIPTION="A syntax-highlighting pager for git"
HOMEPAGE="https://github.com/dandavison/delta"
SRC_URI="
	https://github.com/dandavison/delta/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"
S="${WORKDIR}/${P/git-/}"

LICENSE="MIT"
# Dependent crate licenses
LICENSE+=" Apache-2.0 BSD LGPL-3+ MIT MPL-2.0 Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc64 ~riscv"

BDEPEND="virtual/pkgconfig"
DEPEND="
	dev-libs/libgit2:0/1.7
	dev-libs/oniguruma:=
	sys-libs/zlib
"
RDEPEND="
	${DEPEND}
	!app-text/delta
"

QA_FLAGS_IGNORED="usr/bin/delta"

pkg_setup() {
	export LIBGIT2_NO_VENDOR=1
	export PKG_CONFIG_ALLOW_CROSS=1
	export RUSTONIG_SYSTEM_LIBONIG=1
}

src_install() {
	cargo_src_install

	# Completions
	newbashcomp "${S}"/etc/completion/completion.bash delta
	newzshcomp "${S}"/etc/completion/completion.zsh _delta
	newfishcomp "${S}"/etc/completion/completion.fish delta.fish
}
