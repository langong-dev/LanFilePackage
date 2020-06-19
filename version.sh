#!/bin/bash

. ./color.sh

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

blue " Getting Info..."
echo
gettag

echo
blue "Thanks for use LanGong-LanFilePackage."
echo
echo ----------
echo
blue "Name:    LanFilePackage"
blue "Version: $tag"
blue "Full:    LanFilePackage@$tag"
blue "Author:  LanGong"
blue "Branch:  $mas"
blue "License: MIT-License"
blue "GitRepo: github.com:langong-dev/LanFilePackage.git"
blue "GitSSH:  git@github.com:langong-dev/LanFilePackage.git"
echo
echo ----------
echo 
blue "Made by LanGong 2020"
echo "Copyright (c) 2020 LanGong"
echo
