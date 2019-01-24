# Middleware

* Express is essentially a series of **middleware function calls**

## What is middleware

* A web server can be seen as a function that takes in a **request** and outputs a **response**.
* Middlewares are functions executed in the middle, after the incoming request ahas produced some output.
* Middleware functions are callback functions that sit on top of the actual request handler and have the same exact parameters as the request
* Middleware functions  have access to:
  - **request** object (req)
  - the **response** object (res)
  - the **next** middleware function in the cycle (next)
* Middleware forms a **middleware stack**, where each function adds something to the response/does something along the way
* Can pass variable from one middleware to another.


* These functions can:
  - execute code
  - modify the req/res objects
  - end the cycle or call the next function in the stack (must do one of these, or request will be left hanging)

## How to Use

* They are invoked in the order they are written in the file
* For each middleware layer, invoke `app.use()` and give it a callback function
* Can use standard express middleware (e.g. router object) or public ones like bodyParser
* I think you have to put `next()` at the end of a middleware function to have it move on to the next one, and that public middleware has this in by default???

## Application-Level Middleware

* Can bind application-level middleware to an **app object** (i.e. `express()`) using `app.use()` as well as `app.get()` etc.


## Router-level middleware

* Bound to an instance of `express.Router()`
* Can do `router.use()` and `router.post()` etc.
