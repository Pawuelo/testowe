#!/bin/bash
arg=$#

if [ "$#" = 2 ]; then
	echo "Skrypt uruchomiono z liczb¹ argumentów: $arg"
	echo "Podano 2 argumenty"
	echo "Argument 1: $1"
	echo "Argument 2: $2"
	if [ -d "$1" ]; then
		echo "Argument 1 jest folderem"
		cd $1
		mkdir $2
		cd $2
		mkdir materialy
		mkdir src
		mkdir dokumentacja
		cd $1/$2/materialy
		mkdir oficjalne
	        mkdir robocze
	        cd $1/$2/dokumentacja
	        mkdir uzyttkownika
	        mkdir administraotra
	else
		echo "Argument 1 nie jest folderem"
	fi
else
	echo "Proszê podaæ 2 argumenty"
fi