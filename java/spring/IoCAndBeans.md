# Inversion of Control in Spring

* Inversion of Control treated as synonymous with Dependency Injection in Spring - about **outsourcing the construction and management of objects**
* It's a process whereby objects define their dependencies only through:
  - constructor arguments
  - arguments to a factory method (kind of similar to the above)
  - properties *set* on the object instance after it is constructed
* The container(??) then injects these dependencies when it creates the bean(??)
  - so the key is that other objects are passed in rather than created. And I guess what the framework does is decide what to pass in and do that for us.
  - Does this mean that all our objects basically get created at the start and none get create dynamically after the program starts doing stuff?


## The IoC Container

  * The IoC container is represented by the **ApplicationContext** interface, which can be implemented by different Classes (e.g. **ClassPathXmlApplicationContext**).
  * Typically the IoC container is instantiated with some XML boilerplate, so I won't have to worry about it.
  * The idea is that the container uses the classes and the config metadata to produce a fully configured system ready to execute.

## Configuration Metadata

* The **configuration metadata** - basically config stuff that is defined by XML, annotations, or other java code - specifies what objects compose the application, and what the interdependencies between them are.
  - traditionally XML, but apparently this is more of a legacy thing now
  - using annotations allows you to put stuff in the class itself, like `@Required` (enforcing required properties) or `@Autowired` (autowires collaborators)
  - Spring can autodetect certain classes with the right structure and register the corresponding bean definitions for you. See docs for examples.
* Example:

```
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.springframework.org/schema/beans
        http://www.springframework.org/schema/beans/spring-beans.xsd">

    <bean id="..." class="...">   
        <!-- collaborators and configuration for this bean go here -->
    </bean>

    <bean id="..." class="...">
        <!-- collaborators and configuration for this bean go here -->
    </bean>

    <!-- more bean definitions go here -->

</beans>
```
