#!/bin/bash
for ((i=0;$i<10;i++));do
	read a
	tabela[i]=$a
done
for ((i=9;$i>=0;i--));do
	echo ${tabela[i]}
done
