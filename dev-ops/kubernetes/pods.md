# Pods

* A Kubernetes deployment creates **pods** with containers inside them (can't do just containers directly - a pod is the smallest thing that you can deploy)

* A pod is an **abstraction** representing a group of one or more application **containers** with a **common purpose**, along with some shared resources for those containers, e.g:
  - shared storage/volumes
  - networking (e.g. unique cluster IP address)
  - info on how to run each container

* Typically will contain application containers which are tightly coupled (e.g. a UI and a proxy for that UI) - can't function properly without one another
  - they share an IP address and port space
  - they are always co-located and co-scheduled
  - they run in the same context on the same node
  - (obviously these things aren't so tightly coupled as to belong in the same container though)
![pod diagram](/images/2019/05/pod-diagram.png)
