# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.17.0

EAPI=8

DIST_AUTHOR="KARUPA"
DIST_VERSION="0.91"


inherit perl-module

DESCRIPTION="simple toml parser"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND="perl-gcpan/Test-Deep-Fuzzy
	dev-perl/Types-Serialiser
	dev-perl/Module-Build
	>=dev-perl/Module-Build-Tiny-0.39.0
	dev-perl/Test-Deep
	dev-lang/perl"
