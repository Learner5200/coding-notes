# Entities

* An entity class is just a Java class that's mapped to a database table.
* Put special annotations on it to make this happen.
  - people used to do it with an XML config file but this is legacy now


## Map class to DB table

* Take normal class
* Add annotations:
  - `@Entity`
  - `@Table(name="student")`
    - the name is optional assuming your class has the same name as the DB table

## Map fields to DB columns

* Add annotations to field:
  - `@Column(name="first_name")` maps to column
    - NB database tends to use snake case
    - otherwise again this is optional
  - `@Id` if it's an ID int

## Retrieving an object

*
