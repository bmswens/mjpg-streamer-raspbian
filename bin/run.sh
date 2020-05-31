#!/bin/bash
full_path=$(realpath $0)
dir_path=$(dirname $full_path)
base_path=$(dirname $dir_path)

if hash docker-compose 2>/dev/null; then
    docker-compose -f ${base_path}/conf/docker-compose.yml up -d
else
    docker run -d --privileged -v /opt/vc:/opt/vc -p 8080:8080 bmswens/mjpg-streamer-raspbian:latest
fi
