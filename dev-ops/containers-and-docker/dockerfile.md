# Dockerfile

## What it is

* Instructions for creating an image starting from nothing

## How it works

* Each line is run in sequence
* Each step will:
  - create a temporary container from the image resulting from the first step
  - run its further commands in this container
  - take a snapshot of the filesystem and save it as a temporary image for the next step
* The final image is the image we end up with!

* If you've built from this Dockerfile before and nothing has changed since last time for a step, it will use a **cache** instead of doing all the above again-->saves time
  - will not use cache from changed line onwards, though

## How to

* Make a file just called `Dockerfile` - no extension


* Often you use an existing docker image as a base - a **base image**
  - e.g. `FROM alpine`
  - This is needed to give us some initial starting point - an initial set of starting points to then run other things
    - choose a base image that has a default set of programs useful for you

* Will want to `RUN` various commands

* The `CMD` function specifies what your container will do when it runs
  - can use ENTRYPOINT for this two


* Build your dockerfile into an image with `docker build`
* Run your image using `docker run`
