## HTTP Requests

* Within HTTP, we call data sent from a client to a server a **parameter**. Just like Ruby's hashes, parameters come as key-value pairs and a request can contain multiple parameters.
* One way of sending a parameter to a server is to pass it in the **query string**. The query string is a string that can be appended to an URL.
  * e.g. "www.example.com/home?name=Bob&age=21"
  * You can use a space (the code for this is a %20) if you want.




## GET requests
* GET requests are typically used by a client to pull down data from a server
  * By default, browsers make GET requests. So they can't edit data accidentally.
* Query strings/parameters are passed in the URL of GET requests
* GET requests (and the parameters/query strings they pass) are accessible:
  * They can be cached
  * They remain in the browser history
  * They can be bookmarked
  * They can be distributed and shared


## POST requests

* POST requests are used to modify some server resource: e.g. submit data (passed as parameters) to a server, which can be saved etc.
  * these also get back responses with some content (typically something like "XYZ was successful/saved")
* Query strings/parameters are passed in the body of POST requests
* If a POST request returns a webpage directly, this can cause issues with form resubmission when reloading.
  - Instead of returning a webpage, you should instead log the parameters somewhere (e.g. session hash) and redirect to a get request for the page you want.
  - This is caled the 'post/redirect/get' pattern.

## How to choose between GET and POST
* Use GET for 'safe' actions (e.g. just viewing) and POST for 'unsafe' actions (e.g. modifying)
* Use POST for sensitive data, as the query strings are not transferred openly like in GET requests
* Use POST for long requests, as Internet Explorer has max URL length of 2048 chars
*
