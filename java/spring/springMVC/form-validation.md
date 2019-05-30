# Validation

* Allows you to check user input for:
  - required fields
  - valid formats of input
  - any other custom business rule

## Bean Validation API

* Java has a standard Bean Validation API available for both client and server side apps
  - this is just a specification that can be implemented, e.g. by Hibernate (they have a separate validator independent from the ORM)
* Spring 4+ supports/prefers this method.
* Done via annotations, e.g:
  - `@NotNull`
    - use the Integer class for this
  - `@Min(value=5)`, `@Max(value=10)`
  - `@Pattern(regexp=/wfaegfwhbgkehb/)` - match some regex

## Required Fields

* In the model, just add some annotations to the fields in your class:
  - `@NotNull(message="is required, bro")`
  - `@Size(min=1, message="is required, bro")`
* In the view, display your errors:
  - `<form:errors path="firstName" cssClass="custom-error-class" />`
* In the controller, pass in your model object with some annotations to allow you to conditionally redirect:

```
  public String processForm(@Valid @ModelAttribute("customer") Customer customer, BindingResult bindingResult) {
    if (bindingResult.hasErrors()) {
      return "customer-form";
    } else {
      return "customer-confirmation";
    }
  }
```
  - `@Valid` says to perform validation rules on this object-->the results of this will be put in the BindingResult
  - The BindingResult parameter HAS TO come immediately after the model object, or it won't work properly

## PreProcessing

* A pre-processor does some initial processing on any request coming into our controller: e.g. to strip leading and trailing whitespace from params
* A method annotated with `@InitBinder` can be used to do this:
  - takes a `WebDataBinder` object, and can use this to register a custom editor for a class: e.g. to register a `StringTrimmerEditor` for `String.class`
* Before all our request mappings happen, the stuff in this InitBinder will happen to the request

## Custom validation

* Create custom Java annotation, e.g:

```
@Constraint(validatedBy = CourseCodeConstraintValidator.class)
@Target( { ElementType.METHOD, ElementType.FIELD } )
@Retention(RetentionPolicy.RUNTIME)
public @interface CourseCode {
  public String value() default 'LUV';
  public String message() default 'must start with LUV';
}
```

* Create an implementation of ConstraintValidator:
  - will initialize with an instance of your annotation interface
  - has an isValid boolean method
