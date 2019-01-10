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
wget "https://storage.googleapis.com/gctf-2018-attachments/f7e577b61f5b98aa3c0e453e83c60729f6ce3ef15c59fc76d64490377f5a0b5b" -qO gatekeeper.zip
# Unzip it
unzip -q gatekeeper.zip

# Get the ASCII strings from the binary
# Sort it while getting the unique strings
# Then get the last line
# And reverse it
flag="$(strings gatekeeper | sort -u | tail -n 1 | rev)"

echo "CTF{$flag}"


# Clean up
cd ..
rm -r tmp
