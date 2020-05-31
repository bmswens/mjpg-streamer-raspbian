# mjpg-streamer-raspbian


## Getting Started

These instructions will get you a copy of the project up and running on your local machine.

### Prerequisites

This project is designed to be run on a Raspberry Pi, as such, it may not run correctly on other systems.

### Installing

#### Container

The container can be pulled directly from [docker hub](https://hub.docker.com/repository/docker/bmswens/mjpg-streamer-raspbian)
or you can build it yourself using the supplied dockerfile.

```
bash bin/build.sh
```

### Running

You can either run it with docker-compose or docker.
Recommended use is with docker-compose and using ```bin/run.sh```.

#### docker-compose

For docker-compose please modfiy the file at ```conf/docker-compose.yml``` according to your needs.

Once you have modified the compose file you may ```cd conf && docker-compose up``` or you can ```bash bin/run.sh```.

#### docker run

```bin/run.sh``` has a docker run command in it if docker-compose is not installed.

For more control you will want to run your own docker run command. For example:

```docker run -d --privileged -v /opt/vc:/opt/vc -p 8080:8080 -e USERNAME=user1 -e PASSWORD=SuperSecretPassword -e FPS=60 bmswens/mjpg-streamer-raspbian:latest```

## Built With

* [Docker](https://hub.docker.com/)
* [This Blog](https://www.tomshardware.com/how-to/use-raspberry-pi-as-pc-webcam)


## Authors

* **Brandon Swenson**- *Initial work* - [bmswens](https://github.com/bmswens)

## License

This project is licensed under the GNU GPLv3 - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* [Avram Piltch](https://www.tomshardware.com/author/avram-piltch), for writing the blog which guided the Dockerfile creation.
