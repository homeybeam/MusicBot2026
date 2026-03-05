FROM eclipse-temurin:25-jre

LABEL maintainer="Elijah"

ARG BUILD_DATE
ARG VERSION

LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.name="jmusicbot25"
LABEL org.label-schema.description="Java based Discord music bot"
LABEL org.label-schema.version=$VERSION
LABEL org.label-schema.docker.cmd="docker run -v ./config:/jmb/config -d jmusicbot25"

# Install tini (Debian-based now, so use apt)
RUN apt-get update && \
    apt-get install -y --no-install-recommends tini && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /jmb/config

COPY JMusicBot-Snapshot-All.jar /jmb/JMusicBot.jar
COPY docker-entrypoint.sh /jmb/docker-entrypoint.sh
RUN chmod 755 /jmb/docker-entrypoint.sh

VOLUME /jmb/config

WORKDIR /jmb/config

ENTRYPOINT ["/usr/bin/tini", "--", "/jmb/docker-entrypoint.sh"]