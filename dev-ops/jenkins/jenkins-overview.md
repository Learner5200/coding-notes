# Jenkins

## Jenkins in general

* An open source **'automation server'**
  - hundreds of plugins to support building, deploying and generally automating any project
* Model is there's a base Jenkins - a self-contained program written in Java ready to run out-of-the-box on any OS you like - and then there's hundreds of plugins to extend it
* The classic use case is as a **continuous integration** tool, i.e.
  - developer checks in source code
  - Jenkins picks this up, runs test, builds, anything else desired
  - optionally, Jenkins might deploy, or do any other automated task you'd like (e.g. linting)

## Basic usage

* Download/install Jenkins using `brew` etc.
* You run jenkins and it creates a UI on top of a REST API to let you do stuff - your own Jenkins instance


![extending jenkins](images/2019/06/extending-jenkins.png)

## Jenkins pipeline

* While you _can_ use the UI to create scripts for automation, the best practice is to make a **pipeline script** called a **Jenkinsfile** that gets checked into your repo
  - Allows you to model various pipeline-related processes **as code**
* You must start a pipeline project on the Jenkins UI and configure it to use SCM, pointing it to a repo with a Jenkinsfile in as a source for the job
  - once configured, when you update the designated repository a new build will be triggered
