# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

HUSKY_MODULE=${PN#husky-}

if [[ ${PV} == "9999" ]]; then
	EGIT_REPO_URI="https://github.com/huskyproject/${HUSKY_MODULE}.git"
	inherit git-r3
else
	SRC_URI="https://github.com/huskyproject/${HUSKY_MODULE}/archive/refs/tags/${HUSKY_MODULE}-${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
fi

inherit cmake-multilib

DESCRIPTION="FTN husky ${HUSKY_MODULE} library"
HOMEPAGE="https://huskyproject.github.io/"

LICENSE="GPL-2"
SLOT="0"
IUSE=""

DEPEND="
	>=net-fido/husky-huskylib-1.9.20201016
	>=net-fido/husky-smapi-2.5.20201016
	>=net-fido/husky-fidoconf-1.9.20201016
	>=net-fido/husky-hptzip-1.9.20190108
"

RDEPEND="${DEPEND}"

S="${WORKDIR}/${HUSKY_MODULE}-${HUSKY_MODULE}-${PV}"

DOCS="${S}/ChangeLog ${S}/ChangeLog.old ${S}/FILE_ID.DIZ ${S}/HISTORY ${S}/README.md"

multilib_src_install() {
	cmake_src_install
	insinto /etc/ftn
	newins ${S}/sample.lnx config.example.${HUSKY_MODULE}
	doman ${S}/man/*.*
}