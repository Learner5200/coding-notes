# Docker

* Docker is a service that let you run apps inside virtual, containerised environments.


![dockerDiagram](images/2019/03/dockerdiagram.png)

## How it works

* Begin by making a small (5-30 line) **dockerfile**
  - gives _blueprint for how docker image will be built_
    - give base image
    - what commands to run
* This can be built into a **docker image**, which contains a complete application wrapped up together:
  - all project code
  - installed programs needed (e.g. Node JS)
* This application can now be run on any computer with docker - just run:

```
docker build -t nameOfMyImage

```
* Verify existence of image with `docker images`
* From this image, you can run as many docker **containers** as you want:

```
docker run nameOfMyImage
```

## Features

* Basically just a much more efficient version of something like a virtual machine, that allows you to run apps in containers (another kind of virtual platform), and have lots of different containers going at the same time if needed
* Docker uses a layered file system - if multiple images use the same stuff, docker will use just one copy and share it around

## Extra info

* Relies on namespacing: the isolation of different resources (eg different versions of python) for different processes (eg chrome vs nodejs) - something that can only be done in linus
* These containers are therefore all run on linux
* DockerHub is like the github of docker images
