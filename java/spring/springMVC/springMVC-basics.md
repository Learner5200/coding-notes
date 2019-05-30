# Spring MVC

* Framework for building web apps in Java using the MVC design pattern
* Uses all the Spring framework stuff to help with this.


## Benefits

* Leverage a set of resuable UI components (Spring JSP custom tags)
* Can manage application state (sessions etc)
* Process form data: has validation etc.
* Flexible configuration for views

## Components of a Spring MVC application

* Set of web pages to lay out view components
* Collection of Spring beans: controllers, services, etc.
* Spring configuration (XML, annotations or pure Java)

## Flow of information

* Browser sends request in to Front Controller, known as a **DispatcherServlet**
  - we don't have to create/edit this, it's ready-made.
* This delegates request to the **Controller**
  - handle the request
  - interact with model
  - store/retrieve data from database, web service, etc.
  - pass model to view template
* The **model**
  - stores any data coming in from user input or extracted from database/web service
  - used to share data between different parts of the SpringMVC system
  - (what about business logic methods etc??)
  - model data can shown up in view template
* **View Template**
  - Spring can support many kinds - most common is **JSP** combined with **JSTL**
  - contains any hich is kind of like ERB, and this gets given back in a response to the browser.
