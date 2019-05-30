# Beans

  * In Spring, the objects that form the backbone of your application are called **beans**.
    - Beans don't have to be true JavaBeans (see note), but often are.
  * Beans are instantiated, assembled and managed by a Spring IoC container.
    - other than this, they are just objects among the many objects in your application.
  * Beans are defined in the metadata with:
    - fully qualified class name (preceded by package etc)
    - behavioural configuration
    - dependencies/collaborators (other beans needed for it to do its work)
    - any other config
  * * Can specify different 'scopes' for your beans, e.g:
    - singleton: by default, Spring maps a single bean definition to one specific object instance, which any bean that requests this ID will get
    - prototype: will create a new bean instance every time a request for that bean is made
  * Bean definitions can inherit config from other bean definitions
  * Can configure lifecycle: e.g. stuff to do on creation/destruction

  * To load beans into your code, assuming you have an `applicationContext.xml` file:

  ```
  ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");

  Coach theCoach = context.getBean("myCoach", Coach.class);
  ```
  * I guess this is what you do in your main class - and any dependencies will be loaded in too when you do this?
    - So can just do `getBean` and use your object and don't have to worry about all your other dependencies etc.
