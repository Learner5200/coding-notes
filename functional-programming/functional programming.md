# Functional Programming

* A different **paradigm** to OOP, previously considered academic/mysterious, and associated with languages like Lisp, Scala, Haskell, Closure.
* Can do it in JS
* Now growing in popularity, and can be done in Ruby/Java too

## What doesn't change

* Data types and structures: strings, arrays, booleans etc
* Conditional logic
* Loops
* Functions (/methods/procedures/subroutines)

## What does change - The Basics

* Uses **pure functions**, like you find in maths:
  - Produces same output for same input, always - referential transparency or **idempotence**
    - mean they can't rely on any external objects/variables, because these could change
    - means there's no **shared state** - no reliance on a variable that another object also relies upon
  - Don't have side effects.
* To achieve this, **all data structures are immutable**, and instead can give you a perfect copy when needed.
  - doesn't result in millions of copies, because of something called *persistent data structures* that can copy efficiently without too much unneeded repetition. They do this by sharing all the data that doesn't 'change' - which is *fine* because it's all immutable so nothing will get unexpectedly changed.
* Functions are **first class entities** (like in JS) - can assign them, pass them around, use them as parameters, return them, etc.
* What about (side) effects!? Updating database, creating a file, etc. This is what we get paid for!
  - different languages approach this differently: e.g. clojure uses stateful things called atoms, and agents/actors, which execute side-effecty stuff in sequence

## Pros

* More **concise**
* More **predictable** - can guarantee that nothing is changing accidentally: x will always be x.
* Because functions are referentially transparent, we can *memoize* particular function calls - that is, replace them with the value we know they always produce, for the purposes of optimisation.
* **Easy to test**, as we don't need to mock anything (remember we mock to prevent dependency on things that change, but we're not depending on outside stuff with pure functions)
* Supposedly facilitates a **declarative** style of writing code (write what you need to get done, in terms of your goals etc.) rather than an **imperative** style (what exact actions to perform, how to do it)
  - e.g. using map, rather than explaining how to iterate through collection and transform

## Cons

* Barriers to entry/smaller community (not really a downside though...)
* Less intuitive to write (and read, I guess), as it doesn't model the real world as isomorphically
