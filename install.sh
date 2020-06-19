#!/bin/bash

. ./color.sh
git --version|| (echo "Please Install Git." && exit 1)
g++ --version|| (echo "Please Install GCC/G++." && exit 1)
bash --version || (echo "Please Install Bash." && exit 1)
wget --version || (echo "Please Install Wget." && exit 1)

echo 
echo
echo
blue " >> Allow you to install!"
blue " >> Compile main program..."
g++ main.cpp -o LanGong
echo
cd ~/
blue " >> Making DIR..."
mkdir LanGongFile
cd  LanGongFile
blue " >> Creating log..."
touch .lanrc
echo "fun(){
  echo
  echo ' >> Package Not Found'
  echo
  echo -n 'Package Not Found' >> ~/.config/LanFilePackage.log
  date -u >> ~/.config/LanFilePackage.log
}" > "in.index"
echo "Made by LanGongINC," > ~/.config/LanFilePackage.log
echo -n "LanFilePackage is install at " >> ~/.config/LanFilePackage.log
date -u >> ~/.config/LanFilePackage.log 

blue " >> Creat alias..."
echo "cd ~/LanFilePackage && ./LanGong \$1 \$2 \$3 \$4 \$5" > ~/.lfpa
als="alias lfp=\"bash ~/.lfpa\""
echo $als >> ~/.zshrc
echo $als >> ~/.bashrc
echo $als >> ~/.fishrc

echo
blue " >> Install seccussfully."
exit 0
