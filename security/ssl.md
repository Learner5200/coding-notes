# SSL

* Basically a security protocol used to secure connections from a web server to a browser for e.g. data transfer, credit card transactions
  - information transfer between browser and server is encrypted instead of plain text
* SSL certificates are small data files that digitally bind a cryptographic key to an organisation's details
* When an organisation installs an SSL certificate on its server, it becomes HTTPS instead of HTTP

* Technically, these days we use TLS, a more secure version of SSL, but everyone just calls it SSL

## SSL Certificates

* Organisation needs to have an SSL certificate on the server
* When the browser connects, it will request that the web server identify itself
* The server will send the browser its copy of its SSL certificate
* The browser checks to see if trusts the certificate -> if so, it sends a message to the web server
* Server sends digitally signed acknowledgement to start an SSL encrypted session
* Encrypted data is then shared between the browser and server

![ssl](images/2019/04/ssl.png)

* There are different levels of SSL certificate that involve a different amount of verification checking, and cost different amounts
  - you're paying for more assurance for your customers, essentially
* Most basic is Domain Validation (DV) - just get a locked padlock, and only validate domain ownership
  - can be completely anonymous
* Next is Organisation Validation - validates the organisation itself, and can view their certificate details to check if site is legit
* Highest security is Extended Validation (comprehensive checks) - e.g. crosschecks tying entity to specific physical location, with detailed paper trail

## Port Numbers

* Apparently by default, when you connect to an https url the browser will try to connect to port 443 (HTTP uses port 80 by default)
  - if you use a different port number then users will need to enter the port number in the url!
* You can then redirect users to a non-standard port if needed.
