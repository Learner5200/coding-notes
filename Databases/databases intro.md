# Intro to databases

* Instead of storing data awkwardly in models, we will now implement a database for models to interact with.

* A database is just some data organised in a way that's optimal for storage and retrieval of its data

* Four ways to interact with a database
  - **C** reate
  - **R** ead
  - **U** pdate
  - **D** elete  

## Relational databases

* Set of formally described tables.
* Has columns (attributes)
* Has rows (tuples/entries)
* Tables each have a *primary key*: some attribute with unique values for every entry in the table.
* Tables can have several *foreign keys*: primary keys from other tables.
  - e.g. table of users has primary key identifying users. This user ID key can turn up (with multiple identical instances) as a foreign key in another table.
  - Think about ownership when assigning foreign keys etc. If users have profiles, then profiles should have a user id column rather than users having a profile id.
    - if one entity wouldnt exist without the other, then that is the entity that should have the foreign key referring to the main primary key in the owner (i.e. the more fundamental entity)
  - Foreign keys in databases are basically a form of validation to make sure that some relationship between two things retains its integrity
    - it adds a constraint so that your profile's user id has to match some actual user.


## PostgreSQL
* PostgreSQL is a server that runs a database
* It's a popular system for modern web development.
*

## Creation vs migration
* **Creation** is building an empty, structureless table in a database
* **Migration** is building the structure you want: columns etc.


## Alternatives to classic relational databases
* In-memory (local) databases
* NoSQL/Hadoop
  - sometimes called 'not only SQL': they can support SQL or sit alongside it
  - uses different data structures, depending on the problem needed to solve
  - compromises consistency in favour of availability, speed, scalability
