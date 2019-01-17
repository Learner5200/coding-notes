# Feature Tests for Asynchronous Stuff

* How do we test for say a text change that happens some time after clicking a button?
  - can't tap into the event loop of the actual main program - so can't get a message when it's done
  - we can keep checking to see if a change has happened, say every 20ms
    - e.g. function wait() takes a callback that returns true or false based on the condition we're waiting to check
      - it checks every 20ms if the thing is true




* RANDOM POINT: CAN PASS PARENT ELEMENT TO VIEW

## Stubbing etc

* Would we use like a dummy div?
  - probably a good way of doing it
  - make sure you get rid of the div after the tests!
* Stubbing API calls
  - what's going on is:
    - first thing user does is load the page
    - then a fetch() request is made
    - get a response
    - parse the JSON into JS object
    - render some html
  - Check that
    - the fetch request you're sending is the right one (e.g. expect fetch to receive this url with these parameters)
    - you do the right things with the response info
  - What about an end to end feature test?
    - maybe don't do one that includes the api bit if we don't own the api-->don't want to prove that there are no bugs etc
    - can never be 100% certain
* Could make a stub function that takes an object and a function to stub
  - replace obj.functionName with a function that records whether it was called (e.g. by incrementing a global counter)
  - (probs want some record of the original function: e.g. make the stub an object with a ref to original function and a restore method)
* **DO NOT GET TOO BOGGED DOWN IN FEATURE TESTING: IT'S QUITE HARD TO GET IT WORKING, SO FOCUS ON THE SINGLE PAGE APP THING AND MAKE THAT BETTER**
