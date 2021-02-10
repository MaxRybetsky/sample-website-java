#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i ~/.ssh/id_rsa \
    target/sweater-1.0-SNAPSHOT.jar \
    max@192.168.1.65:/home/max/

echo 'Restart server...'

ssh -i ~/.ssh/id_rsa max@192.168.1.65 << EOF
pgrep java | xargs kill -9
nohup java -jar sweater-1.0-SNAPSHOT.jar > log.txt &
EOF

echo 'Bye'
sleep 100s