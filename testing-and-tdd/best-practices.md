# Best Practices

## Write the tests you wish you had

* Write them using readble functions that don't exist yet: e.g.

```
signup()
login()
expect(page).to_have...
```

* Write helpers after the fact.

## It's fine to write your code in a way that makes it easy to test

* e.g. dependency injecting the fetch function into your function, so that you can easily pass your fake fetch in rather than overriding in your tests.
