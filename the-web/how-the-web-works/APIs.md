# APIs

* Technically an API (Application-Programming Interface) is used to refer to any interface for using some software service:
  - e.g. the `fetch` function in JS is called the fetch API
* More commonly, 'API' refers to a web API.

## Web APIs

* A web API is the part of a remote server that received requests and sends responses.
* It is the defined interface for **programmatically** interacting with some web server: requesting data, posting, etc.
  - as opposed to from a browser
  - think of it like a menu in a restaurant, or control panel on a machine
* e.g. can have your website search for and display articles from the Guardian API, or show maps from the Google Maps API
* Will typically be sending AJAX requests and dealing with JSON responses.
* Quite popular these days to have your web service be an API that exposes your backend to be consumed by  different possible front ends (e.g. web vs mobile vs even alexa)
* APIs control access to resources - can require specific permissions etc.


## OAuth

* A standard defining a number of APIs you can use to sign into a website using another service - e.g. using Facebook, Google, Twitter or Github to sign into a website without creating a new user account.
