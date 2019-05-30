# Persisting data - Sessions and Cookies

* Because HTTP is stateless, we need a way to store user data between requests if we want to maintain a journey through requests--> e.g. if we want to uniquely identify a user across multiple transactions
* A web session is a temporary store for user-specific information that is useful only during the time the user is interacting with the application

## Cookies

* A 'cookie' is a small piece of text stored on a user's computer by their browser
* Whenever the user's browser interacts with a web server if passes the relevant cookie information over
* Common uses:
  - authentication
  - storing site preferences
  - shopping cart items
  - server session identification
* Issue: not very safe, can be hacked etc

## Sessions

* Instead of storing info directly on the client side, sessions (as I've seen them defined) store only an id/key on the client/browser-side, which is used to get secure info stored on the server side (e.g. in REDIS) when needed.
* This way the actual values are hidden from the client, and you control when the data expires and becomes invalid
* Will (by default) end when the user closes their browser, but this can be changed if we want it to last longer
