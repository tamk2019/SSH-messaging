#!/bin/sh
# asennetaan sshpass helpompaa ssh-kasittelya varten.
sudo apt-get install sshpass
# otetaan yhteys palvelimeen ja kutsutaan appia
sshpass -p 'Tamk1234' ssh pi@89.106.37.88 "$(cat  SSH-catchat.sh)"