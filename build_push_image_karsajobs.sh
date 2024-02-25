#!/bin/bash

# buat docker images dari docker file
docker build -t docker.pkg.github.com/dakur17/a433-microservices/dakur17/karsajobs:latest .
# login ke githubpackages
docker login docker.pkg.github.com -u dakur17 -p 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
# push ke githubpackages
docker push docker.pkg.github.com/dakur17/a433-microservices/dakur17/karsajobs:latest
