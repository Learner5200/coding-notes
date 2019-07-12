# Configuration

* Done in a yaml file
* Need to specify:
  - api version (e.g. v1)
    - determines what types of objects we can create
    - should look at what type of object you need to create then find out what api version to use - a bit annoying
  - kind (pod, service, etc)
  - metadata: name, labels, etc
  - spec: containers and info about them

* To update running kube objects **declaratively**, as one should, you make a new deployment config file referring to an object of the same name and type but with some different properties and use kubectl to apply that config
  - e.g. updating a pod to use a different image - it will recognise that you're referring to the same pod and update it rather than making a new one
