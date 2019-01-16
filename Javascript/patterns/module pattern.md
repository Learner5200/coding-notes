# The Module Pattern

* Useful as a way of achieving true privacy in JS
* Key pattern is as follows:
  - write your normal functions etc
  - wrap them in another (typically anonymous) function: this will make them all inaccessible outside of this function scope (i.e. all private)
  - have your wrapping function take a parameter - typically 'exports' - and add the functions you want to be public as methods of exports (`exports.method = function`)
  - immediately call your anonymous wrapping function on `this` - it will add the relevant methods to `this`
  - `this` will refer to the main `window` when in the browser, making them accessible without prefix to anything in the same window
  - We have therefore made only the private stuff accessible.
* e.g:

```
(function(exports) {
  var QUESTION_MARK_COUNT = 2;

  function question(string) {
    return string + "?".repeat(QUESTION_MARK_COUNT);
  };

  exports.question = question;
})(this);
```



* Can be used with or instead of the prototype/constructor pattern - allows you to design code in different ways
* Related to **closures**: module gives the window/module.exports functions that can make use of private stuff defined within the scope of the enclosing function, even when used in another file etc
*




* In ES6, this pattern isn't used anymore, really. Instead, we use `import 'smiley' from './smiley'` and some such.
  - import won't work if you just open the html file - you need to serve it on localhost etc to use import
* Both importer and exporter files must have 'type=module' in the script tags
* Can export {a, b, c} and import {a, b, c} from module.js
