
#!/bin/bash
# Colors
purple=$'\033[1;34m'
reset=$'\033[0;39m'
red=$'\033[0;31m'
green=$'\033[0;32m'
echo "hoşgeldiniz"
# Commands
read -n1 -p "${purple}pop başlamak istermisiniz ?[${green}y${purple}/${red}N${purple}]${reset} " input
echo ""
if [ -n "$input" ] && [ "$input" = "y" ]; then
	cd ./sorular
	S=$(ls -l | wc -l)-1
	tmp=SAYI
	SAYI=$((RANDOM%S))
	if [ -n "$SAYI" ] && [ "$SAYI" != "$tmp" ]; then
		echo oldu
	fi
	cat $SAYI.c
fi
