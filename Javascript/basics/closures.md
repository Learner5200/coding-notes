# Closures

* A closure is an inner function that has access to the enclosing function's variables
  - makes use of a 'scope chain' by which variables in the scope of the outer function are usable in functions defined within, even after the outer function returns
    - this is because when functions execute in JS, they use the same scope chain that was in effect when they were first created
  - This is interesting because we can get a function to return another function that has like 'permanent access' to the original function's variables
    - so we can use them like a slightly more 'global' variables among functions created in the parent function.
    - and can do stuff like increment a counter etc.
* Some people say 'true closures' are self-executing, anonymous functions that immediately execute
  - but not clear what the advantages are over named factory functions

* The below function makes an adder function that adds a specific number to its argument.

```
function makeAdder(a) {
  return function(b) {
    return a + b;
  };
}
var x = makeAdder(5);
var y = makeAdder(20);
x(6); // ?
y(7); // ?
```


* The below function initializes a counter variable and returns a function. Calling this second function increments that variable and returns it.

```
function counter() {
    var counter = 0;
    return function() {
        counter += 1;
        return counter;
    };
};
```

* Importantly, whenever we use the returned function, the variable name 'counter' it mentions continues to refer to the same counter variable. So it will keep incrementing the same number without resetting:

```
a = counter();
a()
=>1
a()
=>2
```

* Can make a named factory:

```
var factory = function() {
  function _private() {
    return "hello"
  }
  function public() {
    return _private()
  }
  return {
    public: public
  }
}

object = factory()
object.public()
  => "hello"
object._private()
  => ERROR
```
* It's better to have the enclosing functions for closures be anonymous so we don't have to worry about namespacing conflicts
