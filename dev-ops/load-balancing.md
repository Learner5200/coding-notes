# Load Balancing

* Load balancing is the practice of distributing a workload (i.e. HTTP/TCP traffic) across **multiple servers** to improve the performance/reliability of web sites/applications/databases


## Without load balancing

* If the user connects directly to the web server, and it goes down, they can't access the website anymore.
* If many users try to access it simultaneously, and it's unable to handle this load, there will be latency/difficulty connecting


## With load balancing

* Put a **load balancer** in between, with multiple web servers on the backend.
* All backend servers will supply identical content
* The user accesses the load balancer, which forwards their request to an appropriate backend server
* Choice of server based on:
  - 'health checks' - can we still connect etc
  - load balancing algorithms: e.g. round robin, least connections
  - 'sticky sessions' - to make sure user continues to interact with same server, a cookie is used to match that user to a specific server
