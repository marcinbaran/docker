# Use an official PHP runtime
FROM php:8.2-apache
# Enable Apache modules
RUN a2enmod rewrite


# Install any extensions you need
RUN apt-get update && apt-get install -y \
    zlib1g-dev \
    libzip-dev \
    unzip
RUN docker-php-ext-install mysqli pdo pdo_mysql zip
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer


# Set the working directory to /var/www/html
WORKDIR /var/www/html
# Copy the source code in /www into the container at /var/www/html
COPY ../www .