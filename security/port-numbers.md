# Port Numbers

* When the browser connects to a website, they connect to a server listening on a particular remote **port** (and they connect on a local port)
* There are conventions around which ports to use for what.
* Remote port will usually be 80, 443, 8080, or (maybe) 8443

## Hard allocated
* 80 - HTTP
* 443 - HTTPS
* 21 - FTP
* 23 - Telnet
* 25 - SMTP
* 53 - DNS

## Conventions

* Some ports are open with no restrictions, but are often conventionally used.
* If it's not the standard one, users will have to put the port number in the address.

* 8080
  - the idea is that it's sort of the 'default second choice' after port 80 for your main app
  - often used for a proxy
  - often used for a device with a webgui, like dertain IoT devices

* 8443
  - Seems to be the same as the above but for 443/ssl. A (non-official) alternative to 443.
  - Apache Tomcat SSL uses this, apparently.
