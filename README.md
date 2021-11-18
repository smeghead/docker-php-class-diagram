# docker-php-class-diagram


## Build

```bash
$ docker build . -t php-class-diagram
```

## Run

```bash
$ docker run --rm -it -v $(pwd):/usr/src -w /usr/src php-class-diagram bash -c 'php-class-diagram php-source-directory | plantuml -pipe -tpng > class-dialog.png'
```


## Open Shell

```bash
$ docker run --rm -it -v $(pwd):/usr/src -w /usr/src php-class-diagram bash
```
