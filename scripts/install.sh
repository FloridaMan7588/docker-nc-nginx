#!/bin/bash

index="/var/www/nextcloud/index.php"
if [[ -f $index ]];then
    exit 0
else
    mkdir -p /var/www/
    cd /var/www/
    wget https://download.nextcloud.com/server/releases/nextcloud-${VERSION}.zip
    unzip nextcloud-${VERSION}.zip
    chown -R www-data:www-data /var/www/nextcloud
    rm -rf nextcloud-${VERSION}.zip
fi