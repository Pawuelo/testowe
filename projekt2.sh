#!/bin/bash
arg=$#
PROJECT_TEMPLATE=/home/s96462/szablon_projektu.txt
echo "Skrypt uruchomiono z liczb¹ argumentów: $arg"
if [ "$#" = 2 ]; then
	echo "Podano 2 argumenty"
	echo "Argument 1: $1"
	echo "Argument 2: $2"
	if [ -d "$1" ]; then
		echo "Argument 1 jest folderem"
		input=$PROJECT_TEMPLATE
		cd $1
		mkdir $2
		
		while IFS= read -r line		
		do
			echo "$line"
			mkdir $1/$2/$line
		done <"$input"	
	else
		echo "Argument 1 nie jest folderem"
	fi
else
	echo "Proszê podaæ 2 argumenty"
fi