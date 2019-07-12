# Services

* A Service in Kubernetes is an abstraction which defines a logical **set of Pods** and a **policy by which to access them**
  - primarily concerned with **networking**

* Services allow your applications to receive traffic by exposing pods' IP addresses outside the cluster
  - they route traffic across the set of pods

* You will have to create a service any time you want to access anything in your pod

## Labels and selectors

* Services match a set of pods using **labels** and **selectors**:

* **Labels** are key-value pairs attached to objects (e.g. pods) - allow you to organise them, search, index, etc.
  - can add labels via kubectl: `kubectl label pod [podName] key=value`

* **Selectors** allow you to refer to objects via their labels

## Subtypes

### ClusterIP

### NodePort

* Exposes a container to the outside world
* Only good for **development** purposes, not production - except in some very specific circumstances
* Specifies port mappings:
  - port for other kubernetes objects to contact
  - target port to be exposed on the virtual machine (NOT localhost - will need to get the IP from minikube etc)
  - node port - what we will type into browser
* Specifies the object whose port is to be exposed using selectors
  - e.g. `component: web` will find an object in the cluster with a key value pair matching this in their labels (key and value are both arbitrary)

### LoadBalancer

### Ingress
