# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: font-ebdftopcf.eclass
# @MAINTAINER:
# maintainer-needed@gentoo.org
# @AUTHOR:
# Robin H. Johnson <robbat2@gentoo.org>
# @BLURB: Eclass to make PCF font generator from BDF uniform and optimal
# @DESCRIPTION:
# The manpage for this eclass is in media-gfx/ebdftopcf.
# Inherit this eclass after font.eclass

# if USE="-X", this eclass is basically a no-op, since bdftopcf requires Xorg.
IUSE="X"

# Variable declarations
DEPEND="X? ( media-gfx/ebdftopcf )"
RDEPEND=""

#
# Public functions
#

ebdftopcf() {
	local bdffiles
	bdffiles="$@"
	[ -z "$bdffiles" ] && die "No BDF files specified."
	emake -f "${EPREFIX}"/usr/share/ebdftopcf/Makefile.ebdftopcf \
		BDFFILES="${bdffiles}" \
		BDFTOPCF_PARAMS="${BDFTOPCF_PARAMS}" \
		|| die "Failed to build PCF files"
}

#
# Public inheritable functions
#

font-ebdftopcf_src_compile() {
	use X && FONT_SUFFIX="pcf.gz"
	use X || FONT_SUFFIX="bdf"

	if use X; then
		[ -z "${BDFFILES}" ] && BDFFILES="$(find . -name '*.bdf')"
		ebdftopcf ${BDFFILES}
	fi
}

EXPORT_FUNCTIONS src_compile
