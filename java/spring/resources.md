# Resources

* There is a `Resource` interface that resource objects can implement. They must be able to:
  - say whether they exist
  - give a description
  - say whether they're an open stream
  - `getInputStream()` - located and opens resource, returning an input stream

