# The Law of Demeter

* Object should ideally only know about its direct dependencies: only talk to your friends.
  - i.e. don't 'reach through' objects to get to other objects.
* Should only be calling methods of objects that are:
  - Arguments of its functions
  - Created locally
  - Instance variables
  - Global variables
* This helps avoid 'train wreck' method chaining -> should ideally have like one `.`, maybe more if you're chaining like `map` and stuff.
* NB: won't always be able to follow this rule, but should try to.


## Why?

* Helps decouple objects, reduce dependencies - less dependent on the internal structure of other objects
* Helps with a 'tell, don't ask' approach: objects tell other objects what they need
* NB: will result in having to write many wrapper methods
