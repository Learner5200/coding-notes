# Dependency Injection

* Sometimes a class explicitly initializes an object of another class, creating a dependency.
* This makes it hard to test in isolation.
* Dependency injection allows us to instead have some variable that defaults to a member of the other class but can, in the tests, be set to a double.

* You can also inject and double classes themselves (e.g. journey_class in the oystercard app), and stub your double with a .new method
