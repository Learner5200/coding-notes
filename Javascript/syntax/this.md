# 'This' and Context

* `This` refers to the current object: e.g. the **object calling the function we're in.**
* Important to note that `this` is not assigned a value until an object invokes the function where it appears.
* Can lead to confusion:
  - e.g. when setting a variable equal to a function, `this` will change to refer to the global window, not to the object that used to call the function.
    - in `var showUserData = user.showData;`, it refers to the window, not to `user`
* Can use the `apply` method to invoke one object's function on another - i.e. to change which object is referred to by `this`
  - e.g. `person.showFullName.apply (anotherPerson);` will return anotherPerson's deets.
* Since ES6, `this` in an anonymous function will refer to undefined, and not the window (to prevent accidental global variables)
  - unless you use arrow syntax, in which case it will borrow value from context and therefore = window

## Examples

* When in the global scope, `this` refers to the window/global object.
* When in a constructor function, `this` refers to the object to be constructed.
* Then in a method of an object, `this` refers to the object.
* When a variable refers to a function from somewhere else, `this` refers to the context the variable is in (which may be the window).
* When in a normal anonymous function, `this` will refer to the window, or `undefined` in 'use strict' mode
* When in an arrow function, `this` will refer to the context in which it the arrow function is defined.
