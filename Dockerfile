FROM plantuml/plantuml

RUN apt-get update && apt-get install -y php8.1-cli composer fonts-noto-cjk && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN composer global require smeghead/php-class-diagram
RUN echo '#!/bin/sh' > /usr/bin/plantuml && echo 'java -jar /opt/plantuml.jar "$@"' >> /usr/bin/plantuml && chmod +x /usr/bin/plantuml

ENV PATH $PATH:/root/.config/composer/vendor/bin:/root/.composer/vendor/bin

ENTRYPOINT []
