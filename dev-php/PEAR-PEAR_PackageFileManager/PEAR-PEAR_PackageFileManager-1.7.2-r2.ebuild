# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit php-pear-r2

DESCRIPTION="Updates an existing package.xml file with a new filelist and changelog"
LICENSE="PHP-3.01"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/php-5.3:*
	>=dev-php/PEAR-PEAR-1.10.1
	dev-php/PEAR-PEAR_PackageFileManager2
	dev-php/PEAR-PEAR_PackageFileManager_Plugins"
