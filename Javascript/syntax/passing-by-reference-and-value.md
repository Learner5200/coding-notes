## What is Pass by Reference

* When variables passed in to functions or used as variables etc. are given the direct memory address.
* Function can therefore manipulate it as it exists outside of the scoep of the function.

## What is Pass by Value

* When the function essentially creates a new variable and copies the passed object into it.
* Modifying this copy won't change the original.


## JS uses Pass by Value for Primitives

* JavaScript passes by value for primitives: that is, when you pass a Number or String around in your functions, it doesn't pass a reference to the same place in memory, but a Number of the same value.
* So if you have like an array of strings, and modify one of them, you won't be changing the strings in the original array.

## JS uses 'Call by Sharing' for Objects

* The 'Call by Sharing' strategy is similar to pass by reference:
  - function can modify the same mutable object
  - can't assign directly over it.
* So basically you can modify the object all you want and the original will change, BUT if you try to re-assign it it will re-assign the variable to a new memory address, breaking the connection (rather than replacing what's add the old memory address with a different object)
* So if you still have a variable in the outer scope pointing to that original address, all will be intact.

```
//created original object with property 'original'
var obj = {};
obj.original = "original";

//function that will add a new property to an object passed to it, and will also try to reassign the object in vain.
function prototypeProperty(obj){
    //add new property attribute to object
    obj.property = "new property";
    //edit the original text of the .original property
    obj.original = "edited"
    //function will overwrite the external reference with a new reference
    //does not affect the external object
    obj = {}
}


prototypeProperty(obj);

console.log(obj.property) // "new property", note how the original obj is not empty
console.log(obj.original) // "edited", even though strings are immutable, the function was changing the properties of the mutable object, not the string.
```
