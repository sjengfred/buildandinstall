#! /bin/bash
# manual:
# add kernel.sched_autogroup_enabled = 0 to /etc/sysctl.conf
# add old databases and config files
# add symbolic links to ext hd
# make ext hd automount
# add deb-src http://archive.raspbian.org/raspbian wheezy main contrib non-free rpi to /etc/apt/sources.list
# 
# after install: change priorities and reboot (after database migrations)

apt-get update
apt-get upgrade

## unrar nonfree

mkdir unrar-nonfree && cd unrar-nonfree
apt-get build-dep unrar-nonfree
apt-get source -b unrar-nonfree
dpkg -i unrar_4.1.4-1_armhf.deb
cd .. && rm -r unrar-nonfree

## packages

dpkg -i allclones/xbian-package-autosub*.deb
dpkg -i allclones/xbian-package-nzbget*.deb
dpkg -i allclones/xbian-package-couchpotato*.deb
dpkg -i allclones/xbian-package-sickbeard*.deb


