#!/bin/bash
y=$[RANDOM%21]
for ((i=0;i<$y;i++)) ; do
	. fun.sh
	policz
done
