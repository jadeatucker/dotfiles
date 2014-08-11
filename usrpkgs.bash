#!/bin/bash
#
# usrpkgs.bash
#
# Creates a list of user-installed packages by comparing the list of currently
# installed packages to the list of packages installed by default (manifest).

# Ubuntu dist package manifest
MANIFEST=http://cdimage.ubuntu.com/releases/14.04/release/ubuntu-14.04-desktop-amd64+mac.manifest

command -v aptitude >/dev/null 2>&1 || { printf >&2 "Aptitude is required to continue:\n\t'sudo apt-get install aptitude'\n"; exit 1; }

aptitude search '~i !~M' -F '%p' | sed -e "s/ *$//" | sort -u  > currently-installed.list
wget -qO - $MANIFEST | cut -f1 | sort -u  > default-installed.list
comm -23 currently-installed.list default-installed.list > user-installed.list
