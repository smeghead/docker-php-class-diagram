FROM php:7.4-cli

RUN apt-get update && apt-get install -y plantuml --no-install-recommends && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN composer global require smeghead/php-class-diagram
ENV PATH $PATH:/root/.config/composer/vendor/bin:/root/.composer/vendor/bin
