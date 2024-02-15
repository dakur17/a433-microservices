#!/bin/bash

# buat docker images dari docker file
docker build -t item-app:v1 .
# lihat daftar image di lokal
docker images
# ubah nama image
docker tag item-app:v1 docker.pkg.github.com/dakur17/a433-microservices/item-app:v1
# login ke githubpackages
docker login docker.pkg.github.com -u dakur17 -p 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
# push ke githubpackages
docker push docker.pkg.github.com/dakur17/a433-microservices/item-app:v1
