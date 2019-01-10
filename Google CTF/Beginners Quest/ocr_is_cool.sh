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

# Go to the tmp folder we just created
cd tmp/

# Get the zip from the Google CTF website
wget "https://storage.googleapis.com/gctf-2018-attachments/7ad5a7d71a7ac5f5056bb95dd326603e77a38f25a76a1fb7f7e6461e7d27b6a3" -qO ocr.zip
# Unzip it
unzip -q ocr.zip

# Make the image bigger to its easier for the image to text converter
convert OCR_is_cool.png -scale 200% -density 300 OCR_is_cool.png
# Convert the image to text using the program tesseract and export it to ocr.txt
tesseract OCR_is_cool.png ocr
#
cat ocr.txt | awk -F'[{}]' '{print $2}' | tr -d '\n' > flag.txt

# Export python code to convert the text
echo '
translated = ""
key = -19

with open("flag.txt") as f:
  for line in f:
    for symbol in line:
          if symbol.isalpha():
              num = ord(symbol)
              num += key

              if symbol.isupper():
                  if num > ord("Z"):
                      num -= 26
                  elif num < ord("A"):
                      num += 26

              elif symbol.islower():
                  if num > ord("z"):
                      num -= 26
                  elif num < ord("a"):
                      num += 26

              translated += chr(num)
          else:
              translated += symbol

print("CTF{" + translated + "}")
' > ocr_decrypt.py

# Execute the python program
python3.6 ocr_decrypt.py

# Clean up
cd ..
rm -r tmp
