# Maven

* Maven manages
  - builds (I guess this means it can compile your java files for you? Unclear.)
    - e.g. compiling down to binary
    - e.g. running tests
  - dependencies:
    - Maven provides a central repository for dependencies - can just add snippet to pom file and good to go
  - documentation
* Main rival is gradle

## Setting up Maven project

* Need to specify three things to uniquely identify your project:
  * Need a `groupID`:
    - identifies the organisation that is making a given 'build artifact' (Java compiled stuff)
    - typically use a **reverse domain name**: e.g. `com.organisationName`
  * Need an `artifactID`:
    - names the artifact you're making
    - e.g. `calculator`
  * Need a `version`:
    - e.g. `0.0.1`
    - e.g. `2.0.4 RELEASE` for final version

* All the dependencies you use will also have these things -> other project could depend on *our* artifact

## pom
* Maven configuration lives in `pom.xml`
* Will specify the above, and som,e other stuff.
* Can **inherit** from another pom file.
* Dependencies
  - Live under an HTML-style (XML I guess) <dependencies> tag.
  - Each one is in a <dependency> tag
  - Once you've added one, just tell it to update the project and it will download stuff for you (like `npm install`)
  -
* Build
  - can specify plugins etc.

## Structure

* Maven projects have a default folder structure:
* `src` contains your source code.
* There are distinct

## Command Line

* `mvn install` will inspect pom and use dependency manager to install dependencies and plugins from local/remote repositories
