#!/bin/bash

/usr/bin/mysqladmin -u root password THJZf527z3WS2vEt

mkdir -p /usr/share/phabricator/phabricator/conf/local
touch /usr/share/phabricator/phabricator/conf/local/local.json

cd /usr/share/phabricator/phabricator && ./bin/config set mysql.pass THJZf527z3WS2vEt
cd /usr/share/phabricator/phabricator && ./bin/storage upgrade --force
cd /usr/share/phabricator/phabricator && ./bin/phd restart
