# Packages

* Dot notation is used to define a hierarchy of packages: e.g. `java.awt.event`
* BUT doesn't necessarily mean each package is within the preceding one
  - In the above example,. `java.awt.event` is NOT within `java.awt` - they are considered separate packages, and importing everything inside the latter will not give you everything inside the former.
