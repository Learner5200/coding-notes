# Inheritance

* Inheritance is a mechanism for code re-use, where you need to repeat a lot of functionality but specialise in some way
* Some people think it's always bad and we should use composition instead. This might be true.

## Classical Inheritance

* Inheritance via classes and subclasses
* Class is a blueprint for creation of an object via constructor functions and the `new` keyword.
* **Inheritance is a relationship between one *class* (base class) and another (subclass). Blueprints are inherited.**
* NB: In Javascript ES6 `class` keyword is just sugar for constructor functions.
  - Build upon prototypical inheritance BUT explicitly wires the constructor prototype to the parent's for delegation, which creates a tighter coupling.

## Prototypical Inheritance

* A prototype is a working object instance -> **objects inherit directly from other objects. Actual method chain is shared.**
  - i.e. one object delegates to another for its methods etc.
* Can compose an instance from many *different* source objects, so you don't always get a tree hierarchy in the same way

## Rules for Inheritance (Sandi Metz)

* Subclass hierarchy should be **shallow** and **narrow**
  * i.e. few (2?) layers of subclasses, and not many of them in a layer.

* Subclass should use ALL the methods of the superclass.
