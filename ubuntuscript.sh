#!/bin/bash
sudo apt-get update
sudo apt-get upgrade
sudo ufw enable
sudo apt-get remove pure-ftpd
sudo apt-get remove zenmap nmap
find . -name '*.mp3' --delete
