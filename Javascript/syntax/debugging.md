# Debugging in JS

## Following the flow

* In JS, the flow of information through a program is not always what we think it is
  - JS used an 'event loop' to schedule things asynchronously
* Following the flow is an important debugging technique because it helps us understand the order in which things are executed, which can help us find where issues might occur


## Getting Visibility
* console.log() is a good basic tool.
  - find the last point where you know the program is working, and find where you think the bug begins
  - use console.log on different paths to find out which one gets run
  - console.log values of key variables
  - use console.log
  - (this) is very helpful: 'this' isn't always what you think it is
  - console.log() return values of functions
* typing `debugger;` into your code will halt it when it runs and allow you to inspect stuff in dev tools
  - use like binding.pry etc


* When learning, try to ALWAYS use a proper process, even if you think you can spot it instantly -> you need the practice.
