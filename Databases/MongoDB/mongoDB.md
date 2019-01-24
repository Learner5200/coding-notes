# MongoDB

* MongoDB is a document database (classified as a noSQL database) typically used for Node backends.
* It stores data in JSON-like documents, whose fields can vary --> data structure can be changed over time.


## The document model
* (don't confuse with the DOM...)
* Replaces classic tabular structure of relational databases with JSON-like (BSON) **documents** with dynamic schemas
* Values of fields may include other documents, arrays, and arrays of documents - not just one value.
* Maps to the objects in your application code, making data easier to work with

## Collections

* Documents are stored in collections, which are analogous to tables in relational databases
* No requirement that all collections must share some schema - **schema-less design**
* Each document in a collection must have a unique \_id field that acts as a primary key.

## Relationships

* Relationships between data can be stored as **links** (references) from one document to another - I guess like foreign keys
* They can also be stored via embedded data models: storing another document as the value of a field

![mongo vs sql](images/2019/01/mongo-vs-sql.png)

## How to use it

* Can install it on machine
* **MongoDB Atlas** is MongoDB on the cloud - can get started for free.
  - 'database as a service', saves you doing a lot of stuff.
