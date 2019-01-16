# REST

## Representational State Transfer

* REST is an _architectural style_. It defines a set of constraints for creating web services.
* URLs each map onto some **resource**
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

* **THESE ARTICLES ARE INSANELY USEFUL:** https://learn.co/lessons/sinatra-restful-routes-readme
https://learn.co/lessons/sinatra-dynamic-routes-codealong
