# F# seed project

Clone this project in a machine with docker to run fsharp under linux.

This project is using the docker image in [docker-fsharp ](https://github.com/fsprojects/docker-fsharp)
to run mono.

First bootstraps [paket](https://github.com/fsprojects/Paket) and then uses it to install [FAKE](https://fake.build/).
Then you can use FAKE to orchestrate your build.

## Getting started

Build the image
```
$ make create-image
```

and then you can run the build:
```
$ make build
```
