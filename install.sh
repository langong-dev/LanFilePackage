#!/bin/bash

git --version|| (echo "Please Install Git." && exit 1)
g++ --version|| (echo "Please Install GCC/G++." && exit 1)
bash --version || (echo "Please Install Bash." && exit 1)
wget --version || (echo "Please Install Wget." && exit 1)

echo 
echo
echo
echo "Allow you to install!"
g++ main.cpp -o LanGong
echo
cd ~/
mkdir LanGongFile
cd  LanGongFile
touch .lanrc
echo "Made by LanGongINC," > ~/.config/LanFilePackage.log
echo -n "LanFilePackage is install at " >> ~/.config/LanFilePackage.log
date -u >> ~/.config/LanFilePackage.log 
echo
echo
exit 0
