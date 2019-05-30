# Annotation Configuration

## Configuring the IoC container without XML

* Can avoid any config xml file by using annotations!
* Create a Java class (e.g. `ProjectConfig`) and annotate it with `@Configuration` and, if you want the other annotation stuff, `@ComponentScan('packageName')`
* In our main program, use an `AnnotationConfigApplicationContext` (instead of the ClassPathXml one), and pass in `ProjectConfig.class`, to make your container.
* Then use the container/context in the same way.

## Defining beans in the config class

* Here's an example:

```
@Bean
public FortuneService happyFortuneService() {
  return new HappyFortuneService();
}

@Bean
public Coach swimCoach( FortuneService fortuneService) {
  SwimCoach mySwimCoach = new SwimCoach( happyFortuneService() );
  return mySwimCoach;
}
```

  - (NB: this doesn't use component scan).

* The method name becomes the bean ID!
*
* MY QUESTION: how is this much better than just doing all this in the main file anyway? Like if we're already making our own java objects in methods and passing them around, what is really different here??
