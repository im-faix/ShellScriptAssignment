#!/bin/bash

# This is the task


while [ -z $main ]
do
	read -p "Enter the directory name " main
	if [ -z $main ]
	then
		echo " Valid input " 
		exit 0
	else
		if [ -d $main ]
		then
			while [ -d $main ]
			do
				echo "Dir is already present with the name $main please changr "
				read main

				if [ -z $main ]
				then
					echo "Invalid input "
					exit 0
				fi
			done
				mkdir $main
				cd $main
		fi
		mkdir $main
		cd $main
	fi
	while [ -z $file ]
	do
		read -p "Enter the file name " file
		if [ -z $file ]
		then
			echo "Invalid input "
			exit 0
		else [ -f $file ]
		    if [ -f $file ]
		    then

			while [ -f $file ]
			do
				echo "File is Already preasent with $file name please give unique name"
				read file
				if [ -z $file ]
				then
					echo "Invalid input "
					exit 0
				fi
			done
			touch $file
			cd ..
		fi
		fi
	done


done




