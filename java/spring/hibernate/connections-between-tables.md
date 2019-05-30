# Connections between tables

* How do we model one-to-one, one-to-many, and many-to-many mappings?


## One to One

* Use SQL scripts to create:
  - the table for the referenced entity (e.g. Instructor Detail)
  - the table for the referencing entity (e.g. Instructor), with a foreign key constraint referencing your main table
* Create the classes:
  - your Instructor class will have a field for its InstructorDetail - annotate this with `@OneToOne` and `@JoinColumn(name="instructor_detail_id")`
  - `@OneToOne` says what kind of mapping it is, and `@JoinColumn` indicates that it links to a foreign key column
* Create instances of the relevant entities and set the dependency
* Save the referencing instance-->should save all of it, depending on the cascade policy.
* Can specify cascade types:
  - **persist** - if entity persisted/saved, related one is too
  - **remove** -  if entity deleted, related one is too
  - refresh
  - detach
  - merge
  - all of above

### Bi-directional mapping

* Both classes/tables have references to one another
* Can do this with the same database schema, just by updating the Java code:
  - add a new field to InstructorDetail to reference Instructor, with getter/setter methods
  - use the annotation `@OneToOne(mappedBy="instructorDetail")`
    - refers to the `instructorDetail` property that exists in the Instructor class!
    - Hibernate can use this information to find the right instructor row for you, basically reverse engineering the one way relationship
