#!/bin/bash

gettag(){
  curl https://api.github.com/repos/langong-dev/LanFilePackage/releases/latest > val
  cat val | jq '.tag_name' > tag
  cat val | jq '.target_commitish' > mas
  read tag < tag
  read mas < mas
  rm -f tag
  rm -f mas
  rm -f val
  tag=${tag//\"/}
  mas=${mas//\"/}
}


tag="NetWork Error"
mas=$tag

echo " Getting Info..."
echo
gettag

echo
echo Thanks for use LanGong-LanFilePackage.
echo
echo ----------
echo
echo "Name:    LanFilePackage"
echo "Version: $tag"
echo "Full:    LanFilePackage@$tag"
echo "Author:  LanGongDEV"
echo "Branch:  $mas"
echo "License: MIT-License"
echo "GitRepo: github.com:langong-dev/LanFilePackage.git"
echo "GitSSH:  git@github.com:langong-dev/LanFilePackage.git"
echo
echo ----------
echo 
echo "Made by LanGong 2020"
echo "Copyright (c) 2020 LanGong"
echo
