# Sessions

## SessionFactory

* Reads the hibernate config file
* Creates session objects
* Only create this once in your app and re-use it:

```
SessionFactory factory = new Configuration()
  .configure("hibernate.cfg.xml") // will look for this file name by default if you don't put this configure line in
  .addAnnotatedClass(Student.class)
  .buildSessionFactory();
```

* When you're done with it, do `factory.close()`
  - good to do in the second half of a `try...finally...` block

## Sessions

* A **session** is a wrapper around a JDBC connection to the database.
* Temporary object used to save/retrieve objects from database
* Retrieved from SessionFactory - get a new one each time you need to interact with the DB

```
Session session = factory.getCurrentSession();
```

* To make a transaction:
  - `session.beginTransaction();`
  - do your stuff, e.g. `session.save(student);`
  - `session.getTransaction().commit();`
