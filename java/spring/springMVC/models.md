# The Spring Model

* Models in Spring are basically just containers for your application data.
* There is actually a `Model` class in spring.

## From your Controller:
* You can put anything in the model - strings, objects, etc - as an **attribute**
* You can pass through a `Model model` in the params of your controller method, and add attributes to this model object as key value pairs (`model.addAttribute("key", value)`)
* Can access a particular model attribute by binding it to a parameter with an annotation:
```
String processForm(@ModelAttribute("student") Student student) {

}
```


## In your Views:
* You can access data from the model by using the attribute name in a tag like this: `My name is ${name}`
