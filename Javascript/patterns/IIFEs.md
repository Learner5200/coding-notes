# Immediately Invoked Function Expressions (IIFEs)

* A function expression is an expression referring to a function, using the `function() {}` or `() => {}` syntax.
  - You can assign them to variables to make a named function of sorts (not the same as using declaring a function name), or have them be anonymous.
* An IIFE is an anonymous function with a `()` at the end, which results in it being immediately invoked.
  - Rather than being a unit of code for re-use, it's a bit of code that only gets once - the function dies immediately after coming to life.
  - Any variables declared inside it are gone forever (except if you use closures) after it's done.
* Will need to wrap the expression part in `()` so the interpreter doesn't get confused.

## Why?

* Main reason is to get truly **private** variables for use in some bit of functionality - won't be visible anywhere else.
* A good example is the module pattern, where all variables/functions are private unless you put them on the window explicitly
