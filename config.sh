#!/bin/bash



rac(){
	name=$1
	#newfile="LanGongFile/"$name
	# cd ~/
	# cd $newfile
	touch in.index
	ls
	echo "Do you know how to enter in "$name" ? (menthod 方法 , this is a bash code ,这个是一个bash命令)"
	sleep 1
	read entrance
	echo "OK, Please wait!"
	echo "fun(){" >> in.index
	echo $entrance >> in.index
	echo " } " >> in.index
	echo
}

che(){
	name=$1
	file="~/LanGongFile/"$name"/in.index"

	# if [[ source in.index ]];
	# then
	# 	echo " [ OK ] Find File"
	# else
	# 	echo " Configing."
	# 	rac
	# fi
	cd ~/
	cd "LanGongFile/"
	cd $name
	test -f in.index || rac $name
}