# kubectl

* Command line interface for kubernetes stuff
  - from a user point of view, it's the cockpit to control Kubernetes, perform any kubernetes operation
  - from a technical point of view, it's a client for the kubernetes API

## The Kubernetes API

* An HTTP REST API - the true user interface.
* Every kubernetes operation is exposed as an API endpoint and executed by an HTTP request to this endpoint
* For example
  - cli command: `kubectl create -f replicaset.yaml`
  - API call: `POST /apis/apps/v1/namespaces/{namespace}/replicasets`




## Commands




* Look up a cheat sheet for a better list of commands - will list interesting stuff here

The most common operations can be done with the following kubectl commands:

* `kubectl get [Object]` - list resources
* `kubectl describe [Object]` - show detailed information about a resource
* `kubectl logs [container name]` - print the logs from a container in a pod
* `kubectl exec [pod name -c containerName]` - execute a command on a container in a pod


* `kubectl proxy` creates a proxy to forward communications into the (private) kubernetes cluster-->allows direct access to the API from the terminal via curl commands etc to the provided endpoint
