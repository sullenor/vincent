vincent
=======

<img src='vincent-van-gogh.png'/>

Van Gogh

## Requirements

To use this repo we require **docker**, **docker-compose** and **docker-machine** installed on your computer. On mac os x those dependencies can be easily installed with brew:

```bash
$ brew install docker
```

In order to continue, you need to create a docker machine and start it. Read more about here: https://docs.docker.com/machine/get-started/

## Usage

Build image:

```bash
$ docker build --tag vincent .
```

Run it:

```bash
$ docker run --volume $(pwd)/ascii:/var/www/ascii --rm vincent
```

## Links

- Dockerfile reference: https://docs.docker.com/v1.8/reference/builder/
