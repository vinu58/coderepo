#!/bin/bash


cd /Users/vinumohandas/Documents/Kubernetes/react-app/testdemo
git clone 'https://github.com/vinu58/coderepo.git'

cd coderepo
docker build -v /var/run/docker.sock:/var/run/docker.sock  -v /usr/bin/docker:/usr/bin/docker -t 'coderepo' .
docker run -d -v /var/run/docker.sock:/var/run/docker.sock  -v /usr/bin/docker:/usr/bin/docker -p 8000:8000 -i coderepo
