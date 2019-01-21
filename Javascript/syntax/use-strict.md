# 'Use Strict'

* Expression written as string at top of file, or function, which opts any code written in that context into a restricted variant of JS with stricter syntactic rules that you to help write more secure code.
* Can see as opting out of 'sloppy mode'
* Will convert would-be runtime mistakes into errors, so you don't have to try and debug it at runtime

## Things not allowed in strict mode

* using a variable without declaring it
* using `delete` to delete a variable or object or function
* duplicating a parameter name
* writing to a get-only property
* using certain keywords (including keywords reserved for future javascript versions like interface)
