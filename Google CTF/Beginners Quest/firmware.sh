#!/bin/bash

# Check whether we are root so we mount a file
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
wget "https://storage.googleapis.com/gctf-2018-attachments/9522120f36028c8ab86a37394903b100ce90b81830cee9357113c54fd3fc84bf" -qO firmware.zip
# Unzip it
unzip -q firmware.zip
# Gunzip the file inside it
gunzip -q challenge.ext4.gz

# Make a mount location
mkdir mnt
# Mount the filesystem file
sudo mount challenge.ext4 mnt

# Copy the suspicious file
cp mnt/.mediapc_backdoor_password.gz mbpass.gz
# Gunzip it
gunzip -q mbpass.gz
# Print the contents
cat mbpass

# Unmount the filesystem
sudo umount mnt

# Clean up
cd ..
rm -r tmp

