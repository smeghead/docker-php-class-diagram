FROM plantuml/plantuml

RUN apt-get update && apt-get install -y \
    software-properties-common \
    ca-certificates \
    wget \
    gnupg \
    fonts-noto-cjk \
    git \
    zip \
    && add-apt-repository ppa:ondrej/php \
    && apt-get update && apt-get install -y \
    php8.2-cli \
    php8.2-mbstring \
    php8.2-xml \
    php8.2-curl \
    && rm -rf /var/lib/apt/lists/*

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN composer global require smeghead/php-class-diagram

RUN echo '#!/bin/sh' > /usr/bin/plantuml && echo 'java -jar /opt/plantuml.jar "$@"' >> /usr/bin/plantuml && chmod +x /usr/bin/plantuml

ENV PATH=$PATH:/root/.config/composer/vendor/bin:/root/.composer/vendor/bin

WORKDIR /usr/src

ENTRYPOINT []
