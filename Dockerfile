# Use an official PHP + Apache base image
FROM php:8.1-apache

# Copy project files to the Apache document root
COPY . /var/www/html/

# Set correct permissions (optional)
RUN chown -R www-data:www-data /var/www/html

# Expose port 80
EXPOSE 80
