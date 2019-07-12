# RestAssured

* A framework/domain-specific-language for testing REST services in Java
  - https://github.com/rest-assured/rest-assured
* e.g:

```
given().
    param("key1", "value1").
    param("key2", "value2").
when().
    post("/somewhere").
then().
    body(containsString("OK"));
```

```
get("/lotto").then().assertThat().body("lotto.winners.winnerId", hasItems(23, 54));
```
 
