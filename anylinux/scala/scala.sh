set -e
set -x

version=2.11.7

mkdir -p /opt/bin
cd /opt

wget http://downloads.typesafe.com/scala/$version/scala-$version.tgz
tar xzf scala-$version.tgz
rm scala-$version.tgz

ln -s /opt/scala-$version /opt/scala
ln -s /opt/scala/bin/scala /opt/bin/scala
ln -s /opt/scala/bin/scalac /opt/bin/scalac
ln -s /opt/scala/bin/scalap /opt/bin/scalap
