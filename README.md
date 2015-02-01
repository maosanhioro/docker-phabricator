# DockerでPhabricator

* Docker version 1.4.1

## 実施したHost環境
* OSX 10.10.1
* Boot2Docker-cli version: v1.4.1

## コンテナ内の環境
* CentOS 6.6
* Apache 2.2
* PHP 5.5
* MySQL 5.5

## 使い方

```
$ git clone https://github.com/maosanhioro/docker-phabricator.git
$ cd docker-phabricator
$ ./bin/build.sh
$ ./bin/rund.sh
```

* Imageだけで完結できてないので`docker run`からじゃなくて`git clone`からで。

## アクセス
### ブラウザからPhabricatorに

http://localhost:9000

### 稼働中コンテナに入る

```
$ ./bin/attach.sh
```
* execなので厳密にはattachじゃないけどイメージ優先ってことで

