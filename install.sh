#!/bin/bash

git --version|| (echo "Please Install Git." && exit 1)
bash --version || (echo "Please Install Bash." && exit 1)
wget --version || (echo "Please Install Wget." && exit 1)

echo 
echo
echo
echo "Allow you to install!"
echo
cd ~/
mkdir LanGongFile
cd  LanGongFile
touch .lanrc
echo -n "made by LanGongINC, Install at " >> ~/.lanrc 
date -u >> ~/.lanrc 
echo
echo
exit 0
