# Testing relationships between classes

* Test the classes own behaviours in isolation
* Use doubles whenevr there is a reference to another class:
  * stub the 'earliest' method called on that class that returns a specific value, to return the value you want
    * (don't worry: you should be testing that that method returns the appropriate value separately anyway, so you shouldn't miss anything in your overall tests)
