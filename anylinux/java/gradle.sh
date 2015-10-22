#!/bin/bash

set -e
set -x

version=2.4

mkdir -p /opt/bin
cd /opt

wget https://services.gradle.org/distributions/gradle-$version-all.zip
unzip gradle-$version-all.zip
rm gradle-$version-all.zip
ln -s /opt/gradle-$version/bin/gradle /opt/bin/gradle

echo "export GRADLE_HOME=/opt/$RESULT_FOLDER" >> /etc/profile.d/gradle.sh
