# Generics

* Difference between `List<Integer> list = new LinkedList<>()` and `List list = new LinkedList()` - guarantees specific type to be held in collection

* (I think) the `LinkedList<>()` constructor here is a generic method.

## Generic Methods

* Allow programmers to use a single method declaration to specify a set of related methods for different types:
  - e.g. a single sort method that could sort the elements in an array of any type that supports ordering
  - e.g. a single converter method that can convert an array of any type to an ArrayList

## How to define them:

* Example:

```
public class GenericMethodTest {
   // generic method printArray
   public static < E > void printArray( E[] inputArray ) {
      // Display array elements
      for(E element : inputArray) {
         System.out.printf("%s ", element);
      }
      System.out.println();
   }

   public static void main(String args[]) {
      // Create arrays of Integer, Double and Character
      Integer[] intArray = { 1, 2, 3, 4, 5 };
      Double[] doubleArray = { 1.1, 2.2, 3.3, 4.4 };
      Character[] charArray = { 'H', 'E', 'L', 'L', 'O' };

      System.out.println("Array integerArray contains:");
      printArray(intArray);   // pass an Integer array

      System.out.println("\nArray doubleArray contains:");
      printArray(doubleArray);   // pass a Double array

      System.out.println("\nArray characterArray contains:");
      printArray(charArray);   // pass a Character array
   }
}
```

* Have a type parameter section <E> in angle brackets before the return type - declares **type parameters** that we can use in the arguments/body of the method.
* Can define generic classes too:


```
public class Box<T> {
   private T t;

   public void add(T t) {
      this.t = t;
   }

   public T get() {
      return t;
   }

   public static void main(String[] args) {
      Box<Integer> integerBox = new Box<Integer>();
      Box<String> stringBox = new Box<String>();

      integerBox.add(new Integer(10));
      stringBox.add(new String("Hello World"));

      System.out.printf("Integer Value :%d\n\n", integerBox.get());
      System.out.printf("String Value :%s\n", stringBox.get());
   }
}
```

* e.g. the Box above can store and return a variable of a particular type.
* This is how e.g. ArrayLists work.
