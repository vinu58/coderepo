#!/bin/bash

cd /Users/vinumohandas/Documents/Kubernetes/react-app/testdemo
git clone 'https://github.com/vinu58/coderepo.git'

cd coderepo
docker build -t 'coderepo' .
docker run -p 8000:8000 -i coderepo
