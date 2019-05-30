# Default Parameters

* Primary way to do this is via **overloading**:
  - e.g. with constructor overloading:

```
public Rectangle() {
  this(1, 1);
}
public Rectangle(int width, int height) {
  this.width = width;
  this.height = height;
}
```

  - e.g. with method overloading:

```
public void becomeOlder() {
    this.becomeOlder(1);
}

public void becomeOlder(int years) {
    this.age = this.age + years;
}
```
