# JavaBean

* JavaBeans are classes conforming to the following conventions:
  - must implement `Serializable`
  - must have a public constructor with no arguments (the default constructor)
  - all properties must be private with public getters and setters
* They're just a convention that various libraries depend on. Allows various things to be done programmatically with them.
