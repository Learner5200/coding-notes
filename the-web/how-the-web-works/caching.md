# Caching

* The ability to store copies of frequently accessed data in several places along the request response path.
* When a client requests a resource representation, the request goes through a cache, or series of them (e.g. local, proxy) on its way toward the service
  * if any of them have a fresh copy, it will use that to satisfy the request rather than travelling all the way to the host service.
* An origin server uses HTTP headers to indicate whether a response can be cached, and if so by whom/for how long.
* Cacheability is one of the architectural constraints of REST
