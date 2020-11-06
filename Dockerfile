FROM alpine:glibc
MAINTAINER Docker  <xccszu@hotmail.com>

#复制文件

RUN apk update \
 && apk --no-cache add openjdk11 \
 && rm -rf /var/cache/apk/*

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk
ENV JRE_HOME=${JAVA_HOME}/jre
ENV CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
ENV PATH=${JAVA_HOME}/bin:$PATH
