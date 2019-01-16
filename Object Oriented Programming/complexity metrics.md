* the gem `flog` measures the complexity of your methods and classes
  * install it and run `flog --group --all lib` (if your code is in lib - we don't care for specs)

* It's NOT a hard and fast rule, but it is a very good guide to what needs refactoring, and when you're learning you might as well pretend it is a rule.

* Start with level 1:

**Level 1: Charmander**

* All methods have complexity under 10
* All classes have complexity under 30

**Level 2: Charmeleon**

* All methods have complexity under 6
* All classes have complexity under 15

**Level 3: Charizard**

* All methods have complexity under 5
* All classes have complexity under 10
