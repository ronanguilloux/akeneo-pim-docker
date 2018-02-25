#! /bin/bash

docker stop akeneo-pim-docker; docker rm akeneo-pim-docker
docker build -t "akeneo-pim-docker" .
docker run -t -i -p 8050:80 -d --name akeneo-pim-docker akeneo-pim-docker
docker exec -i -t akeneo-pim-docker /bin/sh



