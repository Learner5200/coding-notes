# Equality

## Abstract Comparison (`==`)
* Tries to convert operands to the same type, then compares them.
* Returns true if contents match.

## Strict Comparison (`===`)
* Only returns true if the operands:
  - are of the same type
  - have matching contents
* Should pretty much only use this, as we tend to want to know if things are truly equal, and don't usually want to coerce a type conversion.
