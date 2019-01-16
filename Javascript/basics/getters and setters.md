# Getters and Setters

* can add method to object, class etc called `get size() { return some stuff }` and then call `object.size` to access that methods return value as if it were a property
  - if you use the module pattern and only expose the getter, this is kind of like an attr_reader

* similarly, can add `set size(value) { do some stuff }` and call `object.size = value` to set.
  - can be used like attr_writer

* Also useful to get properties that track other properties dynamically: e.g. `get fahrenheit()` allows you to call `.fahrenheit` to get a transformed version of the `celsius` property even when this changes
  - can be used to set fahrenheit and change celsius!
