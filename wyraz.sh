#!/bin/bash
read a
if [ ${#a} -le 2 ];then
	echo "za krotki wyraz"
elif [ ${#a} -gt 2 ] && [ ${#a} -le 4 ];then
	echo "to krotki wyraz"
else
	echo "to dlugi wyraz"
fi
