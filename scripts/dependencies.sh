#!/bin/bash

apt-get update -y
apt-get install -y software-properties-common apt-utils
add-apt-repository -y ppa:ondrej/php
apt-get update -y
apt-get install -y php8.1-cli php8.1-fpm php8.1-opcache
apt-get install -y php8.1-ctype php8.1-curl php8.1-dom php8.1-gd php8.1-iconv php8.1-mbstring php8.1-posix php8.1-fileinfo php8.1-imagick php8.1-intl php8.1-gmp php8.1-bcmath php8.1-zip php8.1-mysql php8.1-sqlite3 php8.1-pgsql
apt-get install -y nginx
apt-get install -y wget unzip supervisor