FROM alpine:3.6

MAINTAINER infiniting222@gmail.com

ENV FLUME_HOME=/flume/apache-flume-1.8.0-bin \
    FLUME_CONF=/flume/apache-flume-1.8.0-bin/conf \
    JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk \
    CLASSPATH=/flume/apache-flume-1.8.0-bin/lib/*


RUN apk update && \
    apk add openjdk8 && \
    mkdir -p /flume/apache-flume-1.8.0-bin

ADD apache-flume-1.8.0-bin /flume/apache-flume-1.8.0-bin

RUN ln -sf /flume/apache-flume-1.8.0-bin/bin/flume-ng /usr/bin/flume-ng

CMD ["flume-ng agent --conf $FLUME_CONF/ --conf-file $FLUME_CONF/flume.conf --name a1 -Dflume.root.logger=INFO,console"]