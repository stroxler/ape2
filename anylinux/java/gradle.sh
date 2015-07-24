#!/bin/bash

set -e
set -x

INSTALL_LOCATION=/usr/local
GRADLE_ZIP=gradle-2.4-all.zip
RESULT_FOLDER=gradle-2.4

cd $INSTALL_LOCATION

wget https://services.gradle.org/distributions/$GRADLE_ZIP
unzip $GRADLE_ZIP
ln -s $INSTALL_LOCATION/$RESULT_FOLDER/bin/gradle bin/gradle
rm $GRADLE_ZIP

echo "export GRADLE_HOME=$INSTALL_LOCATION/$RESULT_FOLDER" >> /etc/profile.d/gradle.sh

# also add thrift
sh /root/centos6_thrift_install.sh
