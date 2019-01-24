# Cross-Origin Resource Sharing

* CORS is a mechanism that uses additional HTTP headers to tell a browser whether or not to let a web app running at one origin/domain (e.g. supermarket.com) to access certain server resources at another origin/domain (e.g. bananas.com).
  - for a RESTful API, you typically want people to be able to make CORS requests, so should try to find out how to append the allow-origins headers to every response, and the allow-methods header to every response to an OPTIONS request
* A website makes a cross-origin HTTP request whenever it requests a resource at a different origin to its own.

* For security reasons, browsers restrict such programmatic requests:
  - e.g. Fetch API follows the **same-origin policy**: can only request resources from same origin UNLESS the response from the other origin includes the right CORS headers.

## CORS Headers

* Describe the set of origins that are allowed to read the information using a web browser: e.g. 'all', or 'only this website'
* For standard simple requests (GET etc) just need the right `Access-Control-Allow-Origin` header on the server's side, to whitelist us.
* For any HTTP verbs that can cause side effects (e.g. POST), browsers need to **'preflight'** the request:
  - first the the browser (automatically I think) sends an OPTIONS request to find out which methods are supported for them, or if certain credentials are needed
    - this has headers like `Access-Control-Request-Method` to let the server know what we'd like to do.
  - then the server responds with headers like `Access-Control-Allow-Methods` or `...-Allow-Headers`, which tell us whether our request is legit or not.
  - then we send the actual request if it is approved
* NB: the CORS headers, and the preflight check, are _two separate layers_ of protection!!!


## Credentials

* Can make credentialed requests to a server using `withCredentials`.
* Browser will reject and response that doesn't have `Access-Control-Allow-Credentials: true`
* Server must specify an origin (not just a wildcard) in the `Access-Control-Allow-Origin` header when it receives a credentialed request, or the request will fail.
