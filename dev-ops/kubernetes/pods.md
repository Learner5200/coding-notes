# Pods

* A Kubernetes deployment creates pods with containers inside them (not containers directly)

* A pod is an **abstraction** representing a group of one or more application **containers**, along with some shared resources for those containers, e.g:
  - shared storage/volumes
  - networking (e.g. unique cluster IP address)
  - info on how to run each container

* Typically will contain application containers which are tightly coupled (e.g. a UI and a proxy for that UI)
  - they share an IP address and port space
  - they are always co-located and co-scheduled
  - they run in the same context on the same node
![pod diagram](images/2019/05/pod-diagram.png)
