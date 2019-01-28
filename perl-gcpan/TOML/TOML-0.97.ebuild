# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.16.9

EAPI=5

MODULE_AUTHOR="KARUPA"
MODULE_VERSION="0.97"


inherit perl-module

DESCRIPTION="Parser for Tom's Obvious, Minimal Language."

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND=">=perl-gcpan/TOML-Parser-0.91
	>=dev-perl/Module-Build-Tiny-0.39.0
	dev-perl/Module-Build
	dev-lang/perl"
