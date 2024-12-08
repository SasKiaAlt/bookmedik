#Imagen Oficial de PHP con apache
FROM php:8.3-apache

#Extensiones
RUN apt-get update && apt-get install -y mariadb-client libmariadb-dev && docker-php-ext-install mysqli

#Copiar 
COPY . /var/www/html

#Permisos
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html

# Copiar script
COPY script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh

#Ejecutar al arrancar contenedor
CMD ["bash", "/usr/local/bin/script.sh"]

