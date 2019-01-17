# AJAX

* AJAX is used to asynchronously make requests to a server, via a special object called the XMLHttpRequest (XHR) object
* Can make GET and POST requests
* Need to specify what type of data you expect to get back: simple , text, html, script, json, etc.
  - more commonly json than xml these days

* NB: AJAX is **asynchronous** - the response is not immediately available, and must be handled by a **callback function**:

```
$.get( "foo.php", function( response ) {
    console.log( response ); // server response
});
```


* jQuery comes with methods for using ajax, all centred arount he core $.ajax() method

* The ajax() method takes a JS object which specified the information needed to make the request:

```
$.ajax({

    // The URL for the request
    url: "post.php",

    // The data to send (will be converted to a query string)
    data: {
        id: 123
    },

    // Whether this is a POST or GET request
    type: "GET",

    // The type of data we expect back
    dataType : "json",
})
```

* You then have methods .done, .fail and .always that you append to the ajax return value to deal with what happens:

```
// Code to run if the request succeeds (is done);
// The response is passed to the function

.done(function( json ) {
   $( "<h1>" ).text( json.title ).appendTo( "body" );
   $( "<div class=\"content\">").html( json.html ).appendTo( "body" );
})

// Code to run if the request fails; the raw request and
// status codes are passed to the function

.fail(function( xhr, status, errorThrown ) {
  alert( "Sorry, there was a problem!" );
  console.log( "Error: " + errorThrown );
  console.log( "Status: " + status );
  console.dir( xhr );
})

// Code to run regardless of success or failure;

.always(function( xhr, status ) {
  alert( "The request is complete!" );
});
```
