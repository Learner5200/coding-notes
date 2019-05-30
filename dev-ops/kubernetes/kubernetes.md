# Kubernetes

## Why?

* For small app, fine to have docker deployed on a few different servers with `docker compose`
* But when you need scale (like 40-50 servers - more than you can track in your mind), you need Kubernetes

## What

* Kubernetes is a **platform for working with containers** - a **container orchestrator**
* At its core, it gives you:
  - a means for deployment
  - efficient scaling
  - monitoring
* It takes a declared state (a deployment), and it makes it happen.

## Vocab

* A **node** is an instance of a computer, running kubernetes. The nodes form a **cluster** that act as a single unit, and there is a **master node**.
* Nodes run **pods**, each with one or more (typically one) containers running on it.
* A **service** handles requests from the public/inside the cluster: defines how requests should be routed and handled within the cluster

![kubernetes](images/2019/03/kubernetes.png)

## Process

* Process of deployment:
  - use a YML file to tell kubernetes what kind of image you want to make a container from: e.g. how many copies, how many containers, certain amount of CPU, RAM, etc.
  - it creates a 'deployment' with this info - Kubernetes will keep track of this for you and maintain it
    - if there are any problems with the initial container, it will remember the details in the deployment and spin another one up
* Kubernetes manages scaling: if you tell it how much you need to deploy in the 'deployment', its scheduler will find the most efficient arrangement for these across servers etc.


## Services

*
