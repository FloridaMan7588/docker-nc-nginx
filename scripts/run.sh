#!/bin/bash

bash /scripts/environment.sh > /dev/null
bash /scripts/install.sh > /dev/null

chown -R www-data:www-data /var/www/
/usr/bin/supervisord -n -c /etc/supervisord.conf