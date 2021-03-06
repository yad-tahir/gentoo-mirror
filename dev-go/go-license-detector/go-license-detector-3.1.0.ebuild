# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit go-module

DESCRIPTION="Scan a source directory and report the license"
HOMEPAGE="https://github.com/src-d/go-license-detector"

EGO_SUM=(
	"github.com/ajstarks/svgo v0.0.0-20180226025133-644b8db467af/go.mod"
	"github.com/alcortesm/tgz v0.0.0-20161220082320-9c5fe88206d7"
	"github.com/alcortesm/tgz v0.0.0-20161220082320-9c5fe88206d7/go.mod"
	"github.com/anmitsu/go-shlex v0.0.0-20161002113705-648efa622239"
	"github.com/anmitsu/go-shlex v0.0.0-20161002113705-648efa622239/go.mod"
	"github.com/armon/go-socks5 v0.0.0-20160902184237-e75332964ef5"
	"github.com/armon/go-socks5 v0.0.0-20160902184237-e75332964ef5/go.mod"
	"github.com/creack/pty v1.1.7/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/dgryski/go-metro v0.0.0-20180109044635-280f6062b5bc"
	"github.com/dgryski/go-metro v0.0.0-20180109044635-280f6062b5bc/go.mod"
	"github.com/dgryski/go-minhash v0.0.0-20170608043002-7fe510aff544"
	"github.com/dgryski/go-minhash v0.0.0-20170608043002-7fe510aff544/go.mod"
	"github.com/dgryski/go-spooky v0.0.0-20170606183049-ed3d087f40e2"
	"github.com/dgryski/go-spooky v0.0.0-20170606183049-ed3d087f40e2/go.mod"
	"github.com/ekzhu/minhash-lsh v0.0.0-20171225071031-5c06ee8586a1"
	"github.com/ekzhu/minhash-lsh v0.0.0-20171225071031-5c06ee8586a1/go.mod"
	"github.com/emirpasic/gods v1.12.0"
	"github.com/emirpasic/gods v1.12.0/go.mod"
	"github.com/flynn/go-shlex v0.0.0-20150515145356-3f9db97f8568"
	"github.com/flynn/go-shlex v0.0.0-20150515145356-3f9db97f8568/go.mod"
	"github.com/fogleman/gg v1.2.1-0.20190220221249-0403632d5b90/go.mod"
	"github.com/gliderlabs/ssh v0.2.2"
	"github.com/gliderlabs/ssh v0.2.2/go.mod"
	"github.com/golang/freetype v0.0.0-20170609003504-e2365dfdc4a0/go.mod"
	"github.com/google/go-cmp v0.3.0"
	"github.com/google/go-cmp v0.3.0/go.mod"
	"github.com/hhatto/gorst v0.0.0-20171128071645-7682c8a25108"
	"github.com/hhatto/gorst v0.0.0-20171128071645-7682c8a25108/go.mod"
	"github.com/jbenet/go-context v0.0.0-20150711004518-d14ea06fba99"
	"github.com/jbenet/go-context v0.0.0-20150711004518-d14ea06fba99/go.mod"
	"github.com/jdkato/prose v1.1.0"
	"github.com/jdkato/prose v1.1.0/go.mod"
	"github.com/jessevdk/go-flags v1.4.0/go.mod"
	"github.com/jung-kurt/gofpdf v1.0.3-0.20190309125859-24315acbbda5/go.mod"
	"github.com/kevinburke/ssh_config v0.0.0-20190725054713-01f96b0aa0cd"
	"github.com/kevinburke/ssh_config v0.0.0-20190725054713-01f96b0aa0cd/go.mod"
	"github.com/kr/pretty v0.1.0"
	"github.com/kr/pretty v0.1.0/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/pty v1.1.8/go.mod"
	"github.com/kr/text v0.1.0"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/mitchellh/go-homedir v1.1.0"
	"github.com/mitchellh/go-homedir v1.1.0/go.mod"
	"github.com/montanaflynn/stats v0.0.0-20151014174947-eeaced052adb"
	"github.com/montanaflynn/stats v0.0.0-20151014174947-eeaced052adb/go.mod"
	"github.com/neurosnap/sentences v1.0.6"
	"github.com/neurosnap/sentences v1.0.6/go.mod"
	"github.com/pelletier/go-buffruneio v0.2.0/go.mod"
	"github.com/pkg/errors v0.8.1"
	"github.com/pkg/errors v0.8.1/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/russross/blackfriday/v2 v2.0.1"
	"github.com/russross/blackfriday/v2 v2.0.1/go.mod"
	"github.com/sergi/go-diff v0.0.0-20180205163309-da645544ed44"
	"github.com/sergi/go-diff v0.0.0-20180205163309-da645544ed44/go.mod"
	"github.com/shogo82148/go-shuffle v0.0.0-20170808115208-59829097ff3b"
	"github.com/shogo82148/go-shuffle v0.0.0-20170808115208-59829097ff3b/go.mod"
	"github.com/shurcooL/sanitized_anchor_name v0.0.0-20170918181015-86672fcb3f95"
	"github.com/shurcooL/sanitized_anchor_name v0.0.0-20170918181015-86672fcb3f95/go.mod"
	"github.com/spf13/pflag v1.0.0"
	"github.com/spf13/pflag v1.0.0/go.mod"
	"github.com/src-d/gcfg v1.4.0"
	"github.com/src-d/gcfg v1.4.0/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/objx v0.2.0/go.mod"
	"github.com/stretchr/testify v1.3.0"
	"github.com/stretchr/testify v1.3.0/go.mod"
	"github.com/xanzy/ssh-agent v0.2.1"
	"github.com/xanzy/ssh-agent v0.2.1/go.mod"
	"golang.org/x/crypto v0.0.0-20190219172222-a4c6cb3142f2/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/crypto v0.0.0-20190701094942-4def268fd1a4"
	"golang.org/x/crypto v0.0.0-20190701094942-4def268fd1a4/go.mod"
	"golang.org/x/exp v0.0.0-20180321215751-8460e604b9de/go.mod"
	"golang.org/x/exp v0.0.0-20180807140117-3d87b88a115f/go.mod"
	"golang.org/x/exp v0.0.0-20190125153040-c74c464bbbf2"
	"golang.org/x/exp v0.0.0-20190125153040-c74c464bbbf2/go.mod"
	"golang.org/x/image v0.0.0-20180708004352-c73c2afc3b81/go.mod"
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859/go.mod"
	"golang.org/x/net v0.0.0-20190724013045-ca1201d0de80"
	"golang.org/x/net v0.0.0-20190724013045-ca1201d0de80/go.mod"
	"golang.org/x/sync v0.0.0-20190423024810-112230192c58/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20190221075227-b4e8571b14e0/go.mod"
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
	"golang.org/x/sys v0.0.0-20190726091711-fc99dfbffb4e"
	"golang.org/x/sys v0.0.0-20190726091711-fc99dfbffb4e/go.mod"
	"golang.org/x/text v0.3.0"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/tools v0.0.0-20180525024113-a5b4c53f6e8b/go.mod"
	"golang.org/x/tools v0.0.0-20190206041539-40960b6deb8e/go.mod"
	"golang.org/x/tools v0.0.0-20190729092621-ff9f1409240a/go.mod"
	"gonum.org/v1/gonum v0.0.0-20180816165407-929014505bf4/go.mod"
	"gonum.org/v1/gonum v0.6.1"
	"gonum.org/v1/gonum v0.6.1/go.mod"
	"gonum.org/v1/netlib v0.0.0-20190313105609-8cb42192e0e0"
	"gonum.org/v1/netlib v0.0.0-20190313105609-8cb42192e0e0/go.mod"
	"gonum.org/v1/plot v0.0.0-20190515093506-e2840ee46a6b/go.mod"
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127"
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127/go.mod"
	"gopkg.in/neurosnap/sentences.v1 v1.0.6"
	"gopkg.in/neurosnap/sentences.v1 v1.0.6/go.mod"
	"gopkg.in/src-d/go-billy-siva.v4 v4.3.0"
	"gopkg.in/src-d/go-billy-siva.v4 v4.3.0/go.mod"
	"gopkg.in/src-d/go-billy.v4 v4.3.2"
	"gopkg.in/src-d/go-billy.v4 v4.3.2/go.mod"
	"gopkg.in/src-d/go-git-fixtures.v3 v3.5.0"
	"gopkg.in/src-d/go-git-fixtures.v3 v3.5.0/go.mod"
	"gopkg.in/src-d/go-git.v4 v4.13.1"
	"gopkg.in/src-d/go-git.v4 v4.13.1/go.mod"
	"gopkg.in/src-d/go-siva.v1 v1.5.0"
	"gopkg.in/src-d/go-siva.v1 v1.5.0/go.mod"
	"gopkg.in/warnings.v0 v0.1.2"
	"gopkg.in/warnings.v0 v0.1.2/go.mod"
	"rsc.io/pdf v0.1.1/go.mod"
	)
go-module_set_globals
SRC_URI="https://github.com/src-d/go-license-detector/archive/v${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="Apache-2.0 BSD BSD-2 MIT ISC"
SLOT="0"
KEYWORDS="~amd64"

PATCHES=(
	"${FILESDIR}/${P}-go-sum.patch"
)

src_compile() {
	go build ./cmd/license-detector || die
}

src_install() {
	dobin license-detector
	einstalldocs
}
