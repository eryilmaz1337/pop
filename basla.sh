#!/bin/bash
# Colors

purple=$'\033[1;34m'
reset=$'\033[0;39m'
red=$'\033[0;31m'
green=$'\033[0;32m'
# variable
dogru=0
yanlis=0
# function
function tmp()
{
	if [ -d .trash ];then
		rm -rf ./.trash/* ./sorular
		git clone https://github.com/erdem149/popup_leak.git sorular
		clear
		echo ${green}"Başlamaya hazır"${reset}
	else
		mkdir .trash
	fi

	if [ -d .tmp ];then
		echo ${green}"Başlamaya hazır"${reset}
	else
		mkdir .tmp
	fi
}

function kontrol()
{
	git pull
	if [ -d .trash ];then
		rm -rf .trash
	fi

	if [ -d .tmp ];then
		rm -rf .tmp
	fi
	if [ -d sorular ];then
		rm -rf sorular
	fi

	if [ -d sorular ];then
	cd ./sorular
	git pull
	clear
	echo ${green}sorular güncellenmiştir.
	cd ..
	else
	git clone https://github.com/erdem149/popup_leak.git sorular
	clear
	fi
}

function atama()
{
	SORULAR=$(ls)
	SORUSAYISI=$(ls -l | wc -l)
	RSAYI=$((RANDOM%SORUSAYISI))
	SECILENSORU=$(../.tmp/sec $RSAYI $SORULAR)
	cat $SECILENSORU
	gcc $SECILENSORU -o cevap
	mv cevap ../.tmp
	cev=$(../.tmp/cevap)
	mv $SECILENSORU ../.trash
	echo
}

function sor()
{
	mv ../source/yasin.txt ../.tmp/
	mv ../source/a.txt ../.tmp/
	for((i = 0; i <= 8 ; i++)) do
		atama
		read  -p "${purple}Çıktıyı yazınız : ${reset}[${green}$dogru${purple}/${red}$yanlis${purple}] :${reset}" input
		if [ "$input" ] && [ "$input" = "$cev" ]; then
			echo ${green}[OK]${reset}
				dogru=$(($dogru + 1))
		else
			echo
			read -p "${purple}Yanlış tekrar deneyiniz ${reset}[${green}$dogru${purple}/${red}$yanlis${purple}] :${reset}" input
			if [ "$input" ] && [ "$input" = "$cev" ]; then
				echo ${green}[OK]${reset}
				dogru=$(($dogru + 1))
			else
				echo ${red}[KO]${reset}
				yanlis=$(($yanlis + 1))
			fi
		fi
	done
	mv ../.trash/* ./
}

# Commands

kontrol
echo ${green}"[created by eryilmaz, rtosun, ademirci]"
echo ""
echo ${green}"Hoşgeldiniz"
read -p "${purple}pop'a başlamak istermisiniz ?[${green}y${purple}/${red}N${purple}]${reset}" input
echo ""
if [ -n "$input" ] && [ "$input" = "y" ]; then
	tmp
	gcc ./source/sec.c -o sec
	mv sec ./.tmp
	cd ./sorular
	sor
	rm -rf ../.trash
	rm -rf ../.tmp
fi
# created by eryilmaz, rtosun, ademirci
