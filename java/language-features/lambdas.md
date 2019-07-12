# Lambdas

* Functions which can be created without belonging to any class-->can be passed around like objects and executed on demand
  - Think of anonymous functions/arrow functions in JS
*
## Use cases

* Event listeners/callbacks
* Functional programming (typically with the Streams API)

## Syntax

`(parameter1, parameter2) -> do something`

```
oneParameterOnly -> {
  many;
  lines;
  of;
  code;
  return returnValue;
}
```

* If you're just returning something simply, you don't even need the return key word

`(parameter1, parameter2) -> parameter1 == parameter2`


## How to use

* Take a situation where a method takes an object of a particular Interface, and that interface implements only one method (e.g. a method takes an object implementing the StateChangeListener interface which defines an onStateChange() method). i.e. it's a **functional interface**

```
public interface StateChangeListener {

    public void onStateChange(State oldState, State newState);

}

public class StateOwner {

    public void addStateListener(StateChangeListener listener) { ... }

}
```


* Then you have two options:
  - implement that interface in a class (filling out the method's functionality) and make an object of it and pass that object in -> cumbersome, especially when you really just need functionality
    - can use anonymous interface implementation but still pretty cumbersome

```
StateOwner stateOwner = new StateOwner();

stateOwner.addStateListener(new StateChangeListener() {

    public void onStateChange(State oldState, State newState) {
        // do something with the old and new state.
    }
});
```


  - pass in a lambda with the same method signature (same parameters and return type)-->this will automatically be turned into a function implementing the same interface

```
StateOwner stateOwner = new StateOwner();

stateOwner.addStateListener(
    (oldState, newState) -> System.out.println("State changed")
);
```


* Can assign lambda expression to a variable of the same type as its functional interface, and pass it around:

```
MyComparator myComparator = (a1, a2) -> return a1 > a2;

boolean result = myComparator.compare(2, 5);
```
