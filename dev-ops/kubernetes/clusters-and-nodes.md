# Clusters and Nodes

## Nodes

* A node is a worker machine in Kubernetes
* It can be either a physical computer or a VM

![node-diagram](images/2019/05/node-diagram.png)

## Clusters

* A cluster is a collection of nodes  connected to work as a single unit-->new level of abstraction to work with
* The **master node** coordinates activities in the cluster:
  - scheduling applications
  - managing desired state
  - etc
* The master node exposes the Kubernetes API, which the nodes - and end users - can interact with


* Every Kubernetes node runs at least:
  - Kubelet, a process responsible for communication between the Kubernetes Master and the Node; it manages the Pods and the containers running on a machine.
  - A container runtime (like Docker, rkt) responsible for pulling the container image from a registry, unpacking the container, and running the application.
