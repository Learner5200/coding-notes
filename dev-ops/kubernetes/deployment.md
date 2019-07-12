# Deployment and Configuration

* To deploy containerised applications onto a running Kubernetes cluster, you must create a Kubernetes deployment configuration
* The deployment instructs Kubenertes on how to create and update instances of the application-->Kubernetes will then schedule the mentioned application instances onto individual nodes in the cluster
* Kubernetes will continuously monitor these, and if they go down or are deleted the Deployment controller replaces them with another instance, on another node-->**this is one of the key benefits of orchestration**

* Must specify:
  - container image for application
  - number of replicas you want to run

## Details

* Unlike Docker Compose, Kubernetes expects all images to already be built - host on docker hub
* Will have multiple configuration files per **object** we wish to create (containers but NOT just containers)
* Have to manually set up all networking between containers - more involved than Docker-Compose

## Deployment configuration files

* In 'template' property we specify all the configuration to be used by every pod used in this deployment
* 'Replicas' - can specify number of identical pods to create with this spec
*

## Updating the images used by pods

* Quite difficult to get K8s to remake a pod with updated version of an image:

1. manually delete pods-->deployment will recreate automatically, pulling down latest version
  - not a great solution...
2. Add a version number when tagging your images
  - adds an extra step though, having to keep version numbers up to date
3. Update version number when building image, but imperatively command K8s to get latest with kubectl
  - also pretty bad, but ends up being the least bad
  - `kubectl set image deployment/deploymentname containername = newImageWithLatestTag`
