# SOLID

* A set of five principles for OOP code by Uncle Bob (Robert C Martin) to help make it easy to maintain, change, extend, etc.

## Single Responsibility

* Class should only have one reason to change.

## Open-Closed

* Objects should be open for extension but closed for modification
* Should be easier to **extend** a class without **modifying** it
  - e.g. just add a new method or pass in a new object

## Liskov Substitution

* Should be able to replace any instance of a parent/base class with an instance of its subclass without problems
  - should have all the same methods, just with some extra stuff
  - e.g. rectangle -> square: still has sides, corners, etc.

## Interface Segregation!!!!

* No object should need to:
  - implement an interface that it doesn't use
  - depend on method that it doesn't use
* e.g. don't make a square implement a volume method.

## Dependency Inversion

* Entities should depend on abstractions (e.g. a certain interface, sthng that has certain methods), rather than on concretions (specific external classes)
* Can solve this via dependency injection: pass in a class so it only depends on having SOME class with certain properties
