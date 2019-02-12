#!/bin/sh
touch messages.txt
cat -n messages.txt
echo Write a message:
read message
echo $message >> messages.txt
