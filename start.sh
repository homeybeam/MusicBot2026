#!/bin/sh
# Dummy HTTP listener for Cloud Run health checks
while true; do echo -e "HTTP/1.1 200 OK\r\n" | nc -l -p 8080; done &
# Start the bot
java -Xmx512m -jar app.jar
