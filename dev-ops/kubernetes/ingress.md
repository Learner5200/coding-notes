# Ingress

* By default, pods running inside kubernetes run on a private, isolated network, visible only from other pods and services in the same cluster-->need to use kubectl to communicate with app

* In Kubernetes, an ingress is something that
manages external access to the services in a cluster
  - exposes HTTP routes from outside the cluster to services within the cluster

* Basically define some routes and what backend route/port they correspond to.
* Typically include a load balancer (to balance traffic across multiple servers)




*
