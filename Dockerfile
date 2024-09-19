# Usa una imagen base de PHP con Apache
FROM php:8.0-apache

# Copia los archivos de la aplicación al directorio predeterminado de Apache
COPY . /var/www/html/

# Expone el puerto 80
EXPOSE 80

# Inicia el servidor de Apache
CMD ["apache2-foreground"]

