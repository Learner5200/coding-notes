# Services

* A Service in Kubernetes is an abstraction which defines a logical **set of Pods** and a **policy by which to access them**.

* Services allow your applications to receive traffic by exposing pods' IP addresses outside the cluster
  - they route traffic across the set of pods

* Services match a set of pods using **labels** and **selectors**:

* **Labels** are key-value pairs attached to objects (e.g. pods) - allow you to organise them, search, index, etc.
  - can add labels via kubectl: `kubectl label pod [podName] key=value`
