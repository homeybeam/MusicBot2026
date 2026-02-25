FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

COPY target/JMusicBot-0.4.3.7-All.jar app.jar

ENTRYPOINT ["java", "-Xmx512m", "-jar", "app.jar"]
