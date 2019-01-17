# Aynchronous Programming

## The call stack

* The JavaScript runtime (v8 - a thing that compiles JS to machine code before executing it) has a heap and a **call stack**
* A stack is like an ordered list of tasks that need to be executed
* When we run a program, it searches through and adds things to the top of the stack:
  - main() will typically be the first thing
  - then it will find some function call
  - if that references another function definition, we go there and follow the chain until we find a return value that doesn't send us elsewhere.
  - We can then run that and pop it off the stack, and move our way down now that we know what everything is
* ![stack and event loop](images/2018/11/stack-and-event-loop.png)
* When an error happens, it prints the stack trace: the state of the stack when the issue happened
* Can blow the stack with infinite recursion: function calls itself, filling up the stack trace

## The problems with synchronous programming

* Synchronous programming means functions etc that go straight into the call stack and make everything wait.
* JS has a *single-threaded* call stack: it can only do one thing at a time (unlike ruby)
  - It has to finish one queue of things to do before moving on to another: if it's stuck doing one thing, it can't then move on and do another thing
  - So if you do things synchronously, and they're slow, we must wait for them to finish before doing anything else - they **block the stack**
* This causes an issue in the browser: we can't do anything, click anything, etc. until the long task (e.g. get request) is finished
  - blocking the stack also blocks **rendering**: means we can't see stuff updating

## Asynchronous Callbacks and the Event Loop

* Sometimes we want our program to be able to do other things/make progress while it's waiting for a single long process (e.g. a network request) to complete
  - **Asynchronous** callbacks allows multiple things to happen at the same time
  - how?
* The *browser* can achieve a sort of concurrency using **WebAPIs** (or c++ APIs in node).
* An asynchronous callback (e.g.  print "hello" after a 5s timer) works as follows:
  - calling the callback's parent offloads the timer etc to the WebAPI
  - the main program then just continues with its stack
  - when the WebAPI is finished, it can't just throw something randomly into the middle of the code: it adds it to the **task queue**
* Something called the **event loop** looks at the stack and at the task queue: if the stack is empty, it takes the first thing in the task queue and pushes it onto the stack, and runs it.
  - i.e. Program will finish all of the non-aync-stuff, THEN go to the first async thing that is finished and finish all of that stuff, then the next one, etc.
* If you want to defer something until the stack is clear, you can use `setTimeout(function, 0)` - when the stack is clear, it will fetch this from the task queue
* note that setTimeout isn't a guaranteed time till execution but a **minimum** time till execution
* **the moral of the story is: do anything slow asynchronously so you don't block the stack!!**
