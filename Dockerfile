FROM eclipse-temurin:17-jre-alpine

RUN apk add --no-cache netcat-openbsd

WORKDIR /app

COPY target/JMusicBot-0.4.3.7-All.jar app.jar
COPY start.sh start.sh
RUN chmod +x start.sh

ENTRYPOINT ["./start.sh"]
