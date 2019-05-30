# Forms in Spring

* Spring has re-usable form tags that generate HTML for you and support data binding. cf. Rails
*


## How to use forms for data binding - basics

* **Data binding** allows us to generate/fill out objects automatically from forms

* Before you show the form, add an attribute to your model with a new empty object:

```
model.addAttribute("student", new Student());
```
* At beginning of the JSP file with the form in, specify the Spring namespace: `<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>`
* Make a form with the SpringMVC form tags in your JSP file (you can make various inputs etc).

```
<!-- The `modelAttribute` must have the same name as the attribute you just created. -->
<form:form action="pathToGoNext" modelAttribute="student">

  <!-- The paths must equal properties in your object/bean, which will get filled -->
  First name: <form:input path="firstName" />
  Last name: <form:input path="lastName" />

  <input type="submit" value="Submit" />
</form:form>
```

* For the **path** in the form input, the value in the input will be populated by calling the **getter** ( `getFirstName()` etc.), and will be empty if this is null.
* When the form is submitted, Spring will call the **setter** (e.g. `student.setFirstName()`) with whatever the user entered.
* When all is said and done, our model will now have a Student object, under the "student" attribute, with all these properties - which we can access in the controller as specified in my `models` note. From here we can e.g. put it into the database.


* If I'm correct, this essentially saves us having to individually get the parameters after form submission and use them to construct a new student to then save into the model.


## Specific form elements

* I won't go into detial on all of these - can look it up when needed.

### Drop downs

* Like with inputs, you specify a path: `<form:select path="country">`
* For each option, you have a label that gets shown and a value that gets assigned to the property at that path: `<form:option value="BRA" label="Brazil" />`
* Can also pass a hashmap: `<form:options items="${modelObject.hashMapOfOptions}">`


## Iteration

* If you set your taglib uri to the appropriate thing you can get the `jstl core` tags, which allow you to do things like loop over an array with `forEach` and put a bullet point in for each thing.
* e.g:

```
<ul>
  <c:forEach var="i" items="${modelObject.someArray}">
    <li> ${i} </li>
  </c:forEach>
</ul>
```
