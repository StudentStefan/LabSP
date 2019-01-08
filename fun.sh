#!/bin/bash
function wypisz()
{
	x=5
	while((x<=10));do
		echo "$x"
		x=$[x+1]
	done
}
function policz()
{
	x=$[RANDOM%(5-10)+5]
	function silnia(){
		if [ $1 == 0 ] ;then
			echo 1
		else
			echo $[$1 * `silnia $[$1-1]`]
		fi
	}
	silnia $x
}
