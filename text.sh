#!/bin/bash


if [ ! -f texti.txt ]
then
	echo tiedostoa ei ole: luodaan.
	touch texti.txt
fi
 
echo what text you want to append.
read TEXT
echo "$TEXT" >> texti.txt
echo $TEXT, appended.

tail texti.txt

function add_text() {
echo what text you want to append.
read TEXT
echo "$TEXT" >> texti.txt
echo $TEXT, appended.

}

echo "do you want to add text? (y/n)"
read VAL

if [ $VAL = "y" ];then 
	add_text
fi

if [ $VAL = "n" ];then
	exit 0
fi

echo hei








