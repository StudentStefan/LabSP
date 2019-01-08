#!/bin/bash
function menu()
{
echo "Wybierz opcje"
opcje=(dodawanie odejmowanie mnozenie dzielenie wyjscie)
select x in ${opcje[*]}
do
	case $x in
		"dodawanie") read a b; dzialania $x $a $b ;;
		"odejmowanie") read a b; dzialania $x $a $b;;
		"mnozenie") read a b; dzialania $x $a $b ;;
		"dzielenie") read a b; dzialania $x $a $b;;
		"wyjscie") exit ;;
	esac
	break
done
}
function dzialania()
{ 
	if [[ "$1" == "dodawanie" ]];then
		echo "$2 + $3 = $(($2+$3))"
	elif [[ "$1" == "odejmowanie" ]];then
		echo "$2-$3=$(($2-$3))"
	elif [[ "$1"=="mnozenie" ]];then
		echo " $2 * $3 =$(($2*$3))"
	elif [[ "$1"=="dzielenie" ]];then 
		if (($3 !=0));then
			echo " $2 / $3 = $(($2/$3))"
		else
			echo "nie dziel przez 0 ...."
		fi
	fi

menu
}
menu
