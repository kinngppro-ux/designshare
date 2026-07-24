FROM php:8.2-apache

# Activer le module rewrite d'Apache (pour les réécritures d'URL / routage)
RUN a2enmod rewrite

# Copier les fichiers du projet
COPY . /var/www/html/

# Donner les bonnes permissions à Apache sur tous les fichiers
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

EXPOSE 80
