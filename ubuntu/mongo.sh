apt-get update
apt-get -y install mongodb-dev
apt-get -y install mongodb-clients
apt-get -y install mongodb-server

mongod -f /etc/mongodb.conf
