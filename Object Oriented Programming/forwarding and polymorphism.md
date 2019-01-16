# Forwarding and Polymorphism

## Forwarding

* One class can 'forward' methods on to another.
* e.g. in the Oystercard program, JourneyLog forwards the 'start' and 'finish' commands to Journey (`@current_journey.start` etc)

## Polymorphism

* Polymorphism results when an object depends not on other objects explcitly but on a particular interface - the existence of a `#start` method, for example
  * this allows multiple different objects to fill the role, if they have the interface
* this is the same concept as 'duck typing': what's relevant is the methods it responds to, not what it is
