#!/bin/bash

pushd /home/ubuntu
git clone 'https://github.com/vinu58/coderepo.git'

cd coderepo
docker build -t 'coderepo' .
docker run -d -p 8000:8000 -i coderepo
