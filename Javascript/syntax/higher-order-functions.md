# Higher order functions

* Functions that take or return other functions.
* A functional programming thing that JS can do.
* Allows for function **composition**.

## Filter

* Calling `collection.filter(function)` returns the items of the array that return true from that function.

## Map

* Calling `collection.map(function)` returns a new collection with each item transformed according to the function.

## Reduce

* The idea of reduce is to receive a function and a collection, and return a value created by combining the items in some way (e.g. summing a running total or multiplying to get a running product)
* `collection.reduce(function, start)` () where the function takes a parameter for the running total and a parameter for the current item and does something to produce a new running total) will return the overall running total, if we start with `start`
* An example will clarify this butter:

```
let shoppingCart = [
  { productTitle: "Product 1", amount: 10 },
  { productTitle: "Product 2", amount: 30 },
  { productTitle: "Product 3", amount: 20 },
  { productTitle: "Product 4", amount: 60 }
];

const sumAmount = (currentTotalAmount, order) => currentTotalAmount + order.amount;

function getTotalAmount(shoppingCart) {
  return shoppingCart.reduce(sumAmount, 0);
}

getTotalAmount(shoppingCart); // 120

```
