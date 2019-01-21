## HTTP Requests

## What is HTTP

* An application-layer (see TCP/IP) protocol for transmitting documents like HTML etc between client and server.
* It's **stateless** - the server doesn't keep any state between two requests, unless things are cached etc.

## Anatomy of an HTTP Request

* **HTTP Method**: GET, POST, others
* **Path** of the resource to fetch (URL without the domain name - e.g. /posts)
* Version of the HTTP protocol
* Optional **headers** that convey additional info for the servers
* A **body** for stuff like POST, containing resources sent

![request](images/2019/01/request.png)

## Anatomy of an HTTP Response

* Version of protocol
* **Status code** indicating success or not.
* Status message
* Headers

* ![response](images/2019/01/response.png)

## HTTP Headers

* Allow client/server to pass additional information in request or response, in the form of name-value pairs
* Can contain
  - general info pertaining to requests and responses
  - request headers with more info about the resource to be fetched
  - response headers with more info about the response (e.g. location, sever stuff)
  - entity header with more info about the body: e.g. content-length, MIME type
* Examples:
  - cookies
  - CORS
  - security


## Parameters

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
