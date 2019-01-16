# Rakefiles

* Most projects have setup code that you want to do in any environment (test, staging, production, local)
* examples
  - pre-processing of data
  - migrations
  - database setup

* Rakefiles are for organising these scripts.

* Don't need to put things in that are purely for testing purposes (e.g. truncating the databases maybe doesn't need to be in the databases)
