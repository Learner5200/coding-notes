# Structure Guide

## Intro

* There **isnt** really a strong convention in JS - more chaotic.
* Don't spend too much time thinking about it.


## Folder structure

* Important to separate general purpose files from files specific to your application!
  - e.g. vendors folder vs resources folder for external vs own



### .

* index.html
  - main entry point to app
  - pulls in stylesheets
  - pulls in JS files using script tags
  - has basic html elements
* /node_modules
* /bower_components

### ./spec

* tests etc

### ./src (or ./lib)
* for my OO code

### ./public (or /resources)

* for all the css/js/other resources used on the client side

#### ./public/css

* For all stylesheet stuff
* Can have images in here too if they relate to stylesheets (e.g. background)

#### ./public/js

#### ./public/images (sometimes in an assets folder within public)

### ./vendor (or /support)

* For third party libraries etc.

#### ./vendor/jquery

#### ./vendor/something-else



## Code structure

### model

* My standard js structure for model stuff is fine

### views

* Can have separate js files controlling different aspects of the same html page (e.g. frame view vs controls view)
* Can make these OOP as well: e.g. FrameView class with prototype methods
  - initializes with frame object
  - `render` method can set up initial html pieces and their values, using `$("html string")` or equivalent
  - `update` method can change the relevant element values to current values from model
  - can add a `frameViewBuilder` (or equivalent) to exports which creates a new FrameView with a build method. This allows the interface to set everything up.
* e.g. gameView
  - initializes with game object
  - gets frame objects and associates them with views using the frameViewBuilder and render method
  - sets up its html etc and adds the frame html bits to it
  - has an update method to update scores etc
  - gives a gameBuilder to exports
* e.g. ControlsView
  - initializes with a callback function
  - builds some html
  - has a method that binds the relevant controls in that html to the callback function
  - has a render function that binds the controls and returns the html
* Interface.js ties it all together - is the key integrator for all the js
  - grabs frame, game and their view builders, and the controls view, from the window
  - has initialize function that:
    - builds a game
    - makes a new game view and renders it and appends it to the opening tag of the container html already on the page
    - includes addScore function that rolls and updates the view
    - does the same with the controls view, and the controls container
      - the controlsView is setup with addScore as its callback function
  - calls intialize when document ready
