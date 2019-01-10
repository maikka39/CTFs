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

# Go the the directory
cd tmp/

# Get the zip from Google CTF
wget "https://storage.googleapis.com/gctf-2018-attachments/5a0fad5699f75dee39434cc26587411b948e0574a545ef4157e5bf4700e9d62a" -qO letter.zip
# Unzip it
unzip -q letter.zip
# Convert the pdf to text
pdftotext challenge.pdf -| grep CTF | awk '{print $3}'

# Remove created files
cd ..
rm -r tmp
