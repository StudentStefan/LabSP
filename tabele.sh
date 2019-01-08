#!/bin/bash
for ((i=0;i<8;i++));do
	tab[$i]=$[RANDOM%16]
	tab2[$i]=$[RANDOM%(30-41)+30]
done
echo "${tab[*]}"
echo "${tab2[*]}"
ile=1
for ((i=0;i<8;i++));do
	ile=$(($ile*tab[$i]))
done
if (($ile != 0 )) ;then
	for ((i=0;i<8;i++));do
		tab3[$i]=$(( tab2[$i] / tab[$i] ))
	done
else
	for ((i=0;i<8;i++));do
		tab3[$i]=$(( tab[$i]+tab2[$i] ))
	done
fi
echo "${tab3[*]}"
