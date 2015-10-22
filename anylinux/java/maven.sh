set -e
set -x

version=3.0.5

mkdir -p /opt/bin
cd /opt

wget http://mirror.cc.columbia.edu/pub/software/apache/maven/maven-3/$version/binaries/apache-maven-$version-bin.tar.gz
tar -xzf apache-maven-$version-bin.tar.gz
rm -rf apache-maven-$version-bin.tar.gz 
ln -s apache-maven-$version maven
ln -s /opt/maven/bin/mvn /opt/bin/mvn
echo 'export M2_HOME=/opt/maven' >> /etc/profile.d/maven.sh
