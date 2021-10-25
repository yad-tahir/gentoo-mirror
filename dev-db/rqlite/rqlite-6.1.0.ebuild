# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit go-module
EGIT_COMMIT=7103d425c8a50a24fa81812d85c45d5fc26b15d7

DESCRIPTION="Replicated SQLite using the Raft consensus protocol"
HOMEPAGE="https://github.com/rqlite/rqlite https://www.philipotoole.com/tag/rqlite/"

EGO_SUM=(
"cloud.google.com/go v0.26.0/go.mod"
"cloud.google.com/go v0.34.0/go.mod"
"cloud.google.com/go v0.37.4/go.mod"
"github.com/Bowery/prompt v0.0.0-20190916142128-fa8279994f75"
"github.com/Bowery/prompt v0.0.0-20190916142128-fa8279994f75/go.mod"
"github.com/BurntSushi/toml v0.3.1/go.mod"
"github.com/DataDog/datadog-go v2.2.0+incompatible/go.mod"
"github.com/DataDog/datadog-go v3.2.0+incompatible/go.mod"
"github.com/Shopify/sarama v1.19.0/go.mod"
"github.com/Shopify/toxiproxy v2.1.4+incompatible/go.mod"
"github.com/alecthomas/template v0.0.0-20160405071501-a0175ee3bccc/go.mod"
"github.com/alecthomas/template v0.0.0-20190718012654-fb15b899a751/go.mod"
"github.com/alecthomas/units v0.0.0-20151022065526-2efee857e7cf/go.mod"
"github.com/alecthomas/units v0.0.0-20190717042225-c3de453c63f4/go.mod"
"github.com/apache/thrift v0.12.0/go.mod"
"github.com/armon/go-metrics v0.0.0-20190430140413-ec5e00d3c878"
"github.com/armon/go-metrics v0.0.0-20190430140413-ec5e00d3c878/go.mod"
"github.com/armon/go-metrics v0.3.4"
"github.com/armon/go-metrics v0.3.4/go.mod"
"github.com/armon/go-metrics v0.3.5"
"github.com/armon/go-metrics v0.3.5/go.mod"
"github.com/armon/go-metrics v0.3.6"
"github.com/armon/go-metrics v0.3.6/go.mod"
"github.com/armon/go-metrics v0.3.7"
"github.com/armon/go-metrics v0.3.7/go.mod"
"github.com/armon/go-metrics v0.3.9"
"github.com/armon/go-metrics v0.3.9/go.mod"
"github.com/beorn7/perks v0.0.0-20180321164747-3a771d992973/go.mod"
"github.com/beorn7/perks v1.0.0/go.mod"
"github.com/beorn7/perks v1.0.1/go.mod"
"github.com/boltdb/bolt v1.3.1"
"github.com/boltdb/bolt v1.3.1/go.mod"
"github.com/census-instrumentation/opencensus-proto v0.2.1/go.mod"
"github.com/cespare/xxhash/v2 v2.1.1/go.mod"
"github.com/circonus-labs/circonus-gometrics v2.3.1+incompatible/go.mod"
"github.com/circonus-labs/circonusllhist v0.1.3/go.mod"
"github.com/client9/misspell v0.3.4/go.mod"
"github.com/cockroachdb/apd v1.1.0/go.mod"
"github.com/comail/colog v0.0.0-20160416085026-fba8e7b1f46c/go.mod"
"github.com/davecgh/go-spew v1.1.0/go.mod"
"github.com/davecgh/go-spew v1.1.1/go.mod"
"github.com/denisenkom/go-mssqldb v0.0.0-20190707035753-2be1aa521ff4/go.mod"
"github.com/eapache/go-resiliency v1.1.0/go.mod"
"github.com/eapache/go-xerial-snappy v0.0.0-20180814174437-776d5712da21/go.mod"
"github.com/eapache/queue v1.1.0/go.mod"
"github.com/envoyproxy/go-control-plane v0.9.1-0.20191026205805-5f8ba28d4473/go.mod"
"github.com/envoyproxy/protoc-gen-validate v0.1.0/go.mod"
"github.com/fatih/color v1.7.0"
"github.com/fatih/color v1.7.0/go.mod"
"github.com/fatih/color v1.10.0"
"github.com/fatih/color v1.10.0/go.mod"
"github.com/fatih/color v1.12.0"
"github.com/fatih/color v1.12.0/go.mod"
"github.com/fsnotify/fsnotify v1.4.7/go.mod"
"github.com/go-kit/kit v0.8.0/go.mod"
"github.com/go-kit/kit v0.9.0/go.mod"
"github.com/go-logfmt/logfmt v0.3.0/go.mod"
"github.com/go-logfmt/logfmt v0.4.0/go.mod"
"github.com/go-sql-driver/mysql v1.4.1/go.mod"
"github.com/go-stack/stack v1.8.0/go.mod"
"github.com/go-xorm/sqlfiddle v0.0.0-20180821085327-62ce714f951a/go.mod"
"github.com/go-xorm/xorm v0.7.9/go.mod"
"github.com/gofrs/uuid v3.2.0+incompatible/go.mod"
"github.com/gogo/protobuf v1.1.1/go.mod"
"github.com/gogo/protobuf v1.2.0/go.mod"
"github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b/go.mod"
"github.com/golang/mock v1.1.1/go.mod"
"github.com/golang/mock v1.2.0/go.mod"
"github.com/golang/protobuf v1.2.0/go.mod"
"github.com/golang/protobuf v1.3.1/go.mod"
"github.com/golang/protobuf v1.3.2"
"github.com/golang/protobuf v1.3.2/go.mod"
"github.com/golang/protobuf v1.4.0-rc.1/go.mod"
"github.com/golang/protobuf v1.4.0-rc.1.0.20200221234624-67d41d38c208/go.mod"
"github.com/golang/protobuf v1.4.0-rc.2/go.mod"
"github.com/golang/protobuf v1.4.0-rc.4.0.20200313231945-b860323f09d0/go.mod"
"github.com/golang/protobuf v1.4.0/go.mod"
"github.com/golang/protobuf v1.4.1/go.mod"
"github.com/golang/protobuf v1.4.3"
"github.com/golang/protobuf v1.4.3/go.mod"
"github.com/golang/protobuf v1.5.0/go.mod"
"github.com/golang/protobuf v1.5.2"
"github.com/golang/protobuf v1.5.2/go.mod"
"github.com/golang/snappy v0.0.0-20180518054509-2e65f85255db/go.mod"
"github.com/google/btree v0.0.0-20180813153112-4030bb1f1f0c/go.mod"
"github.com/google/go-cmp v0.2.0/go.mod"
"github.com/google/go-cmp v0.3.0/go.mod"
"github.com/google/go-cmp v0.3.1/go.mod"
"github.com/google/go-cmp v0.4.0/go.mod"
"github.com/google/go-cmp v0.5.0/go.mod"
"github.com/google/go-cmp v0.5.5/go.mod"
"github.com/google/gofuzz v1.0.0/go.mod"
"github.com/google/martian v2.1.0+incompatible/go.mod"
"github.com/google/pprof v0.0.0-20181206194817-3ea8567a2e57/go.mod"
"github.com/googleapis/gax-go/v2 v2.0.4/go.mod"
"github.com/gorilla/context v1.1.1/go.mod"
"github.com/gorilla/mux v1.6.2/go.mod"
"github.com/hashicorp/go-cleanhttp v0.5.0/go.mod"
"github.com/hashicorp/go-hclog v0.9.1"
"github.com/hashicorp/go-hclog v0.9.1/go.mod"
"github.com/hashicorp/go-hclog v0.15.0"
"github.com/hashicorp/go-hclog v0.15.0/go.mod"
"github.com/hashicorp/go-hclog v0.16.0"
"github.com/hashicorp/go-hclog v0.16.0/go.mod"
"github.com/hashicorp/go-hclog v0.16.2"
"github.com/hashicorp/go-hclog v0.16.2/go.mod"
"github.com/hashicorp/go-immutable-radix v1.0.0"
"github.com/hashicorp/go-immutable-radix v1.0.0/go.mod"
"github.com/hashicorp/go-immutable-radix v1.3.0"
"github.com/hashicorp/go-immutable-radix v1.3.0/go.mod"
"github.com/hashicorp/go-immutable-radix v1.3.1"
"github.com/hashicorp/go-immutable-radix v1.3.1/go.mod"
"github.com/hashicorp/go-msgpack v0.5.5"
"github.com/hashicorp/go-msgpack v0.5.5/go.mod"
"github.com/hashicorp/go-msgpack v1.1.5"
"github.com/hashicorp/go-msgpack v1.1.5/go.mod"
"github.com/hashicorp/go-retryablehttp v0.5.3/go.mod"
"github.com/hashicorp/go-uuid v1.0.0/go.mod"
"github.com/hashicorp/golang-lru v0.5.0"
"github.com/hashicorp/golang-lru v0.5.0/go.mod"
"github.com/hashicorp/golang-lru v0.5.4"
"github.com/hashicorp/golang-lru v0.5.4/go.mod"
"github.com/hashicorp/raft v1.1.0/go.mod"
"github.com/hashicorp/raft v1.1.1"
"github.com/hashicorp/raft v1.1.1/go.mod"
"github.com/hashicorp/raft v1.2.0"
"github.com/hashicorp/raft v1.2.0/go.mod"
"github.com/hashicorp/raft v1.3.0"
"github.com/hashicorp/raft v1.3.0/go.mod"
"github.com/hashicorp/raft v1.3.1"
"github.com/hashicorp/raft v1.3.1/go.mod"
"github.com/hashicorp/raft-boltdb v0.0.0-20171010151810-6e5ba93211ea/go.mod"
"github.com/hashicorp/raft-boltdb v0.0.0-20191021154308-4207f1bf0617"
"github.com/hashicorp/raft-boltdb v0.0.0-20191021154308-4207f1bf0617/go.mod"
"github.com/hashicorp/raft-boltdb v0.0.0-20210409134258-03c10cc3d4ea"
"github.com/hashicorp/raft-boltdb v0.0.0-20210409134258-03c10cc3d4ea/go.mod"
"github.com/hashicorp/raft-boltdb v0.0.0-20210422161416-485fa74b0b01"
"github.com/hashicorp/raft-boltdb v0.0.0-20210422161416-485fa74b0b01/go.mod"
"github.com/hpcloud/tail v1.0.0/go.mod"
"github.com/jackc/fake v0.0.0-20150926172116-812a484cc733/go.mod"
"github.com/jackc/pgx v3.6.0+incompatible/go.mod"
"github.com/json-iterator/go v1.1.6/go.mod"
"github.com/json-iterator/go v1.1.9/go.mod"
"github.com/jstemmer/go-junit-report v0.0.0-20190106144839-af01ea7f8024/go.mod"
"github.com/julienschmidt/httprouter v1.2.0/go.mod"
"github.com/kisielk/gotool v1.0.0/go.mod"
"github.com/konsorten/go-windows-terminal-sequences v1.0.1/go.mod"
"github.com/kr/logfmt v0.0.0-20140226030751-b84e30acd515/go.mod"
"github.com/kr/pretty v0.1.0/go.mod"
"github.com/kr/pretty v0.2.1/go.mod"
"github.com/kr/pty v1.1.1/go.mod"
"github.com/kr/text v0.1.0/go.mod"
"github.com/labstack/gommon v0.3.0"
"github.com/labstack/gommon v0.3.0/go.mod"
"github.com/lib/pq v1.0.0/go.mod"
"github.com/mattn/go-colorable v0.1.2/go.mod"
"github.com/mattn/go-colorable v0.1.4"
"github.com/mattn/go-colorable v0.1.4/go.mod"
"github.com/mattn/go-colorable v0.1.7/go.mod"
"github.com/mattn/go-colorable v0.1.8"
"github.com/mattn/go-colorable v0.1.8/go.mod"
"github.com/mattn/go-isatty v0.0.8/go.mod"
"github.com/mattn/go-isatty v0.0.9/go.mod"
"github.com/mattn/go-isatty v0.0.10/go.mod"
"github.com/mattn/go-isatty v0.0.11"
"github.com/mattn/go-isatty v0.0.11/go.mod"
"github.com/mattn/go-isatty v0.0.12"
"github.com/mattn/go-isatty v0.0.12/go.mod"
"github.com/mattn/go-isatty v0.0.13"
"github.com/mattn/go-isatty v0.0.13/go.mod"
"github.com/mattn/go-sqlite3 v1.10.0/go.mod"
"github.com/mattn/go-sqlite3 v1.14.5"
"github.com/mattn/go-sqlite3 v1.14.5/go.mod"
"github.com/mattn/go-sqlite3 v1.14.6"
"github.com/mattn/go-sqlite3 v1.14.6/go.mod"
"github.com/mattn/go-sqlite3 v2.0.2+incompatible"
"github.com/mattn/go-sqlite3 v2.0.2+incompatible/go.mod"
"github.com/mattn/go-sqlite3 v2.0.3+incompatible"
"github.com/mattn/go-sqlite3 v2.0.3+incompatible/go.mod"
"github.com/matttproud/golang_protobuf_extensions v1.0.1/go.mod"
"github.com/mkideal/cli v0.0.3"
"github.com/mkideal/cli v0.0.3/go.mod"
"github.com/mkideal/cli v0.2.3"
"github.com/mkideal/cli v0.2.3/go.mod"
"github.com/mkideal/cli v0.2.5"
"github.com/mkideal/cli v0.2.5/go.mod"
"github.com/mkideal/cli v0.2.7"
"github.com/mkideal/cli v0.2.7/go.mod"
"github.com/mkideal/expr v0.1.0"
"github.com/mkideal/expr v0.1.0/go.mod"
"github.com/mkideal/log v1.0.0/go.mod"
"github.com/mkideal/pkg v0.0.0-20170503154153-3e188c9e7ecc"
"github.com/mkideal/pkg v0.0.0-20170503154153-3e188c9e7ecc/go.mod"
"github.com/mkideal/pkg v0.1.2"
"github.com/mkideal/pkg v0.1.2/go.mod"
"github.com/mkideal/pkg v0.1.3"
"github.com/mkideal/pkg v0.1.3/go.mod"
"github.com/modern-go/concurrent v0.0.0-20180228061459-e0a39a4cb421/go.mod"
"github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd/go.mod"
"github.com/modern-go/reflect2 v0.0.0-20180701023420-4b7aa43c6742/go.mod"
"github.com/modern-go/reflect2 v1.0.1/go.mod"
"github.com/mwitkow/go-conntrack v0.0.0-20161129095857-cc309e4a2223/go.mod"
"github.com/onsi/ginkgo v1.6.0/go.mod"
"github.com/onsi/ginkgo v1.7.0/go.mod"
"github.com/onsi/gomega v1.4.3/go.mod"
"github.com/openzipkin/zipkin-go v0.1.6/go.mod"
"github.com/pascaldekloe/goe v0.1.0/go.mod"
"github.com/pierrec/lz4 v2.0.5+incompatible/go.mod"
"github.com/pkg/errors v0.8.0/go.mod"
"github.com/pkg/errors v0.8.1/go.mod"
"github.com/pmezard/go-difflib v1.0.0/go.mod"
"github.com/prometheus/client_golang v0.9.1/go.mod"
"github.com/prometheus/client_golang v0.9.2/go.mod"
"github.com/prometheus/client_golang v0.9.3-0.20190127221311-3c4408c8b829/go.mod"
"github.com/prometheus/client_golang v1.0.0/go.mod"
"github.com/prometheus/client_golang v1.4.0/go.mod"
"github.com/prometheus/client_model v0.0.0-20180712105110-5c3871d89910/go.mod"
"github.com/prometheus/client_model v0.0.0-20190115171406-56726106282f/go.mod"
"github.com/prometheus/client_model v0.0.0-20190129233127-fd36f4220a90/go.mod"
"github.com/prometheus/client_model v0.0.0-20190812154241-14fe0d1b01d4/go.mod"
"github.com/prometheus/client_model v0.2.0/go.mod"
"github.com/prometheus/common v0.0.0-20181126121408-4724e9255275/go.mod"
"github.com/prometheus/common v0.2.0/go.mod"
"github.com/prometheus/common v0.4.1/go.mod"
"github.com/prometheus/common v0.9.1/go.mod"
"github.com/prometheus/procfs v0.0.0-20181005140218-185b4288413d/go.mod"
"github.com/prometheus/procfs v0.0.0-20181204211112-1dc9a6cbc91a/go.mod"
"github.com/prometheus/procfs v0.0.0-20190117184657-bf6a532e95b1/go.mod"
"github.com/prometheus/procfs v0.0.2/go.mod"
"github.com/prometheus/procfs v0.0.8/go.mod"
"github.com/rcrowley/go-metrics v0.0.0-20181016184325-3113b8401b8a/go.mod"
"github.com/rqlite/go-sqlite3 v1.15.0"
"github.com/rqlite/go-sqlite3 v1.15.0/go.mod"
"github.com/rqlite/go-sqlite3 v1.18.0"
"github.com/rqlite/go-sqlite3 v1.18.0/go.mod"
"github.com/rqlite/go-sqlite3 v1.19.0"
"github.com/rqlite/go-sqlite3 v1.19.0/go.mod"
"github.com/rqlite/go-sqlite3 v1.20.0"
"github.com/rqlite/go-sqlite3 v1.20.0/go.mod"
"github.com/rqlite/go-sqlite3 v1.20.1"
"github.com/rqlite/go-sqlite3 v1.20.1/go.mod"
"github.com/rqlite/go-sqlite3 v1.20.2"
"github.com/rqlite/go-sqlite3 v1.20.2/go.mod"
"github.com/rqlite/go-sqlite3 v1.20.3"
"github.com/rqlite/go-sqlite3 v1.20.3/go.mod"
"github.com/rqlite/go-sqlite3 v1.20.4"
"github.com/rqlite/go-sqlite3 v1.20.4/go.mod"
"github.com/rqlite/go-sqlite3 v1.21.0"
"github.com/rqlite/go-sqlite3 v1.21.0/go.mod"
"github.com/shopspring/decimal v0.0.0-20180709203117-cd690d0c9e24/go.mod"
"github.com/sirupsen/logrus v1.2.0/go.mod"
"github.com/sirupsen/logrus v1.4.2/go.mod"
"github.com/stretchr/objx v0.1.0/go.mod"
"github.com/stretchr/objx v0.1.1/go.mod"
"github.com/stretchr/testify v1.2.2/go.mod"
"github.com/stretchr/testify v1.3.0/go.mod"
"github.com/stretchr/testify v1.4.0/go.mod"
"github.com/tv42/httpunix v0.0.0-20150427012821-b75d8614f926/go.mod"
"github.com/valyala/bytebufferpool v1.0.0/go.mod"
"github.com/valyala/fasttemplate v1.0.1/go.mod"
"github.com/ziutek/mymysql v1.5.4/go.mod"
"go.opencensus.io v0.20.1/go.mod"
"golang.org/x/crypto v0.0.0-20180904163835-0709b304e793/go.mod"
"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
"golang.org/x/crypto v0.0.0-20190325154230-a5d413f7728c/go.mod"
"golang.org/x/crypto v0.0.0-20191219195013-becbf705a915"
"golang.org/x/crypto v0.0.0-20191219195013-becbf705a915/go.mod"
"golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9/go.mod"
"golang.org/x/crypto v0.0.0-20200820211705-5c72a883971a"
"golang.org/x/crypto v0.0.0-20200820211705-5c72a883971a/go.mod"
"golang.org/x/crypto v0.0.0-20201116153603-4be66e5b6582"
"golang.org/x/crypto v0.0.0-20201116153603-4be66e5b6582/go.mod"
"golang.org/x/crypto v0.0.0-20201221181555-eec23a3978ad"
"golang.org/x/crypto v0.0.0-20201221181555-eec23a3978ad/go.mod"
"golang.org/x/crypto v0.0.0-20210322153248-0c34fe9e7dc2"
"golang.org/x/crypto v0.0.0-20210322153248-0c34fe9e7dc2/go.mod"
"golang.org/x/crypto v0.0.0-20210421170649-83a5a9bb288b"
"golang.org/x/crypto v0.0.0-20210421170649-83a5a9bb288b/go.mod"
"golang.org/x/crypto v0.0.0-20210711020723-a769d52b0f97"
"golang.org/x/crypto v0.0.0-20210711020723-a769d52b0f97/go.mod"
"golang.org/x/exp v0.0.0-20190121172915-509febef88a4/go.mod"
"golang.org/x/lint v0.0.0-20181026193005-c67002cb31c3/go.mod"
"golang.org/x/lint v0.0.0-20190227174305-5b3e6a55c961/go.mod"
"golang.org/x/lint v0.0.0-20190301231843-5614ed5bae6f/go.mod"
"golang.org/x/lint v0.0.0-20190313153728-d0100b6bd8b3/go.mod"
"golang.org/x/net v0.0.0-20180724234803-3673e40ba225/go.mod"
"golang.org/x/net v0.0.0-20180826012351-8a410e7b638d/go.mod"
"golang.org/x/net v0.0.0-20180906233101-161cd47e91fd/go.mod"
"golang.org/x/net v0.0.0-20181114220301-adae6a3d119a/go.mod"
"golang.org/x/net v0.0.0-20181201002055-351d144fa1fc/go.mod"
"golang.org/x/net v0.0.0-20190108225652-1e06a53dbb7e/go.mod"
"golang.org/x/net v0.0.0-20190125091013-d26f9f9a57f3/go.mod"
"golang.org/x/net v0.0.0-20190213061140-3a22650c66bd/go.mod"
"golang.org/x/net v0.0.0-20190311183353-d8887717615a/go.mod"
"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
"golang.org/x/net v0.0.0-20190613194153-d28f0bde5980/go.mod"
"golang.org/x/net v0.0.0-20200707034311-ab3426394381"
"golang.org/x/net v0.0.0-20200707034311-ab3426394381/go.mod"
"golang.org/x/net v0.0.0-20210226172049-e18ecbb05110"
"golang.org/x/net v0.0.0-20210226172049-e18ecbb05110/go.mod"
"golang.org/x/oauth2 v0.0.0-20180821212333-d2e6202438be/go.mod"
"golang.org/x/oauth2 v0.0.0-20190226205417-e64efc72b421/go.mod"
"golang.org/x/sync v0.0.0-20180314180146-1d60e4601c6f/go.mod"
"golang.org/x/sync v0.0.0-20181108010431-42b317875d0f/go.mod"
"golang.org/x/sync v0.0.0-20181221193216-37e7f081c4d4/go.mod"
"golang.org/x/sync v0.0.0-20190227155943-e225da77a7e6/go.mod"
"golang.org/x/sync v0.0.0-20190423024810-112230192c58/go.mod"
"golang.org/x/sync v0.0.0-20190911185100-cd5d95a43a6e/go.mod"
"golang.org/x/sys v0.0.0-20180830151530-49385e6e1522/go.mod"
"golang.org/x/sys v0.0.0-20180905080454-ebe1bf3edb33/go.mod"
"golang.org/x/sys v0.0.0-20180909124046-d0be0721c37e/go.mod"
"golang.org/x/sys v0.0.0-20181116152217-5ac8a444bdc5/go.mod"
"golang.org/x/sys v0.0.0-20181122145206-62eef0e2fa9b/go.mod"
"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
"golang.org/x/sys v0.0.0-20190222072716-a9d3bda3a223/go.mod"
"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
"golang.org/x/sys v0.0.0-20190422165155-953cdadca894/go.mod"
"golang.org/x/sys v0.0.0-20190523142557-0e01d883c5c5/go.mod"
"golang.org/x/sys v0.0.0-20190602015325-4c4f7f33c9ed"
"golang.org/x/sys v0.0.0-20190602015325-4c4f7f33c9ed/go.mod"
"golang.org/x/sys v0.0.0-20190813064441-fde4db37ae7a/go.mod"
"golang.org/x/sys v0.0.0-20191008105621-543471e840be/go.mod"
"golang.org/x/sys v0.0.0-20191026070338-33540a1f6037"
"golang.org/x/sys v0.0.0-20191026070338-33540a1f6037/go.mod"
"golang.org/x/sys v0.0.0-20200116001909-b77594299b42/go.mod"
"golang.org/x/sys v0.0.0-20200122134326-e047566fdf82/go.mod"
"golang.org/x/sys v0.0.0-20200223170610-d5e6a3e2c0ae/go.mod"
"golang.org/x/sys v0.0.0-20200323222414-85ca7c5b95cd/go.mod"
"golang.org/x/sys v0.0.0-20201116194326-cc9327a14d48"
"golang.org/x/sys v0.0.0-20201116194326-cc9327a14d48/go.mod"
"golang.org/x/sys v0.0.0-20201119102817-f84b799fce68/go.mod"
"golang.org/x/sys v0.0.0-20201223074533-0d417f636930"
"golang.org/x/sys v0.0.0-20201223074533-0d417f636930/go.mod"
"golang.org/x/sys v0.0.0-20210124154548-22da62e12c0c"
"golang.org/x/sys v0.0.0-20210124154548-22da62e12c0c/go.mod"
"golang.org/x/sys v0.0.0-20210414055047-fe65e336abe0"
"golang.org/x/sys v0.0.0-20210414055047-fe65e336abe0/go.mod"
"golang.org/x/sys v0.0.0-20210423185535-09eb48e85fd7"
"golang.org/x/sys v0.0.0-20210423185535-09eb48e85fd7/go.mod"
"golang.org/x/sys v0.0.0-20210615035016-665e8c7367d1/go.mod"
"golang.org/x/sys v0.0.0-20210630005230-0f9fa26af87c"
"golang.org/x/sys v0.0.0-20210630005230-0f9fa26af87c/go.mod"
"golang.org/x/term v0.0.0-20201113234701-d7a72108b828"
"golang.org/x/term v0.0.0-20201113234701-d7a72108b828/go.mod"
"golang.org/x/term v0.0.0-20201117132131-f5c789dd3221"
"golang.org/x/term v0.0.0-20201117132131-f5c789dd3221/go.mod"
"golang.org/x/term v0.0.0-20201126162022-7de9c90e9dd1/go.mod"
"golang.org/x/term v0.0.0-20201210144234-2321bbc49cbf"
"golang.org/x/term v0.0.0-20201210144234-2321bbc49cbf/go.mod"
"golang.org/x/term v0.0.0-20210406210042-72f3dc4e9b72"
"golang.org/x/term v0.0.0-20210406210042-72f3dc4e9b72/go.mod"
"golang.org/x/term v0.0.0-20210422114643-f5beecf764ed"
"golang.org/x/term v0.0.0-20210422114643-f5beecf764ed/go.mod"
"golang.org/x/term v0.0.0-20210615171337-6886f2dfbf5b"
"golang.org/x/term v0.0.0-20210615171337-6886f2dfbf5b/go.mod"
"golang.org/x/text v0.3.0/go.mod"
"golang.org/x/text v0.3.1-0.20180807135948-17ff2d5776d2"
"golang.org/x/text v0.3.1-0.20180807135948-17ff2d5776d2/go.mod"
"golang.org/x/text v0.3.3"
"golang.org/x/text v0.3.3/go.mod"
"golang.org/x/time v0.0.0-20181108054448-85acf8d2951c/go.mod"
"golang.org/x/tools v0.0.0-20180828015842-6cd1fcedba52/go.mod"
"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
"golang.org/x/tools v0.0.0-20190114222345-bf090417da8b/go.mod"
"golang.org/x/tools v0.0.0-20190226205152-f727befe758c/go.mod"
"golang.org/x/tools v0.0.0-20190311212946-11955173bddd/go.mod"
"golang.org/x/tools v0.0.0-20190312170243-e65039ee4138/go.mod"
"golang.org/x/tools v0.0.0-20190424220101-1e8e1cfdf96b/go.mod"
"golang.org/x/tools v0.0.0-20190524140312-2c0ae7006135/go.mod"
"golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543/go.mod"
"google.golang.org/api v0.3.1/go.mod"
"google.golang.org/appengine v1.1.0/go.mod"
"google.golang.org/appengine v1.4.0/go.mod"
"google.golang.org/appengine v1.6.0/go.mod"
"google.golang.org/genproto v0.0.0-20180817151627-c66870c02cf8/go.mod"
"google.golang.org/genproto v0.0.0-20190307195333-5fe7a883aa19/go.mod"
"google.golang.org/genproto v0.0.0-20190404172233-64821d5d2107/go.mod"
"google.golang.org/genproto v0.0.0-20190819201941-24fa4b261c55/go.mod"
"google.golang.org/genproto v0.0.0-20200526211855-cb27e3aa2013/go.mod"
"google.golang.org/grpc v1.17.0/go.mod"
"google.golang.org/grpc v1.19.0/go.mod"
"google.golang.org/grpc v1.23.0/go.mod"
"google.golang.org/grpc v1.27.0/go.mod"
"google.golang.org/protobuf v0.0.0-20200109180630-ec00e32a8dfd/go.mod"
"google.golang.org/protobuf v0.0.0-20200221191635-4d8936d0db64/go.mod"
"google.golang.org/protobuf v0.0.0-20200228230310-ab0ca4ff8a60/go.mod"
"google.golang.org/protobuf v1.20.1-0.20200309200217-e05f789c0967/go.mod"
"google.golang.org/protobuf v1.21.0/go.mod"
"google.golang.org/protobuf v1.22.0/go.mod"
"google.golang.org/protobuf v1.23.0"
"google.golang.org/protobuf v1.23.0/go.mod"
"google.golang.org/protobuf v1.23.1-0.20200526195155-81db48ad09cc/go.mod"
"google.golang.org/protobuf v1.25.0"
"google.golang.org/protobuf v1.25.0/go.mod"
"google.golang.org/protobuf v1.26.0-rc.1/go.mod"
"google.golang.org/protobuf v1.26.0"
"google.golang.org/protobuf v1.26.0/go.mod"
"google.golang.org/protobuf v1.27.1"
"google.golang.org/protobuf v1.27.1/go.mod"
"gopkg.in/alecthomas/kingpin.v2 v2.2.6/go.mod"
"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127/go.mod"
"gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15/go.mod"
"gopkg.in/fsnotify.v1 v1.4.7/go.mod"
"gopkg.in/redis.v5 v5.2.9/go.mod"
"gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7/go.mod"
"gopkg.in/yaml.v2 v2.2.1/go.mod"
"gopkg.in/yaml.v2 v2.2.2/go.mod"
"gopkg.in/yaml.v2 v2.2.4/go.mod"
"gopkg.in/yaml.v2 v2.2.5/go.mod"
"honnef.co/go/tools v0.0.0-20180728063816-88497007e858/go.mod"
"honnef.co/go/tools v0.0.0-20190102054323-c2f93a96b099/go.mod"
"honnef.co/go/tools v0.0.0-20190106161140-3f1c8253044a/go.mod"
"honnef.co/go/tools v0.0.0-20190523083050-ea95bdfd59fc/go.mod"
"xorm.io/builder v0.3.6/go.mod"
"xorm.io/core v0.7.2-0.20190928055935-90aeac8d08eb/go.mod"
)
go-module_set_globals
SRC_URI="https://github.com/rqlite/rqlite/archive/v${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="MIT Apache-2.0 BSD CC0-1.0 MPL-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

src_compile() {
	GOBIN="${S}/bin" \
		go install \
			-ldflags="-X main.version=v${PV}
				-X main.branch=master
				-X main.commit=${EGIT_COMMIT}
				-X main.buildtime=$(date +%Y-%m-%dT%T%z)" \
			./cmd/... || die
}

src_test() {
	GOBIN="${S}/bin" \
		go test ./... || die
}

src_install() {
	dobin bin/*
	dodoc -r *.md DOC
}
