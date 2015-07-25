apt-get -y install redis-server
# redis boots by default. I don't like that behavior; shut it down
redis-cli shutdown
