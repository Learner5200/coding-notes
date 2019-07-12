# Behaviour driven development

* A development approach where team members explore/build a shared understadning of application requirements early on:
  - e.g. 'three amigos'/three-way handshake where BA, developer and tester define and agree on acceptance criteria
* End up turning a user story into a formal given-when-then format:

```
Scenario: Adding an item to a list with other items in Cucumber
  Given that Jane has a todo list containing Walk the dog, Put out the garbage
  When adds a todo item called: Buy some milk
  Then her todo list should contain Walk the dog,Put out the garbage,Buy some milk
```

* The idea is that with a tool like **cucumber**, **acceptance criteria** can be written in this plain English given-when-then format and then executed to verify them in an **acceptance test**
  - 
