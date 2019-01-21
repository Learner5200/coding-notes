# Function Hoisting

## Variable Hoisting

* Can reference variables before you even declare them, so long as they get declared later on: they will just have a value of undefined.
  - if they don't ever get declared, there will be an error.
* This is because the JavaScript interpreter moves all variable and function _declarations_ (but not their _assignments_) to the top of the current scope


## Function Hoisting

* Function declarations made using the `function` keyword are hoisted to the top of a file - you can therefore use those functions before actually defining them.
* **However**, for function declarations made using a *variable*, only the declaration of the variable will be hoisted. Its assignment - and therefore the actual function definition - doesn't happen till later!
  - so it can make a big difference whether you use variables or not.
