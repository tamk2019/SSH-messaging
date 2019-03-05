#!/bin/bash

SERVER_IP=192.168.1.104
USERNAME=CHANGE_THIS
PASSWORD=password
MSG_FILE=/home/CHANGE_THIS/messages.txt

function send_message () {
    # Connect to server
    echo "Enter message to send: "
    read MSG
    echo "Connecting to server ${SERVER_IP} and sending message"
    sshpass -p ${PASSWORD} ssh -t ${USERNAME}@${SERVER_IP} "echo ${MSG} >> ${MSG_FILE}"
    echo "Message sent"
}

function read_messages () {
    # Connect to server
    echo "Reading messages from ${SERVER_IP}"
    echo "================"
    sshpass -p ${PASSWORD} ssh -t ${USERNAME}@${SERVER_IP} "cat ${MSG_FILE}"
    echo "================"
    echo "End of messages."
}

function clear_messages () {
    # Connect to server
    echo "Clearing messages from server ${SERVER_IP}"
    sshpass -p ${PASSWORD} ssh -t ${USERNAME}@${SERVER_IP} "echo '' > ${MSG_FILE}"
    echo "Messages cleared."
}

while true
do
echo ""
PS3='Please enter your choice: '
OPTIONS=("Send message" "Read" "Clear" "Quit")
select OPT in "${OPTIONS[@]}"
do
    case ${OPT} in
        "Send message")
            send_message
            break
            ;;
        "Read")
            read_messages
            break
            ;;
        "Clear")
            clear_messages
            break
            ;;
        "Quit")
            echo "Exiting script"
            exit 0
            ;;
        *) echo "Invalid option ${REPLY}, try again";;
    esac
done
done
