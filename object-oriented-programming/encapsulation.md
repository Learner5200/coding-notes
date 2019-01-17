# Encapsulation

* Encapsulation is about keeping instance variables, private methods etc - all the inner workings, and as much workings as possible - isolated within the class. Instead, classes should only expose things that are required for its interface with other objects/the user.
* Another way of putting it: **if an object is properly encapsulated, you should only be able to change its data/behaviour through a clearly defined interface.**
* It's ok to reference another class within a class when your class has control over it, e.g. when no other class is going to need to use it.
  * In other situations it's often ideal to use an argument etc.
  * (NOTE TO ME: I don't quite understand this yet, and I think I will still reference other classes by name (still testing with doubles etc) and see what the feedback I get is.)

* Follow the 'tell, don't ask' principle - rather than asking an object for its data then changing it, tell it to make the change you want via its interface

* Instead of accessing and setting another classes instance variables using attribute reader etc (which is very rude), it's better to define a method in that class that does the specific assignment you want then call that.
  * You're still calling a method of that class, the important thing is you can't set it to anything else.
  * example: if our `Airport#land` sets `plane.landed = true`, we should move this logic into the plane class if possible, by defining a `Plane#land` method that (among other things) does this setting.
    * this way, the Airport can't do anything to modify Plane's `@landed` instance variable. Only the plane gets to do that.
  * **Important:** this may well be more verbose, but it will be better code because of it.
