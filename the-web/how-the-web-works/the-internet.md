# The Internet

* The internet is a global network of computers.
* Each computer has a unique IP (internet protocol) address, usually given temporarily by their  ISP (internet service provider).


## Sending a Message

* Message (e.g. an HTTP GET request) needs to know what port it's going to, at which IP address
* Message gets converted into a signal that can be sent via the **protocol stack**, TCP/IP
  - the message is broken into smaller chunks of data
  - each packet is given its destination address
  - packets converted into discrete electrical signal
* ISP has a **router** that examines the destination address and uses that to know where to send the message (often another router)
* When the packets reach their destination(s), they work back up through the TCP/IP stack, eventually being re-assembled into readable format.

## DNS

* The **Domain Name Service** (DNS) is the thing that maps domain names to IP addresses. Means we can send stuff to Google rather than to a bunch of numbers.
* Implemented as a distributed database across computers called DNS servers.



## Further Reading

https://web.stanford.edu/class/msande91si/www-spr04/readings/week1/InternetWhitepaper.htm
