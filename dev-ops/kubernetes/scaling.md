# Scaling

* Scaling a deployment creates new pods and schedules them to nodes with available resources


* Services come with an integrated load balancer to distribute traffic among all pods of a deployment

* Multiple instances of a pod allows:
  - more traffic
  - rolling updates without downtime - when you update your deployment, kubernetes will roll this out one by one


## How to scale

* `kubectl scale deployments/[deploymentName] --replicas=4`
* Can scale up **or down** - can be useful sometimes, especially when testing/debugging!

* Can also auto-scale
