#!/bin/bash

set -x

#Accedemos al directorio temporal /tmp para el repositorio

cd /tmp

#Eliminamos el directorio de instalaciones previas

rm -rf iaw-practica-lamp

#Clonamos el repositorio con la pagina web

git clone https://github.com/josejuansanchez/iaw-practica-lamp.git

#Importamos la base de datos

mysql -u root < /tmp/iaw-practica-lamp/db/database.sql

#Movemos el código fuente de la aplicación 

mv /tmp/iaw-practica-lamp/src/* /var/www/html

#Modificamos el propieario y el grupo de los archivos

chown www-data:www-data /var/www/html

rm -f /var/www/html/index.html