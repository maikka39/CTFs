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


# Get the ZIP from the Google CTF website
wget "https://storage.googleapis.com/gctf-2018-attachments/4e69382f661878c7da8f8b6b8bf73a20acd6f04ec253020100dfedbd5083bb39" -qO floppy.zip
# Unzip it
unzip -q floppy.zip

# Use binwalk to extract the files from the binary
binwalk -q -e foo.ico
# Use awk to get the flag
awk '/CTF/{print $1}' _foo.ico.extracted/driver.txt

# Clean up
cd ..
rm -r tmp
