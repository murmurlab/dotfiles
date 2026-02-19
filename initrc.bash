#!/bin/bash

HOME_DIR=`eval echo ~`

prefix="$HOME_DIR/.config/dotfiles"

shellrc_dir="$prefix"/'./shellrc'

: '
for rcfile in "$1/rcfiles/*"; do
	source $rcfile
done
'

add() {
	! ls ~/"`basename $shellrc`" &> /dev/null && {
		ln -s $shellrc ~/`basename $shellrc`;
	}
}

replace() {
	ls ~/"`basename $shellrc`" &> /dev/null && {
		rm -f ~/"`basename $shellrc`"; ln -s $shellrc ~/`basename $shellrc`;
	}
}

shopt -s dotglob

shellrc=$shellrc_dir/*
# for shellrc in "$shellrc_dir/"*; do
# 	ls -l ~/"`basename $shellrc`"
	
# 	# echo $shellrc `basename $shellrc`
# done

source "$shellrc_dir"/".bash_profile"
