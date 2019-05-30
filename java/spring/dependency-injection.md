# Dependency Injection

* The container provides all the collaborator objects needed by a given object/bean, when it creates it.
  - I think we specify in the config metadata which beans link up to which others. They don't just magically make new beans or whatever?
* Can happen via
  - **constructor**: pass dependencies in as constructor args
  - **setter-based**: set dependencies using setter methods
  - Good rule of thumb: use constructors for mandatory dependencies and setters for config/optional ones
* Helps decouple things, make them easier to test.

* Example:

```
<bean id="exampleBean" class="examples.ExampleBean">
    <!-- setter injection using the nested ref element -->
    <property name="beanOne">
        <ref bean="anotherExampleBean"/>
    </property>

    <!-- setter injection using the neater ref attribute -->
    <property name="beanTwo" ref="yetAnotherBean"/>
    <property name="integerProperty" value="1"/>
</bean>

<bean id="anotherExampleBean" class="examples.AnotherBean"/>
<bean id="yetAnotherBean" class="examples.YetAnotherBean"/>



public class ExampleBean {

    private AnotherBean beanOne;

    private YetAnotherBean beanTwo;

    private int i;

    public void setBeanOne(AnotherBean beanOne) {
        this.beanOne = beanOne;
    }

    public void setBeanTwo(YetAnotherBean beanTwo) {
        this.beanTwo = beanTwo;
    }

    public void setIntegerProperty(int i) {
        this.i = i;
    }
}
```

* (So in a way aren't we just specifying hard dependencies somewhere else? So we won't have to change the classes as much but we would have to change the config metadata? But I guess that's better.)
