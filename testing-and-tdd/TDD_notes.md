# Test-Driven Development

* **REMEMBER: do not blindly follow TDD or any other principle as an ideology. Know when and why TDD is useful for a particular task, to achieve a particular goal, and do not use it outside of these boundaries. Be able to justify why you did or didn't TDD a given project.**

## Intro
* Testing comes in at the *planning* stage - we write tests for the (not-yet-existent) classes, methods and functions that will meet our main objectives
* **Feature** tests check for the existence of major features/objectives
* **Unit** tests check for the working of individual small features

## The Process

* The first test you write doesn't need to be just testing for the existence of the class/method etc, can be meatier, some bit of actual behaviour
  * e.g. `expect(greeter.greet("Ryan")).to eq("Hello Ryan")`
  *
* Key is to *write the minimum thing possible* to pass your tests
* NB: you *don't need to test things that cannot be accessed outside your class* (e.g. instance variables)
  * so don't attr_reader it just to test...

## Good practices

* In general, simpler tests are better - better to have one expectation if possible
  * No hard and fast rule, but good *rule of thumb* = **use the fewest tests needed to exercise the functionality you wish to test**
* For unit testing, we generally have one `describe` block per class
* A good name for a sub-block describing a method is `describe '#method' do`
* Tests should typically be centred around the interface with the **user**
  * e.g. we don't want to peek into instance variables etc that should be private (like planes etc), we want to use a public method (like one that lists planes) and see our new plane there
* Apparently better not to stub methods on objects that you're currently testing (not sure why though)
* Better to stub as small a bit of your code as needed to make the testing possible
* If you want to stub instances of classes (rather than classes), can do `allow_any_instance_of(Class).to receive [etc]`

## Refactoring

* While refactoring our tests should always pass at each step


## Doubles and independent tests

* We want our classes to be as independent from one another as possible. Remove or at least isolate dependencies (e.g. by relying only on *something with methods like this*, rather than a specific class object)
* Similarly, we want our tests to only test the particular class of interest; if we're testing Library, we don't want that to be affected by whether or not Book is working at the moment.
  * we want to know that if the library_spec tests fail, it's because of the Library class, not the Book class
* Enter **doubles** - essentially 'stuntman' objects that we can teach to respond to particular methods with particular return values
  * Can use this syntax:
  ```ruby
  double :book, method_to_respond_to: desired_return_value
  ```
  * These can then be used to stand in for whatever object is required
  * We teach the double to return whatever the real object it's standing in for is expected to return, in this particular test case
  * **NB:** obviously doubles CAN'T stand in for side effects of those methods, so that's one reason we should avoid side effects

* Can be helpful to draw out our classes, their methods, and where the dependencies are
  * e.g. Library's #index method depends on Book's (or at least SOMETHING's) #description method
