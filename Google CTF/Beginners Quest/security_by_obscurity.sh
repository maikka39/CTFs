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
wget "https://storage.googleapis.com/gctf-2018-attachments/2cdc6654fb2f8158cd976d8ffac28218b15d052b5c2853232e4c1bafcb632383" -qO sbo.zip
# Unzip it
unzip -q sbo.zip

while [ 1 ]
do
  # Get the compressed file name by sorting on date and then getting the newest (last file form ls)
  f="$(ls -t|tail -n 1)"
  # Unpack the compressed file, if error, break
  7z -aoa -bso0 -bd e -ptest $f || break
  # Remove the original file
  rm $f
done

password="$(fcrackzip -v -l 4-8 -u password.x | grep '==' | awk '{print $5}')"
7z -aoa -bso0 -bd e -p"$password" password.x
cat password.txt


# Clean up
cd ..
rm -r tmp
