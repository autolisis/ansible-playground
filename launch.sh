#!/usr/bin/env sh
bash ./prebuild.sh
docker-compose build --parallel && docker-compose up -d
