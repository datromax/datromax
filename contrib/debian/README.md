
Debian
====================
This directory contains files used to package datromaxd/datromax-qt
for Debian-based Linux systems. If you compile datromaxd/datromax-qt yourself, there are some useful files here.

## datromax: URI support ##


datromax-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install datromax-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your datromax-qt binary to `/usr/bin`
and the `../../share/pixmaps/datromax128.png` to `/usr/share/pixmaps`

datromax-qt.protocol (KDE)

