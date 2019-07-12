# Optionals

* Can optional is a **container object** which may or may not contain a non-null value (see languages like Swift)


## Usage

### Creation

* `Optional<String> opt = Optional.ofNullable(variable)`
  - can be useful to use on a variable where you know it could be null and you want to have convenient methods in place to handle that kind of thing
* Optionals are returned by certain operations, like a Stream's `findFirst()` method

### Methods


* If there is a value, `isPresent()` will return `true`, `isEmpty()` will return false, and `get()` will return the value.

* `orElse()` returns default value if not present:

```
String nullName = null;
String name = Optional.ofNullable(nullName).orElse("john");
assertEquals("john", name);
```

* `orElseGet()` does the same with a functional interface:

```
String nullName = null;
String name = Optional.ofNullable(nullName).orElseGet(() -> "john");
assertEquals("john", name);
```

  - much better if we're using a function as the function won't be called if it's not needed, whereas it would be called either way above.

* `orElseThrow()` can throw an exception

* `ifPresent()` executes block of code if present:
  - previously had to use `if(name != null) {}` -> can cause issues down the line if we ever use the variable without performing the check, get null pointers etc.

```
Optional<String> opt = Optional.of("baeldung");
opt.ifPresent(name -> System.out.println(name.length()));
```
