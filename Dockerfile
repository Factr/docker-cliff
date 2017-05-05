FROM tomcat:8-jre8-alpine
MAINTAINER Marmaduke Woodman <mmwoodman@gmail.com>

ENV CLIFF_VERSION 2.3.0

ADD https://github.com/c4fcm/CLIFF/releases/download/v$CLIFF_VERSION/cliff-$CLIFF_VERSION.war $CATALINA_HOME/webapps/cliff-$CLIFF_VERSION.war

RUN mkdir /etc/cliff2

ADD IndexDirectory /etc/cliff2/IndexDirectory

