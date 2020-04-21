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
echo "made by LanGongINC, Install in ~/LanGongFile/ ." >> .lanrc  
echo
echo
exit 0
