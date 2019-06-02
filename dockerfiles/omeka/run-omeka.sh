#!/bin/bash

case "$1" in
	startup)
		actualsize=$(wc -c <"/var/www/html/application/config/config.ini")
		if [ 10 -ge $actualsize ]; then
 			cp /var/www/html/application/config/config.backup /var/www/html/application/config/config.ini
 		fi
 		if [ ! -e /var/www/html/plugins/Coins ]; then
 			cp -rpT /var/www/html/plugins.backup /var/www/html/plugins
 		fi 
		apache2-foreground
		;;
	*)
		. ${I3C_HOME}/run.sh
		;;
esac
