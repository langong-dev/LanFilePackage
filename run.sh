#!/bin/bash

. ./config.sh
che $1

name=$1
filename="LanGongFile/"$name
cd ~/
cd $filename

filename="in.index"

. ./in.index

fun