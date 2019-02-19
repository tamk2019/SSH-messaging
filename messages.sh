#!/bin/sh
SSH_IP=${SSH_CONNECTION%% *}
touch messages.txt
cat -n messages.txt
echo Write a message:
read message 
echo $SSH_IP: $message >> messages.txt
