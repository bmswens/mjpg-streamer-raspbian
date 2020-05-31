#!/bin/bash
full_path=$(realpath $0)
dir_path=$(dirname $full_path)
base_path=$(dirname $dir_path)
cd ${base_path}/docker
docker build -t bmswens/mjpg-streamer-raspbian .
cd -
