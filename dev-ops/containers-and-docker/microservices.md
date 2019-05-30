# Microservices

## Monolithic architectures


### Traditional

* One big project, that is added to over time--> gets more complex

### Modular

* Split into separate modules-->build one application _out of these_
* The final executable/deployed thing is just one big thing. **Deployed as one big app**

### Problems

* Have to test whole app before deploying, as it's all being deployed together
* Scalability: expensive to create more instances of whole app when scaling needed

### Microservices

* Putting separate business logic functions each into their own mini-application, deployed separately on different machines/servers
* These apps communicate with each other via well-defined (RESTful) APIs (usually via HTTP requests)

![microservices](images/2019/03/microservices.png)

* Pros
  - language independent: can have variety
  - can have lots of small teams responsible for different functions
  - can iterate quickly
  - isolates problems to individual programs
  - pairs well with containers - can put each into own container
  - **scalable**: can save a lot of money by scaling things down individually

* Cons
  - complexity - can be hard to grasp the whole thing, trace request through your overall network
  - overhead: need to know about databases, services, containerisation, and have some infrastructure in place to do things like dynamically spin up DBs/servers
