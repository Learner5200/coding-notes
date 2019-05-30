# SonarQube

* A product by SonarSource, who make a variety of code quality tools (e.g. SonarLint) to analyse:
  - maintainability (e.g. code smells, modularity, testability, other best practices)
  - reliability (potential bugs)
  - vulnerabilities (security issues)

* Used for **continuous inspection** of code quality - automatic **static analysis** of code

## Features

* Various metrics:
  - overall health
  - 'leaks' from last 30 days
* Issues can have different severities:
  - blocker
  - critical
  - major
  - minor
  - info
* Can analyse PRs
* Has a 'quality gate' you can set to determine whether application is ready for production or not
* Integrates with entire DevOps toolchain: build systems, CI engines, etc
  - uses webhooks and a REST API

## Architecture

### SonarScanners

* Can have one or more of these running on your Build/Continuous Integration servers-->these analyse the code in your projects and ship report off to the server
  - e.g. configure Jenkins to do SonarQube stuff

### SonarQube Server

* Web server for developers to browse the quality snapshots in the database and configure SonarQube
* Search server backed by Elasticsearch to back searched from the UI
* Compute Engine Server in charge of processing code analysis reports and saving them in the SonarQube database
*
* Setting up your SonarQube server is the main bit of work

### SonarQube Database

* Stores configuration
* Stores the **quality snapshots**

### Plugins

* Can have many plugins installed on the server


### Flow

1. Developers code in their IDEs and use SonarLint to run local analysis.
2. Developers push their code into their favourite SCM : git, SVN, TFVC, ...
3. The Continuous Integration Server triggers an automatic build, and the execution of the SonarScanner required to run the SonarQube analysis.
4. The analysis report is sent to the SonarQube Server for processing.
5. SonarQube Server processes and stores the analysis report results in the SonarQube Database, and displays the results in the UI.
6. Developers review, comment, challenge their Issues to manage and reduce their Technical Debt through the SonarQube UI.
7. Managers receive Reports from the analysis. Ops use APIs to automate configuration and extract data from SonarQube. Ops use JMX to monitor SonarQube Server.
![sonarqube diagram](images/2019/05/sonarqube-diagram.png)
