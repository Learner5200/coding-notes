# MVC and Sinatra App Structure

## Separation of concerns

* Separation of concerns is important.
* MVC (Model-View-Controller) is an architectural pattern that separates an app into three components: model, view and controller

* Here is an example of an MVC file structure:

![MVC file structure](images/2018/10/mvc-file-structure.png)


## Model

* Models represent the data and object logic of an app
* Typically represent either a component of the app (e.g. User, Customer, Article, Comment) or a unit of work
* Each model file typically = a different class.
  - e.g. 'customer.rb' contains the class for a Customer object that retrieves info from database, manipulates it and uses it to render data
* **The idea of a model is to let us basically write our 'normal' ruby code, OOP style.** The controller gives the web access to this code.
* If the model stands independently, we can re-use it with many different controllers

## Views

* Views are used for all the UI logic of an application: included text boxes, dropdowns, other visuals.
* Views should be responsible for *presenting* some output, not for calculations etc.
  * The logic in a view should be limited to some light conditionals, and some light iterators.
  * Logic should be pushed down the stack: controllers should deal with mid-weight stuff, and other layers (models) with anything heavy.
* In Sinatra
  * Keep views as .erb files in a views directory
  * Views can make use of instance variables defined in the `get` blocks etc in the routes file.
    * make sure you use `<%=` tags in the erb to interpolate them

## Controller
* Controllers represent the *application logic*, and act as an interface between models and views
* This is where app configurations, routes and controller actions are implemented
  - e.g. get relevant data from model, give it to the view
  - e.g. get inputs from view, use to update database via model
* Usually contain a class (`ApplicationController`, inheriting from `Sinatra::Base`) representing an instance of your app when the server is running
  - (in simple projects you might instead just have 'app.rb' in the root directory)
* We want our controllers to implement no more than a small amount of routing logic; anything bigger should be in the Model layer
  - Ideally we pass only a single variable through to a given view. This will probably be some variable that lets use access other stuff (e.g. via hash keys or object methods)

## Other parts of a Sinatra app

### config.ru

* Need a `config.ru` file when using shotgun to start the server
* Responsible for loading app environment, code and libraries, and specifying which controller to use

### environment.rb

* Should have a config directory with an `environment.rb` file
* This file loads Bundler (and thus all the gems in the Gemfile) and the app directory
* It is used to connect files to eachother/gems

### public directory

* Contains front-end assets
* e.g. `css` directory with stylesheet
* e.g. javascript directories
* e.g. image files

### spec directory

* Contains tests for applications
