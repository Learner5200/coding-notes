# API Requests

Two ways

* Old way = XMLHTTPRequest object - gets a bit messy.
  - make object
  - add event listener with callback
  - `open` with request type/destination
  - `send`
* New way (with ES6) = **fetch**
  - `fetch(URL).then(callback function).then(callback function on what that returns)`
  - fetch can take a second parameter, a hash of headers and values
  - Usually embedded in a function of our own with a callback for what we do with it.
  - fetch() returns a promise.
    - NB: it won't reject on an HTTP 404/500, so will have to handle this like a success and check if `response.ok` is true or not.
  - e.g:

```
fetch('http://example.com/movies.json')
  .then(function(response) {
    return response.json();
  })
  .then(function(myJson) {
    console.log(JSON.stringify(myJson));
  });
```


* Can be good to make separate module to do all the api stuff
