#!/bin/bash
if (($# == 1))
then
	exit
elif (($# == 2));then
	echo "$@"
elif (($# ==3));then
	x=1
	while (($x<4));do
		echo "$@"
		x=$[x+1]
	done
else
	echo "Za duzo argumentow"
fi
