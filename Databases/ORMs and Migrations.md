# Object Relational Mappers

* About taking SQL tables and **abstracting them into objects in the code**
* (database is a lightweight ORM built for ruby, usually used with sinatra)


## Database First
* Some ORMs  generate a class for you based on what's in your database, with:
  - instance variables/methods based on its columns
  - class methods like .all, .create, etc.

## Class First
* Write classes in ruby first
* Code will then generate database tables with appropriate stuff
* This tends to be more popular these days
  - we tend to deploy code, not databases, so it's more useful to have the code generate the database rather than the other way around
  - if someone else is using the codebase, it will generate all the database stuff they need from the code we've pushed

## Useful points

* still worth being aware of what's in your database


## When would you not use an ORM

* Abstractions leak, and can be inefficient--> sometimes you would remove the ORM for performance reasons
  - If your API relies on high performance, you might want to optimise your SQL queries to meet your specific needs in a way that an ORM won't

## Migrations
* Migrations are about updating the structure of your database tables
* Migrations are a set of definitions for changes to your database, kept in a table (I think?))
* Your database takes snapshots after each update
* In a new environment, it can figure out where in the series of steps the database is, and run all the migrations needed to get to the right state
* NB: migrations can include removing stuff!
* Most migrations can also be undone
