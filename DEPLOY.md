# DEPLOY

## Build

```bash
docker build . -t php-class-diagram
```

## Tagging

```bash
docker tag php-class-diagram smeghead7/php-class-diagram:latest
docker tag php-class-diagram smeghead7/php-class-diagram:v0.0.4
```

## Push

```bash
docker push smeghead7/php-class-diagram:latest
docker push smeghead7/php-class-diagram:v0.0.4
```

