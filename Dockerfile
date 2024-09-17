# Usar la imagen base de Ubuntu
FROM ubuntu:22.04

# Actualizar paquetes e instalar Apache y PHP en una sola capa
RUN apt-get update && \
    apt-get install -y apache2 php libapache2-mod-php && \
    rm -rf /var/lib/apt/lists/*

# Copiar los archivos de la aplicación al directorio web de Apache
COPY . /var/www/html/

# Exponer el puerto 80
EXPOSE 80

# Iniciar Apache en modo foreground
CMD ["apachectl", "-D", "FOREGROUND"]
