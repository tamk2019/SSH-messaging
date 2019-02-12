#!/bin/sh

if [ ! -f texti.txt ]
then
	echo Texti.txt tiedostoa ei ole
	echo Luodaan texti.txt
	touch texti.txt
fi
echo "Mitä tekstiä haluat lisätä?"
read TEXT
echo $TEXT >> texti.txt
echo $TEXT lisätty

function add_text()
{
echo "Mitä tekstiä haluat lisätä?"
read TEXT
echo $TEXT >> texti.txt
echo $TEXT lisätty
}
while(1)
{
echo "Haluatko lisätä vielä tekstiä?(K/E)"
read OPTION
if [ $OPTION = K ];
then
	add_text()
fi
if [ $OPTION = E ];
then
	exit 0
fi
if [ ! $OPTION = K || $OPTION = E ]
then
	echo Virheellinen syöttö!
fi
}
