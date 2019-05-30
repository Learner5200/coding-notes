# Kubernetes internals

* Consists of independent components that run as separate processes on the nodes of a cluster

Most important components on the master nodes:

* **Storage backend**: stores resource (e.d. deployment, pod) definitions
* **API server:** provides the Kubernetes API and manages storage backend
* **Controller manager:** ensures resource statuses match specifications
* **Scheduler:** schedules (assigns) pods to worker nodes

Most important component on worker nodes:

* **Kubelet:** manages execution of containers on a worker node




## Example
![flow](images/2019/05/flow.png)

* Command `kubectl create -f replicaset.yaml` entered in kubectl
* Converted to an API request to the create ReplicaSet endpoint in the API server
* Server saves this ReplicaSet resource definition in the storage backend
* The ReplicaSet **Controller** in the controller manager is listening for such events, and creates new Pod definitions in the storage backend to ensure that the specified number of replica pods exists
* The **scheduler** is watching for any unscheduled Pod definitions, and chooses a suitable worker Node for each Pod to be scheduled to (updating storage backend with this information)
* This triggers the **kubelets** who watch for Pods scheduled to their worker nodes-->instruct the configured container runtime (probably Docker) to download the required container images and run the containers

* The key flow involves Kubernetes components watching for resource changes in the storage backend, and manipulating resources in the storage backend
  - NB: **all of these events happen via the Kubernetes API**, which is used for both external users and internal components


* To summarise:
  - The storage backend stores the state (i.e. resources) of Kubernetes.
  - The API server provides an interface to the storage backend in the form of the Kubernetes API.
  - All other Kubernetes components and users read, watch, and manipulate the state (i.e. resources) of Kubernetes through the Kubernetes API.
