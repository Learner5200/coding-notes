# Testing a Backend API

* Will be focusing on express here.
* Key point: do need to test middleware.


### One Approach - Testing End Points

* Fire off an HTTP request
* Expect the response to have certain properties
* ISSUE: doesn't unit test all the middleware in between.

### Testing Mid-Stack

* Often middleware lives as anonymous functions - hard to test these.
* So we want to find a way to pull them out and make them not-anonymous.
* Typically will be testing one of five things:
  - something got added removed or modified on (1) req or (2) res
  - some method got called on (3) req or (4) res
  - (5) next() was called

## Ideal solution (according to Morris Singer)

* Pull anonymous middleware functions out into separate files and name them, so you can import into code and tests
  - can even just have them like middleware.first(), middleware.second()
* Mock req and res using node-mocks-http or express-mocks-http
