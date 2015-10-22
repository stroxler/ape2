mkdir -p /opt/bin
cd /opt
wget https://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/0.13.9/sbt-launch.jar

cat > /opt/bin/sbt << \EOF
#!/bin/bash
SBT_OPTS="-Xms512M -Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"
java $SBT_OPTS -jar /opt/sbt-launch.jar "$@"
EOF
chmod +x /opt/bin/sbt
