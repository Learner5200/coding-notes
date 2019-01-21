# Primitive Types

* There are six primitive data types, and there are objects. Arrays, enums, etc. are objects.
* All primitive data types are immutable (including strings!!).

## Boolean

* Can be true or false.

## Number

* Only one Number type (no floats, doubles, int, smallint, bigint, etc.), which is a double precision 64-bit something something ranging from –ve to +ve 2^53
* Has three symbolic values: –Infinity, +Infinity, and NaN

### NaN

* It **is** a value of the Number type, but it represents that a value isn't a legal number.
  - Paradoxical!!
* It is what gets returned when we're expecting to produce a number but no specific number makes sense, e.g. when:
  * various Math functions fail
  * a function trying to parse an int as a number fails
* NaN will compare unequal to any other value, *including NaN* itself, so you need to use `.isNaN()` to check for it.
  - it's the only thing that compares unequal to itself.

## String

* A string is a set of 16-bit unsigned integer values representing characters, at different indices.

## Symbol (ES6)

* A symbol (like in Ruby) is a **unique** and **immutable** primitive value.
* Can be used as the key of an object property
  - means nobody else can access it without the symbol!

## Undefined

* A variable that hasn't been assigned a value, or the return value of a function with no return value.

## Null

* A variable that *intentionally* does not have a value.
* Typically used where an object might be expected but isn't relevant.
