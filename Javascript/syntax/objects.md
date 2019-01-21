# Objects

* JS objects look a lot like ruby hashes, i.e. collections of keys ('properties') and values
  - car = {type: "Fiat", model: "500", color: "White"};
    - properties can be accessed using dot notation as well as square brackets: `car.type == car[type] == "Fiat"`
  - *methods* are just properties that are assigned to function objects:
    - `person = {fullName: function() {return this.firstName + this.lastName}}`
    - can access with brackets to call the method, or without to return the method definition
  - 'this' refers to the 'owner' of the function - i.e. self
