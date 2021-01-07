#!/bin/bash
ARCHIVE_PATH=/home/s96462/archiwum
DATE=`date +%y-%m-%d-%H-%M`
arg=$#
if [ "$#" = 1 ]; then
	if [ -d "$1" ]; then
		mv "$1" "$1-$DATE"
		cp -r "$1-$DATE" "$ARCHIVE_PATH" 
		mv "$1-$DATE" "$1"
	fi
fi