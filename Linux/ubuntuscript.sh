#!/bin/bash
cd /
sudo apt-get update
sudo apt-get upgrade
sudo ufw enable
sudo apt-get remove pure-ftpd
sudo apt-get remove zenmap nmap
sudo find . -iname '*.mp3' -delete
