# Types of (automated) testing

## Unit Tests

* Test individual components in isolation by mocking everything else
* Meant to be fast and numerous, BUT have downsides:
  - have to write lots of mocks etc.
  - can't guarantee that your mock works like the real thing - can have all units past but whole thing fails.
* e.g. RSpec, Jest


## Integration Tests

* Tests that touch lots of different bits of your code, to check that it all works together.

### End to End tests (feature tests)
* Test whole thing from user point of view.
* Interact with inputs (clicking, dragging, typing, etc) and expect certain outcomes
* e.g. selenium (incl capybara), cypress
* Cons
  * Expensive: slow to run
  * Brittle: more components mean more things that can go wrong, more likely to break
  * Harder to write: will silently fail because they **can't pinpoint the error** like unit tests can: sometimes you get a stack trace but often not.
