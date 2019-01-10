#!/bin/bash

# Check whether we are root so we can install stuff
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

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

# Get the dosbox source
wget "http://http.debian.net/debian/pool/main/d/dosbox/dosbox_0.74.orig.tar.gz"
# Untar it
tar xvf dosbox_0.74.orig.tar.gz
# Go to the untarred folder
cd dosbox-0.74
# Install the program
./autogen.sh
./configure --enable-debug=heavy
make

# Go back to the tmp folder
cd ..

echo ""
echo ""
echo "Once in DOSbox press 'alt+pause'"
echo "Then go back to the terminal"
echo "Then use Page Down"
echo "until you see the flag"
echo ""
echo "Press 'Enter' to continue..."
read

# Execute the old DOS file
./dosbox-0.74/src/dosbox _foo.ico.extracted/www.com


# Clean up
cd ..
rm -r tmp
