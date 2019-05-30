# Spring

## What is Spring

* In short, it's a web framework. Think of it like Rails or something.
* Can do quite a lot - a comprehensive infrastructure for making Java applications
  - e.g. had dependency injection out of the box
* Meant to be lightweight, relatively speaking
* Divided into modules from which developers can pick and choose


## What is Springboot

* An extension of Spring that eliminated boilerplate config for setting up a Spring application.
* A more opinionated flavour of Spring (**convention over configuration!**) intended to speed things up
* e.g.:
  - starter dependencies to set you up: e.g. `spring-boot-starter-test` includes JUnit, Hamcrest, Mockito, etc.
  - embedded server

## Spring Manages Object Instances Via Application Context and Dependency Injection

* Spring creates a wrapper to contain all your object instances, so they can be re-used rather than redundantly re-created
  - this is called the **Spring Application Context**
* Spring will also connect objects together in the way you specify
  - can specify that one object needs to depend on an instance of class A and an instance of class B
  - Spring will **inject those dependencies** to make sure that every object has references to all the instances they require

## Database Connectivity

* Traditionally, had to use something painful called JDBC to connect, which was lame.
* Spring comes with different **data access APIs** to help you work with databases. Makes everything a lot easier.

## Web Applications with Spring MVC

* Spring comes with a web framework called **SpringMVC** - this is what handles the web stuff.
* e.g. dynamic web page applications, REST APIs.

## The Spring Ecosystem

* The Spring framework is the original open source project.
* Not just one thing - lots of projects in the Spring family that can handle things like e.g. security, that have been built on top of the Spering framework.
