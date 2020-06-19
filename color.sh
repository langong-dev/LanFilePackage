#!/bin/bash

msg(){
  whiptail --title "$1" --msgbox "$2" 10 60
}

red(){
  echo -e "\033[31m$1\033[0m"
}

yellow(){
  echo -e "\033[33m$1\033[0m"
}

blue(){
  echo -e "\033[34m$1\033[0m"
}



