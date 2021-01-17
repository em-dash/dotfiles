#!/bin/sh

if [ -f $1 ]; then
	cp $(dirname $0)/alacritty.yml.withoutcolors $(dirname $0)/alacritty.yml
	cat $1 >> alacritty.yml
else
	echo "file does not exist"
fi
