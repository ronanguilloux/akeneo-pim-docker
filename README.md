# Akeneo PIM CE 1.6 last stable, PHP 7

Bringing you the very last stable release of Akeneo PIM Community Edition, 1.6, in a Debian based Docker single container, with PHP7.

[Read the documentation (20 slides)](https://docs.google.com/presentation/d/1WpdzXgl1STHt1l2f75WZqZ4G1qD48DwUsQS9d_ZUSw0/pub?start=true&loop=false&delayms=3000)


## How to use it?

### __EASY PICK__: Using Kitematic for Windows or Mac OS X

Install and run the latest version of Akeneo PIM (CE)
on your laptop, in under 5 minutes,
with absolutely zero knowledge of Docker, PHP, Symfony2, or Linux Shell:
Not a single command line, just downloading and clicking:

- install [Docker](https://www.docker.com)
- install [Kitematic](https://kitematic.com)
- search for "[ronanguilloux/akeneo-pim-docker](https://hub.docker.com/r/ronanguilloux/akeneo-pim-docker/)" in the Kitematic search bar
- install it, run it, then open your web browser from Kitematic to start playing with Akeneo PIM CE (login/pwd: admin/admin)
- Tip: use a [modern web browser](https://www.google.fr/chrome/browser/desktop/)

[Read the tutorial (20 slides)](https://docs.google.com/presentation/d/1WpdzXgl1STHt1l2f75WZqZ4G1qD48DwUsQS9d_ZUSw0/pub?start=true&loop=false&delayms=3000)

### From Docker hub

You can directly pull this image from [Docker hub](https://hub.docker.com/r/ronanguilloux/akeneo-pim-docker/) by running:

```bash
docker run -t -i -p 8080:80 -d --name akeneo ronanguilloux/akeneo-pim-docker:latest
```

And then open [http://localhost:8080/](http://localhost:8080/).

### From GitHub

Clone the repository, go inside the created folder, and build the docker image:

```bash
docker build -t "akeneo-pim-docker" .
```

Then you can run a container like this:

```
docker run -t -i -p 8080:80 -d --name akeneo-pim-docker akeneo-pim-docker
```

And then open [http://localhost:8080/](http://localhost:8080/).

### Access to the server console inside the container:

```bash
docker exec -i -t akeneo-pim-docker /bin/bash
```

### Access to the server logs while executing RUN:

```bash
docker logs -f akeneo-pim-docker 
```

### List composed containers, get stats

```bash
docker stats $(docker ps -q)
```

## Under the hood

- This container use `supervisord` to manage services (`apache2`, `mysql`)
- We use a single container, to be Kitematic compliant, since Kitematic [doesn't support docker-compose](https://github.com/docker/kitematic/issues/137) yet
- Base docker image: [debianeo](https://github.com/ronanguilloux/debianeo), based on Debian 8
- PHP 7 packages for Debian come from [dotdeb.org](https://www.dotdeb.org/)

## License

This repository is under the OSLv3 license. See the complete license in the `LICENSE` file.

