FROM raspbian/stretch:latest

LABEL maintainer="bmswens@gmail.com"
LABEL description="Container for running mjpg-streamer with the ability to customize how the application runs (i.e resolution, fps, username, password, etc)."
LABEL url="https://github.com/bmswens/mjpg-streamer-raspbian"

EXPOSE 8080

ENV HEIGHT=720 \
    WIDTH=1280 \ 
    FPS=30 \ 
    ROTATION=0 \
    PORT=8080 \
    USERNAME="" \
    PASSWORD=""

# install dependencies
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
    cmake \
    libjpeg8-dev \
    gcc \ 
    g++ \
    git \
    libraspberrypi-dev

# mjpg-streamer stuff
WORKDIR /opt
RUN git clone https://github.com/jacksonliam/mjpg-streamer && \
    cd mjpg-streamer/mjpg-streamer-experimental && \
    make && \
    make install

# runtime stuff
COPY entrypoint.sh /opt/mjpg-streamer/entrypoint.sh
ENTRYPOINT ["/bin/bash", "/opt/mjpg-streamer/entrypoint.sh"]
