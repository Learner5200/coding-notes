## Clients

* The thing that makes requests
* Typically refers to web browsers: chrome, internet explorer, etc.
  * These live inside a device (laptop etc), but the device isn't the client


## Servers

* Pieces of software that respond to requests and return stuff
* Presented as a single machine virtually, but may actually be a collection of servers sharing the load.

## How they relate

* Clients send **requests** to the server
  * Has a **verb**: GET, POST, PUT, DELETE, etc.
  * Has information about the desired host, route, any parameters to send
* The server sends a **response** back to the client
  * Has **status codes**
    * 1.xx = information
    * 2.xx = successful
    * 3.xx = redirection
    * 4.xx = client error
    * 5.xx = server error
  * Has information in a *message body*: HTML, CSS, JS, other files, etc.
  *
* These messages typically use a protocol called **HTTP** (Hyper-Text Transfer Protocol, build on top of TCP/IP)
  * This protocol is a set of rules that govern how the different bits of these messages are to be interpreted and set
  * HTTP messages are really just strings, though they contain various info
  * Can transfer anything in an HTTP message as long as the headers specify what it is.
  * HTTP is *stateless*, though TCP/IP is not.

## Proxies

* Several computers/machines act as **relays** between browser and server.
* Those operating at the application layers are usually called **proxies**, and perform several functions:
  - caching
  - filtering (e.g. antivirus, parental controls)
  - load balancing
  - authentication (to control access to different resources)

## Sockets

* A socket is an interface between server and client.
  - Can compare a socket to a file that both sides can read and write from
* Each side can `gets` a string from the socket, and the other side can `puts` a string to the socket to fill that request


* Dynamic web pages don't always look the same. Static ones do.
