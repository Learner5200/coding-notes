# 'This'

* `This` refers to the current object: e.g. the object calling the function we're in.
* Important to note that `this` is not assigned a value until an object invokes the function where it appears.
* Can lead to confusion:
  - e.g. when setting a variable equal to a function, `this` will change to refer to the global window, not to the object that used to call the function.
    - in `var showUserData = user.showData;`, it refers to the window, not to `user`
* Can use the `apply` method to invoke one object's function on another - i.e. to change which object is referred to by `this`
  - e.g. `person.showFullName.apply (anotherPerson);` will return anotherPerson's deets.
* Since ES6, `this` in an anonymous function will refer to undefined, and not the window (to prevent accidental global variables)
  - unless you use arrow syntax, in which case it will borrow value from context and therefore = window
