# Controllers

## Setting up a path in the controller

* **Create a Controller class**, annotated with `@Controller`
  - this annotation inherits from `@Component`, and so supports component scanning
* **Create a method in the controller** to handle a request
  - e.g. `showMyPage()`
* Add a **request mapping** annotation to the controller method:
  - e.g. `@RequestMapping("/")`
* Fill out the method
  - e.g. return a view: `return "main-menu"`
  - NB: "main-menu" here is the name of a view, without prefix and suffix


## The request object and parameters

* Can pass in an `HttpServletRequest request` object as a parameter to your method.
* This object has a bunch of useful methods to get info from the request:
  - `request.getParameter("paramName")` will get you a parameter
* Instead of passing in the whole request object can also put an annotation on a method parameter to bind a specific request parameter to it:

```
public String shoutify(@RequestParam("studentName") String name, Model model) {

}
```

## Controller Request Mapping

* Can map a particular path (e.g. `/products`) to an entire controller, so that it handles all requests to paths that start with that stub (e.g. `/products/new`):

```
@Controller
@RequestMapping("/products")
public class ProductsController {

  @RequestMapping("/new")
  public String newProduct() {

  }
}
```

* Can help you organise/namespace your routes, avoid conflicts
* NB: will NOT have to update paths mentioned in your views as long as they are without a '/' (e.g. `action='processForm`) as these are relative to the current path.
