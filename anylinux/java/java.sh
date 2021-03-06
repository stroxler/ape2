#!/bin/bash

set -e
set -x

mkdir -p /opt/bin
cd /opt

NAME=jdk-8u45-linux-x64
JAVANAME=jdk1.8.0_45
wget --no-cookies --no-check-certificate --header \
  "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
  "http://download.oracle.com/otn-pub/java/jdk/8u45-b14/$NAME.tar.gz"

tar xzf $NAME.tar.gz
chown -R root: $JAVANAME
ln -s /opt/$JAVANAME/bin/java /opt/bin/java
ln -s /opt/$JAVANAME/bin/javac /opt/bin/javac
ln -s /opt/$JAVANAME/bin/jar /opt/bin/jar
rm $NAME.tar.gz

echo "export JAVA_HOME=/opt/$JAVANAME/" >> /etc/profile.d/java.sh
