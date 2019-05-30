# Phases

* Can setup multiple phases - build, run, etc.
  - each step can use a new base image, allowing you to make use of multiple base images to do your stuff

* e.g.
  - `FROM node:alpine as builder` - pulls down base image, setting phase to builder
    - all commands after will be done as part of this phase
  - In same Dockerfile, `FROM nginx` (don't need phase name)
    - `COPY --from=builder /app/build /usr/share/nginx/html` - lets you copy files from another named phase
