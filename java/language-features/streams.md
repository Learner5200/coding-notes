# Streams

* NB: _not_ the same as I/O streams - completely different things
* https://stackify.com/streams-guide-java-8/

## Overview

* Streams are **wrappers around a data source** that allow convenient functional programming style methods like inject, filter, etc.
* Streams don't modify the underlying data source

## Usage

* Many ways to build:
  - `Arrays.stream(array)`
  - `Stream.of(array)`
  - `Stream.of(item, anotherItem, anotherItem)`
  - `specificList.stream()`
  - with stream builder

* Example operations:

### forEach

`empList.stream().forEach(e -> e.salaryIncrement(10.0));`

* Considered a 'terminal operation' - stream will be 'consumed' and cant be used afterwards. Weird.

### collect

* Provides convenient way to get back to an array/list if needed

`List<Employee> employees = empList.stream().collect(Collectors.toList());`

### map

```
List<Employee> employees = Stream.of(empIds)
      .map(employeeRepository::findById)
      .collect(Collectors.toList());
```

### filter

* Provides new stream filtered from original stream

```
List<Employee> employees = Stream.of(empIds)
      .map(employeeRepository::findById)
      .filter(e -> e != null)
      .filter(e -> e.getSalary() > 200000)
      .collect(Collectors.toList());
```

### findFirst

* Returns an **optional** for the first entry in a stream. Can then check if it's empty, unpack it, etc.
```
Employee employee = Stream.of(empIds)
      .map(employeeRepository::findById)
      .filter(e -> e != null)
      .filter(e -> e.getSalary() > 100000)
      .findFirst()
      .orElse(null);
```

### toArray

`Employee[] employees = empList.stream().toArray(Employee[]::new);`
