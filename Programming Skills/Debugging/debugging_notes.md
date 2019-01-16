# Debugging

## Stages of learning - a hierarchy
1. **Remember**
2. **Explain**
3. **Apply**
4. (Analyse)
5. (Evaluate)
6. (Create)

## Types of bugs
* some bugs are simple, easy - you can instantly see what's wrong and just solve it
  * can just *find the fix*
* most bugs are more complex: will actually need a *process* to solve stuff
  * have to first *find the problem*

## What **not** to do
* See a bug
* try some random stuff
* something fixes it
* commit it to memory
* move on

## What you want
* See a bug
* identify precisely where the bug is happening
* get clarity/understanding
* do ONE thing to fix it
* move on

## 1) Identification
* Find the error in the stack trace
  - much more useful than whatever the RSpec failure is
* Use our 'get visibility' tools (`p` etc) to check that every object referenced on that line is exactly what it should be just before that line is called
* Find the object that isn't working and follow it up the stack to some point where it is built wrong -> fix it there







## Key debugging steps (older notes)

1. Take a break immediately! (if it's a hard bug)
2. 'Rubber duck' - try to explain the bug out loud to a pair, or duck
3. Check any assumptions you have about what happens when your code runs: e.g. is the data being passed correctly through to the user model
4. Follow the flow: understand what parts of your program are running, and in what order
5. **Get visibility** find out the values of relevant variables/expressions at different times, by putsing them, etc.
6. Draw conclusions, and repeat

## Getting visibility

* `p object` inspects an object and then prints it to the console. Makes it more useful than puts/print
* Install the `pry` gem, `require 'pry'` at the top of the relevant program, and use `binding.pry` -> will stop the program and open pry, let you explore stuff
  * lets you find enough info to find another good spot to use `binding.pry`
