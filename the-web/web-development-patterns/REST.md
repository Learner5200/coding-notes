# REST

## 'Representational State Transfer'

* REST is an _architectural style_. It defines a set of constraints for creating web services.
* URLs each map onto some **resource** with a unique ID.
  - A resource is like an object in OOP: a **noun** that matches some real world thing.
  - Typically something that gets created, read, updated or deleted (CRUD).
* Under REST, we use one url for all four of the CRUD actions applied to any single resource.
  - CREATE - POST /restaurants
    - (no id because not created yet!)
  - READ - GET /restaurants/123
  - UPDATE - PATCH /restaurants/123
  - DELETE - DELETE /restaurants/123

* Ultimately, REST is all about resources (nouns) and actions to be performed on them (verbs)

## Routes in a RESTful app

* In a web app, you will want routes for the CRUD of any given resource.
* You will also typically want routes for (at least):
  - listing all the records for a certain resource
  - showing a form to enter details of a new record
  - showing a form to enter new details for an existing record
* For example:

```sh
Verb    URI Pattern            Controller#action
------  ---------------------  ------------------
GET     /restaurants           restaurants#index
POST    /restaurants           restaurants#create
GET     /restaurants/new       restaurants#new
GET     /restaurants/:id/edit  restaurants#edit
GET     /restaurants/:id       restaurants#show
PATCH   /restaurants/:id       restaurants#update
PUT     /restaurants/:id       restaurants#update
DELETE  /restaurants/:id       restaurants#destroy
```

## RESTful APIs

* For when we don't need to get HTML back, but just want to send and receive data.
* Typically exchange data in JSON format (but can be XML, other things)
* Six constraints for RESTful API, from a theoretical standpoint:
  * **Client server architecture** separates concerns (e.g. the backend doesn't care about UI)
  * **Stateless**: no session or other client context is stored on the server, it just processes stuff, touches the database and sends a message back
    - this is important: if it's just an API, the server ain't gonna be managing our session!!
  * **Cacheability**: responses must define themselves as cacheable or non-cacheable (see caching notes)
    - typically all GET requests are cacheable, POST requests aren't usually, PUT/DELETE never are
    - HTTP headers specify when cache expires, cache control directives, last modified, etc.
  * **Layered System**: intermediate servers can be used without the client knowing about it
  * **Uniform interface**: resources are clearly identified in requests.
    - data that is transferred is decoupled from DB schema

* **THESE ARTICLES ARE INSANELY USEFUL:** https://learn.co/lessons/sinatra-restful-routes-readme
https://learn.co/lessons/sinatra-dynamic-routes-codealong
