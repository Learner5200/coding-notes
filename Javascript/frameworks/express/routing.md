# Routing

* For simple routing, you can just make your `app` object and use stuff like the below:

```
app.get('/path/to/:a/resource', function (req, res) {
  res.send('hello world')
})
```
* To handle a route, pass the path and:
  - a single callback function, like above
  - as many callback functions as you like, as long as they end in `next()`
  - an array of these (still ending in `next()`)
* Can put in a parameter like :a -> will find it in `req.params.a`.

## express.Router

* Can use the `express.Router` class to create modular, mountable route handlers - a Router is almost like a mini-app, and can do all the same stuff
* First make a router object and define all the routes you want in it:

```
var express = require('express')
var router = express.Router()

// middleware that is specific to this router
router.use(function timeLog (req, res, next) {
  console.log('Time: ', Date.now())
  next()
})
// define the home page route
router.get('/', function (req, res) {
  res.send('Birds home page')
})
// define the about route
router.get('/about', function (req, res) {
  res.send('About birds')
})

module.exports = router
```

* Then import it and use it in place of a middleware function for `app.use()`:

```
var birds = require('./birds')

// ...

app.use('/birds', birds)
```
