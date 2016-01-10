#!/bin/bash

# MRC: Installation of lxde fails the first time because of a configuration error related
#  to dictionaries, of all things.  Running fix_db fixes that error, then
#  installation can proceed.
sudo apt-get install -y lxde || true
sudo /usr/share/debconf/fix_db.pl
sudo apt-get install -y lxde chromium-browser

sudo sed "s/# autologin=dgod/autologin=vagrant/" -i /etc/lxdm/lxdm.conf
