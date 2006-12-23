#!/sbin/runscript
# Copyright 1999-2005 Gentoo Foundation
# Copyright 2006 SabayonLinux
# Distributed under the terms of the GNU General Public License v2

depend() {
	before hostname
	after internetkiosk
}


start() {

      ebegin "Configuring GPU Hardware Acceleration and Input devices"

      # Fixing things (here for now)
      if [ ! -e /var/cache/edb ]; then
	mkdir /var/cache/edb
	mkdir /var/cache/edb/dep
	chmod 775 /var/cache/edb -R
	chmod 775 /var/cache/edb/dep -R
	chown root:portage /var/cache/edb -R
      fi

      # Start-up x-setup-configuration
      start-stop-daemon --start --background --exec /usr/sbin/x-setup-configuration --

      eend 0
}
