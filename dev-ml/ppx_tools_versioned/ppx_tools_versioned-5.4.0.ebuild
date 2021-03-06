# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit dune

MY_PV=${PV/_/}
MY_P=${PN}-${MY_PV}

DESCRIPTION="Tools for authors of ppx rewriters"
HOMEPAGE="https://github.com/let-def/ppx_tools_versioned"
SRC_URI="https://github.com/let-def/ppx_tools_versioned/archive/${MY_PV}.tar.gz -> ${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"
IUSE="+ocamlopt"

# https://github.com/ocaml-ppx/ppx_tools_versioned/issues/28#issuecomment-694146771
DEPEND="
	<dev-ml/ocaml-migrate-parsetree-2.0.0:=
"
RDEPEND="${DEPEND}"
S="${WORKDIR}/${MY_P}"
