#!/bin/bash

/opt/mjpg-steamer/mjpg-streamer-experimental/mjpg_streamer -i "/opt/mjpg-streamer/mjpg-streamer-experimental/input_raspicam.so -x ${WIDTH} -y ${HEIGHT} -fps {$FPS} --rot ${ROTATION}" -o "/opt/mjpg-streamer/mjpg-streamer-experimental/output_http.so -p ${PORT} -c ${USERNAME}:${PASSWORD}"
