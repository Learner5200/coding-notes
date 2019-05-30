# Configuring Spring with annotations

* Can configure Spring beans with annotations to minimise XML configuration
* Spring will **scan your Java classes for special annotations** and use these to automatically register/connect beans in the Spring container
* Have to
  - enable component scanning in Spring config file: `<context:component-scan base-package='packageName' />`
  - add the `@Component("stringOfBeanIDYouWantToUse")` annotation just above the relevant class definition
* Spring will register a bean with that ID of that class.
  - if you don't specify a name, it will give your bean a default bean ID = the class's name in lower case.

## Autowiring

* Spring can look for a class that matches the property we want to inject, and inject it automatically.
* Have to:
  - define both dependent and dependency class/interface as `@Component`s
  - create constructor/setter in the dependent class for injections
  - Put the `@Autowired` annotation above your constructor/setter
  - run stuff-->Spring will scan your Java `@Component`s for anything that implements the relevant class/interface and inject it for you

### Method Injection

* Can actually put `@Autowired` on ANY method that takes a dependency, whether or not it's a setter/constructor

### Field Injection

* Can set fields on your class directly by putting `@Autowired` above them - no need for setter or constructor with arguments anymore.

### Which is Best?

* More important that you pick one and are consistent.

### Qualifiers

* What happens if there are multiple implementations of a class/interface for Spring to choose from?
* Need to find a way to give Spring a unique bean - one such way is with qualifiers
* Under autowired, put `@Qualifier('SpecificBeanName')`

## Setting Bean Scopes/Lifecycle methods with annotations

* Just put `@Scope("singleton")` etc. under the `@Component` tag to change scope. That's it.
* For lifecycle, can put `@PreDestroy` and `@PostConstruct` above a method
