# Jackson

* Jackson is a java library to serialise or map java objects to JSON and vice versa
* `@JsonInclude` - I  think that this specifies that all fields of a class are going to be serialised into JSON
* `@JsonProperty` - I think this flags that a field is going to be serialised as a JSON property
* `@JsonIgnoreProperties(ignoreUnknown=true)` - I think this means don't serialise anything you don't recognise
* I THINK these objects can be returned from request methods in a controller and just magically turned into json.
  - and any similar objects they may have as fields would then be nested
