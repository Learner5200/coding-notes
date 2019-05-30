# Servlets (= server component)

* Java programs that run on a web server.

![](https://www.geeksforgeeks.org/introduction-java-servlets/)


* In an MVC structure, servlets can be seen as the **controller** bit (though they can be used to generate a view if needed).

* They:
  - Handle requests
  - process requests
  - produce the response
  - send the response back to the server

## How it works

* Request comes in
* Web server creates two objects for each new request
  - request object
  - response object: will hold any info pertaining to response, e.g. HTML, CSS, JS, JSON
* These objects are available for use in servlet code:
  - e.g. can call `request.getParameter("name")`
