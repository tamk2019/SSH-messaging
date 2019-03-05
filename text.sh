#!/bin/bash


IP_ADDRESS=89.106.37.88
USER_NAME=pi
PASSWORD=
MYPASS=Tamk1234
USERNAME=????


if [ -x "$(sshpass -V)" ]; then
        echo "SSHPASS not found, installing..."    
        sudo apt install sshpass -y
fi



if [ ! -f sshpass -p ${MYPASS} ssh -t ${USER_NAME}@${IP_ADDRESS} "echo ${PASSWORD} | texti.txt" ]
then
	echo Creating text file...
	sshpass -p ${MYPASS} ssh -t ${USER_NAME}@${IP_ADDRESS} "echo ${PASSWORD} | touch texti.txt"
fi
 

function add_text() {
echo write:.
read TEXT
sshpass -p ${MYPASS} ssh -t ${USER_NAME}@${IP_ADDRESS} "echo ${PASSWORD} | echo "[$USERNAME]: $TEXT " >> texti.txt"
echo $TEXT, appended.
shpass -p ${MYPASS} ssh -t ${USER_NAME}@${IP_ADDRESS} "echo ${PASSWORD} | tail texti.txt"
}

keypress=''

while [ "$keypress" = "" ]; do

	sshpass -p ${MYPASS} ssh -t ${USER_NAME}@${IP_ADDRESS} "echo ${PASSWORD} | tail texti.txt"
	sleep 1
	add_text
		

done	


echo heihei








