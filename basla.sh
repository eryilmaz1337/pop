#!/bin/bash
# Colors

purple=$'\033[1;34m'
reset=$'\033[0;39m'
red=$'\033[0;31m'
green=$'\033[0;32m'
# variable
dogru=0 # yarım kalda
yanlis=0 # yarım kalda
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
	SORUSAYISI=$(ls -l | wc -l)-1
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
	for((i = 0; i <= 5 ; i++)) do
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
# güncelleme modülü ekle
# created by eryilmaz, rtosun, ademirci
