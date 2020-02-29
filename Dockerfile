FROM klakegg/saxon:9.9.1-6-base AS saxon


FROM openjdk:8u212-jre-alpine3.9

ENV JAVA_OPTS=-Xmx3900m \
    SAXON_HOME=/usr/share/java/saxon

ADD files /

RUN sh install.sh

COPY --from=saxon /he /
