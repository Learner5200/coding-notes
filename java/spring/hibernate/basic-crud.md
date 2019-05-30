### Create an object

* Create the object
* Call `session.save(myObject)`
  - NB this returns an ID that can be typecast to an Integer

### Read an object

* Can get an object of a given class by ID.
* `Student student = session.get(Student.class, id);`

### Update an object

* Get the object as above
* `student.setFirstName("Scooby")`
* When you commit the transaction, it will update the database too.

### Delete an object

* Get the object.
* `session.delete(student)`


* Can also do the above via HQL queries, for greater flexibility (e.g. deleting by condition).
