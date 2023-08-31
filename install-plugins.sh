#!/usr/bin/env bash

wp plugin install debug-bar --activate --allow-root
wp plugin install show-current-template --activate --allow-root
wp plugin install query-monitor --activate --allow-root

chown -R www-data:www-data /var/www/html/wp-content
find /var/www/html/wp-content -type d -exec chmod 755 {} \;
find /var/www/html/wp-content -type f -exec chmod 644 {} \;