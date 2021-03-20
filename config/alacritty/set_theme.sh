#!/bin/sh

# TODO make a version of this that reads a comment and chops off the colors
# section of alacritty.yml and adds the chosen one back on

if [ -f $1 ]; then
	cp $(dirname $0)/alacritty.yml.withoutcolors $(dirname $0)/alacritty.yml
	cat $1 >> alacritty.yml
else
	echo "file does not exist"
fi
