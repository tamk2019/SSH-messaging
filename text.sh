#!/bin/bash
# This is a comment!
# Tällä shell skriptillä luodaan etälaitteelle palvelinympäristö

if [ ! -f texty.txt ]
then 
	echo The file texti.txt does not exist.
fi

hostname -i

echo Please input the text you want to append:
read TEXT

echo "$TEXT" >> texty.txt
echo $TEXT, appended.

tail texty.txt

function add_text() {
echo Please input the text you want to append:
read TEXT

echo "$TEXT" >> texty.txt
echo $TEXT, appended.
}


echo "Do you want to append more text? (y/n)"
read VAL

while [ "$VAL" != "n" ]
do
	add_text
	echo "Do you want to append more text? (y/n)"
	read VAL
done

exit 0

