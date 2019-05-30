# HTTPS

* Headline: a secure version of HTTP that encrypts data using SSL

## Normal HTTP
* Your browser:
  - looks up IP address
  - connects to it
  - sends data as clear text over the connection
* Problems:
  - can't verify you're connected to the right website
  - eavesdropper on the Wi-FI network can see pages you're visiting and data being transferred

## HTTPS

* Browser will automatically redirect you to the https version
* HTTP is pretty much phased out now - e.g. chrome will flag http websites as unsafe
* Solutions
  - know that it's the real company, as they've been issued a security certificate
  - info sent over connection is encrypted
