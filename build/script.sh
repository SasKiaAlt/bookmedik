#!/bin/bash

#Mariadb
until mysql -h"$DB_HOST" -u"$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" -e "SELECT 1;" &>/dev/null; do
echo "Esperando a MariaDB..."
sleep 5
done

#Importar base de datos

mysql -h"$DB_HOST" -u"$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" < /var/www/html/schema.sql

#Arrancar apache
apache2-foreground


