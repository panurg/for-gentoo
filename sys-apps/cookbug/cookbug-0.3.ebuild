# Copyright 2004-2011 Sabayon
# Distributed under the terms of the GNU General Public License v2

DESCRIPTION="Sabayon Bug Report hardware information collector"
HOMEPAGE="http://bugs.sabayon.org"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="sys-apps/coreutils
	sys-apps/module-init-tools
	sys-apps/pciutils
	sys-apps/usbutils"

S="${WORKDIR}"

src_unpack() {
	cd "${S}"
	cp "${FILESDIR}/${PN}" . || die
}

src_install() {
	dobin "${PN}" || die
}