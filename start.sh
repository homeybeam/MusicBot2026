#!/bin/sh
while true; do
  echo -e "HTTP/1.1 200 OK\r\nContent-Length: 2\r\n\r\nOK" | nc -l 8080
done &
java -Xmx512m -jar app.jar
