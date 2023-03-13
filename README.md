# docker-php-class-diagram

A CLI tool that parses the PHP source directory and outputs PlantUML class diagram scripts.

ihttps://github.com/smeghead/php-class-diagram

## Build

```bash
$ docker build . -t php-class-diagram
```

## Run

```bash
$ docker run --rm \
        -v $(pwd):/usr/src \
        -w /usr/src \
        smeghead7/php-class-diagram bash \
        -c 'php-class-diagram php-source-directory | plantuml -charset utf-8 -pipe -tpng > class-diagram.png'
```

## Open Shell

```bash
$ docker run --rm -it \
        -v $(pwd):/usr/src \
        -w /usr/src \
        smeghead7/php-class-diagram bash
```

