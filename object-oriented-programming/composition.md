# Composition over Inheritance

## Why inheritance can be bad

* Inheritance creates a dependency of subclasses on all superclasses in the hierarchy
* This means changing the superclass may require changing every subclass
* Harmless changes to the superclass may break subclasses--> the **Fragile base class problem**
* Inheritance should be used for **specialization**, not **sharing code**

## Mixins?

* Using modules for each different bit of behaviour is a bit better, but ultimately does the same as multiple inheritance (dependence on modules)

## Composition

* Composition involves *injecting an object* to play the role of the *thing that varies*

* A subclass/inheritor is composed of some behaviour *shared* with the superclass, and some *unique* behaviour that required a new class.
  * Drawing it as a table/spreadsheet can help reveal similarities and differences
  * If it looks like the subclass does a extra thing that the superclass doesn't do, think of it more that the superclass performs some very trivial algorithm (e.g. order(data) = data )
* The shared behaviour can remain in one class or set of classes (the base class I guess)
* Unique behaviour can be extracted into separate classes.
  * Tough part here is trying to turn a verb or bit of data into a noun that does that verb or has that data
  * Can be lazy and just add -er, e.g. a printer, a renderer, a saver, a driver
* These classes can be composed into your final object.
  * e.g. instead of making an electric vehicle, make a vehicle that can **have** an electric engine. Initialize it with an engine object set to an instance variable, and use that engine's unique methods.
* Composition helps with
  * single responsibility principle
  * cohesion - same logic kept together
  * low coupling: classes are only loosely dependent on each other
* cons
  * makes code longer
  * initializing the base object involves passing it a lot of 'pluggable' objects to specialize it

### Composition in Javascript
* Make factory functions (functions that take some state and return a JS object with functions that operate on that state): e.g. driver, walker, killer
* make a final factory function for your object that has some state, and use Object.assign to return an object composed of all the properties of the relevant components.
* e.g:

```
const barker = (state) => ({
  bark: () => console.log('Woof, I am ' + state.name)
})
const driver = (state) => ({
  drive: () => state.position = state.position + state.speed
})

const murderRobotDog = (name)  => {
  let state = {
    name,
    speed: 100,
    position: 0
  }
  return Object.assign(
        {},
        barker(state),
        driver(state),
        killer(state)
    )
}
```

* NB: some people would say this is more of a functional programming thing.
