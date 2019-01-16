# Mocking without a test framework

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
