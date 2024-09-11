FROM php:8.2-fpm

# Set working directory
WORKDIR /var/www

# Install dependencies
RUN apt-get update && apt-get install -y \
  build-essential \
  libpng-dev \
  libjpeg62-turbo-dev \
  libfreetype6-dev \
  libwebp-dev \
  locales \
  zip \
  jpegoptim optipng pngquant gifsicle \
  vim \
  unzip \
  git \
  curl \
  libicu-dev \
  libzip-dev \
  libxml2-dev \
  libonig-dev \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring zip gettext intl exif

# Configure and install gd extension
RUN docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp \
  && docker-php-ext-install -j$(nproc) gd

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Add user for application
RUN groupadd -g 1000 www && useradd -u 1000 -ms /bin/bash -g www www

# Copy application files
COPY --chown=www:www . /var/www

# Install Composer dependencies
RUN composer install --no-dev --optimize-autoloader

# Set file permissions
RUN chown -R www:www /var/www \
  && chmod -R 755 /var/www/storage /var/www/bootstrap/cache

# Change user to www
USER www

# Expose port 9000 and start php-fpm
EXPOSE 9000

CMD ["php-fpm"]
