# Querying

* Hibernate has a specialised language called **HQL** which allows you to do SQL-like queries.
* Looks like it uses variable names etc. from the linked Java object, rather than the columns in the tables.
* Examples:

```
List<Student> theStudents = session.createQuery("from Student s where s.lastName='Doe'")
  .getResultList();
```

* Can do any of the usual SQL stuff, giving you some extra flexibility in your CRUD options etc
