# Annotations

* Metadata about an object or method for the compiler to read.
* Written like `@Override`

## Custom Annotations

* Special type of interface, define as `public @interface MyAnnotation {}`
* Add some annotations to the definition itself that tell you constraints, what targets you can apply it to, retention policy.
* Define interface methods - act as parameters for the user to put in. Can set a default here.
