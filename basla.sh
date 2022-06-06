#!/bin/bash
# Colors
purple=$'\033[1;34m'
reset=$'\033[0;39m'
red=$'\033[0;31m'
green=$'\033[0;32m'
echo "hoşgeldiniz"
# Commands
gcc sec.c -o sec
mv sec ./src
cd ./sorular
read -n1 -p "${purple}pop'a başlamak istermisiniz ?[${green}y${purple}/${red}N${purple}]${reset} " input
echo ""
if [ -n "$input" ] && [ "$input" = "y" ]; then
	for((i = 0; i <= 3 ; i++)) do
	SORULAR=$(ls)
	SORUSAYISI=$(ls -l | wc -l)-1
	RSAYI=$((RANDOM%SORUSAYISI))
	SECILENSORU=$(../src/sec $RSAYI $SORULAR)
	cat $SECILENSORU
	gcc $SECILENSORU -o cevap
	mv cevap ../src
	cev=$(../src/cevap)
	mv $SECILENSORU ../.trash
	read  -p "${purple}Cevap ne kardeşşş ?${reset} " input
	if [ "$input" ] && [ "$input" = "$cev" ]; then
		echo ${green}[OK]${reset}
	else
		echo ${red}[KO]${reset}
	fi
	done
fi
mv ../.trash/* ./
rm -rf a.out

# created by eryilmaz, rtosun, ademirci
