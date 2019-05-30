# Deployment

* To deploy containerised applications onto a running Kubernetes cluster, you must create a Kubernetes deployment configuration
* The deployment instructs Kubenertes on how to create and update instances of the application-->Kubernetes will then schedule the mentioned application instances onto individual nodes in the cluster
* Kubernetes will continuously monitor these, and if they go down or are deleted the Deployment controller replaces them with another instance, on another node-->**this is one of the key benefits of orchestration**

* Must specify:
  - container image for application
  - number of replicas you want to run
  
