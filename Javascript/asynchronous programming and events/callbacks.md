## Callbacks

* The callback pattern is as follows.
* We can give a function an extra argument - a callback function, that is executed during the main function.
  - e.g:

```
document.addEventListener('click', function() {
  console.log("click!");
});
// will wait for a click then call console.log
```
  - e.g:
```
setTimeout(function() { console.log("tick")}, 500)`
// will wait for 500ms and then call console.log
```
* A callback is like delegated instructions that you give another function. These instructions are executed after that function's main stuff finishes or when it yields or whatever
  - think of it as similar to passing a block in ruby

* Some callbacks are synchronous: they will make the rest of the program wait until they're done.
  Typically this is true for functions that dont take much time to execute and trigger the callback - no problem making people wait if they're not waiting long
