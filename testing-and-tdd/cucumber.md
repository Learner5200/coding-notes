# Cucumber

* Cucumber reads executable specifications written in plain text and validates that the software does what those specifications say. The specifications consists of multiple examples, or **scenarios**. For example:

```
Scenario: Breaker guesses a word
  Given the Maker has chosen a word
  When the Breaker makes a guess
  Then the Maker is asked to score
```


## Gherkin

* The basic syntax rules of cucumber are called **Gherkin**
* Gherkin has three purposes:
  - Unambiguous **executable specification**
  - **Automated testing** using Cucumber
  - **Documentation** of how the system actually behaves  


## Step definitions

* Do the heavy lifting by mapping Gherkin steps to programming code
  - can be written in different languages
  - can take parameters
* Often outsource processing to step libraries

## Feature files


* Gherkin tests are stored in `.feature` files, and will contain assertions like the above
  - the idea is that developers should write these before implementing stuff
* Will start by naming the feature, and some free-form text to put e.g. user stories etc:

```
Feature: Guess the word

  The word guess game is a turn-based game for two players.
  The Maker makes a word for the Breaker to guess. The game
  is over when the Breaker guesses the Maker's word.

  Example: Maker starts a game
```
  - Can put tags at this level as well

### Scenarios

* Can set up **scenarios** (also known as examples), comprised of several Given/When/Then steps defined by your step library - this is the **executable specification**
* Each step starts with `Given`, `When`, `Then`, `And` or `But`
  - cucumber will look for a matching step definition to execute

```
Given my account has a balance of £430
Then my account should have a balance of £430
```
### Backgrounds

* Can use a **Background** to group together `Given` setup

### Scenario Outlines

* Used to run the same Scenario multiple times, with different combinations of values
* Can use a **Scenario Outline** to setup a given-when-then test case with variables, and then use **Examples** (or alias **Scenarios**) below to define all the different values for those variables you would like to test

```
Scenario Outline: eating
  Given there are <start> cucumbers
  When I eat <eat> cucumbers
  Then I should have <left> cucumbers

  Examples:
    | start | eat | left |
    |    12 |   5 |    7 |
    |    20 |   5 |   15 |
```


## Different steps

### Given

* Describe the initial context - configure the system into a known state before the user interacts with it.

### When

* Describe an event or action (e.g. triggered by the user or another system)
* Strongly advised that there be only one **When** step per scenario

### Then

* Describe an expected outcome/result
* Step definition should use an assertion to compare the actual outcome to the expected outcome, **based on observable outputs**!! (i.e. don't just look into the database etc)

### And/But

* Use to make it more fluent when you have multiple Given or Then steps


## Step Arguments

* **Doc Strings** let you pass larger pieces of text to the step definition code:

```
Given a blog post named "Random" with Markdown body
  """
  Some Title, Eh?
  ===============
  Here is the first paragraph of my blog post. Lorem ipsum dolor sit amet,
  consectetur adipiscing elit.
  """
```

* **Data Tables** let you pass what I assume are maps/hashes through:

```
Given the following users exist:
  | name   | email              | twitter         |
  | Aslak  | aslak@cucumber.io  | @aslak_hellesoy |
  | Julien | julien@cucumber.io | @jbpros         |
  | Matt   | matt@cucumber.io   | @mattwynne      |
```
