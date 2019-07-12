# Jenkinsfiles

* Can write in either declarative or scripted syntax (see pipeline notes)

## Syntax

* Can use `"string ${interpolation}"`
* Global variable `env` (available anywhere in jenkinsfile) holds various environment variables (e.g. `BUILD_ID`, `JOB_NAME`, `JENKINS_URL`), and can be used to stash more
* Can configure credentials in Jenkins to be used in pipelines
* The pipeline can accept user-specified parameters from `build with parameters`
  - will be accessible as members of the `params` variable
* Can use `try...catch...finally` in pipeline stage to handle failures, e.g. by sending a slack notification

## Scripted Pipeline Features

* Can run steps in parallel, saving time (e.g. test and build)
  - just define a `parallel` step
