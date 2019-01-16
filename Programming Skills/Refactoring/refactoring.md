# Refactoring tips

* DRY is **NOT** the number 1 rule.
  * 'Repetition is far cheaper than the wrong abstraction' (Sandi Metz)
  * fine to keep some repetition in there until you know the best way to DRY it up.
  * can always tag it with `#dup`
* Focus on one thing at a time
  * **DONT** get led down a tangent of refactoring/abstracting the moment you see e.g. some repetition-->wait until things are all clear and you've thought about it.
