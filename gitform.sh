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
		else 
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
		touch $file
		cd ..
		fi
	done


done
pwd

while [ -z $dir ]
do
	read -p "Enter the directory " dir
	if [ -z $dir ]
	then
		echo "invalid input " 
		exit 0
	else 
		if [ -d $dir ]
		then
			while [ -d $dir ]
			do
				echo "Dir  is already present please change the name "
				read dir
				if [ -z $dir ]
				then
					echo "Invalid input "
					exit 0
				fi
			done
			mkdir $dir
			cd $dir

		fi
		mkdir $dir
		cd $dir
	fi
	for i in {1..2}
	do

		
			read -p "Enter the file name " i
			if [ -z $i ]
			then
				echo "invalid input "
				exit 0
			else
				if [ -f $i ]
				then
					while [ -f $i ]
					do
						echo "File is already present "
						read i
						if [ -z $i ]
						then
							echo "invaid input "
							exit 0
						fi
					done
					touch $i
				else
					touch $i
				fi
			fi
		done
done

cd ..
pwd

while [ -z $make ]
do
	read -p "Enter the directory " make
	if [ -z $make ]
	then
		echo "Invlaid input " 
		exit 0
	else
		if [ -d $make ]
		then
			while [ -d $make ]
			do
				echo " dir is exists please provide the unique name for it "
				read make
				if [ -z $make ]
				then
					echo "Invalid input "
					exit 0
				fi
			done
				mkdir $make
				cd $make
		fi
	mkdir $make
	cd $make
	fi
	for i in {1..3}
	do
		read -p "Enter the file name " i
		if [ -z $i ]
		then
			echo "Invalid Input "
			exit 0
		else
			if [ -f $i ]
			then
				while [ -f $i ]
				do
					echo "File already exists with the same name " 
					read i
					if [ -z $i ]
					then
						echo "Invalid input "
						exit 0
					fi
				done
			touch $i
			fi
		touch $i
		fi
	done
	cd ..
done



