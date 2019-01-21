# Scope in JavaScript

* Scope refers to the domain of accessibility of variables/functions/objects in your code.

## The Principle of Least Access

* Limiting the scope of entities to what it needs to be can help add security to your code:
  - things are less likely to change accidentally
  - less likely to encounter name conflicts

## Global Scope

* Variables in global scope can be accessed and altered in any other scope.
* Only one global scope in a document
* Anything declared outside any function is in global scope.

## Local Scope

### Function Scope

* Variables declared in a function stay in that function, and can only be used in it/functions defined within it.
* `var` is scoped to a function.

### Block Scope

* Block statements, usually between `{}`s, are used in `if` statements, `for` and `while` loops, etc.
* `let` and `const` are block-scoped - if you declare one inside a block, you can't use it outside the block even in the same function.


## The Scope Chain

* When trying to resolve a variable, JavaScript will start at the inntermost level of scope nesting (i.e. innermost function or block we're in) and move outward until it finds the variable.
  - in this way we give priority to variables defined in the local scope with the same name.
