# Lombok Annotations

* `@Data` - generates all the boilerplate associated with simple POJOs/beans:
  - getters for all fields
  - setters for all non-final (non-constant) fields
  - toString, equals and hashCode implementations appropriate to the fields of the class
  - constructor that initializes all final fields and  non-final fields withou initializers marked with `@NonNull`
* `@Builder` - produces complex builder APIs for classes
  - adds an inner static class to MyClass named MyClassBuilder, and setter-like methods for each parameter so you can do `MyClass.builder().name("name").city("london").build();`
