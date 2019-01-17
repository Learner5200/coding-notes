### 1) Verify the code is working correctly

### 2) Prevent future regressions

* Build up a test suite to run upon making changes, to make sure nothing is broken.
* It's therefore important to have unit tests that run quickly.

### 3) Support refactoring

* Make sure we're not breaking stuff when we refactor - kind of similar to the above, if you ask me.

### 4) Document the code's behaviour

* One among many forms of documentation
* Explain how your code should work, by example.

### 5) Provide design guidance

* One of the main reasons for test *driven* development:
  * Convert the high-level project goals/requirements into precise empirical tests for the meeting of those requirements. Very important to get this right.
  * Only write the code you need to pass these.
  * In this way, the code you write will be constrained to the simplest implementation of the requirements you specified.
