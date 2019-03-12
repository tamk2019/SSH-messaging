#!/bin/bash

if [ -z "$2" ] ; then
    echo "Anna oma nimesi ja kaverin nimi!"
    exit 1
fi

P1=/tmp/chatti${1}
P2=/tmp/chatti${2}

[ -p "$P1" ] || mkfifo $P1
[ -p "$P2" ] || mkfifo $P2

# Pipella kutsutaan cattia taustalla, samalla asetetaan paivamaara chattilogiin
(cat $P2 | sed "s/^/$(date +%H:%M:%S)> /" ) &
# ilmoitetaan kuka liittyi chattiin
(echo "$1 joined" ; cat) >> $P1

# tapetaan kaikki taustaprosessit poistuessa
trap 'kill -9 $(jobs -p)' EXIT