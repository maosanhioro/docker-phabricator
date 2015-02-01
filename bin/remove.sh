#!/bin/sh

# コンテナ全部削除
docker rm -f `docker ps -a -q`

# イメージ全部削除
#docker rmi -f `docker images -q`
docker rmi $(docker images | awk '/^<none>/ { print $3 }')
