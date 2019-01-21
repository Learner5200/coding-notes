## Mocking, Doubles and Stubs

* 'Double' is, I think, a general term for some stand-in in a test. Several kinds of double:
  * Dummy objects are passed around to fill parameter lists but never really used.
  * Fake objects having working implementations, but aren't suitable for production because of shortcuts they take etc.
  * Stubs provide canned answers to calls made during test - programmed specifically to give the needed output
    - Spies are stubs that also record some info based on *how* they were called: e.g. how many messages were sent etc.
  * Mocks are objects pre-programmed with expectations about the calls they will receive.

* Stubbing an object/its method means getting a stand-in method to return fake data. Useful for e.g. API calls.
* A mock is an object that registers calls it receives. Can verify that expected actions are invoked etc.
  - I think more generally a mock is used to refer to any fake double/stand-in


## Mocking without a test framework

* Can overwrite a function for an instance of a class

```
var weather = new Weather()
weather.isStormy = function() {return false};
```
* Can make a new constructor/object with the relevant function:

```
function PlaneDouble() {};

  PlaneDouble.prototype = {
    land: function() {}
  };
```

* Can have the relevant function increment a counter by 1, so you can check that it got called:

```
PlaneDouble.prototype = {
    land: function() {
      this.landCallCount++;
    }
  };

expect(planeDouble.landCallCount).toBe(1)
```
