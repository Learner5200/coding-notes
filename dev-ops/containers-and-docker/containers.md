# Containers

## Why?

* PROBLEM: it works on my machine, but how do I make sure it works on everyone else's?

## What is a container

* Containers provide a neatly packaged environment with everything that's needed to make sure your application works smoothly
* A 'standard unit of software' that packages up code and all its dependencies so the application can run quickly and reliably from one computing environment to another
  - a container image is a standalone, executable package of software that includes everything needed to run an application:
    - code
    - runtime
    - system tools
    - system libraries
    - settings
  - the image becomes a container at runtime

### Original simple version
* Operating system can run many **processes**
* Sometimes we want to isolate a process and run it in a sandbox-->this sandbox is a container. A container is a **sandbox for a process**
* The lifecycles of process and container are typically tied together: when one starts, so does the other and likewise for closing

## Vs Virtual Machines

* Containers are more portable and efficient than VMs, which emulate all the hardware and have an entire guest OS with libraries etc - docker just translates for you
* Containers share the system kernel with each other, running as isolated processes
* Containers communicate directly with the system kernel, instead of through a hypervisor.
* Containers share bins and libraries
