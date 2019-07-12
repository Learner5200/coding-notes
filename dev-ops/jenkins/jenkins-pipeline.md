# Jenkins Pipeline

## Syntax

* Jenkinsfiles for pipelines can be written in the **declarative** or **scripted** style:

### Declarative pipeline

* Written in Groovy-compatible syntax (see note)
* Has an outer **pipeline** block to invoke the pipeline plugin, an **agent** to define where you want to run the pipeline (e.g. any, or in a container), and one or more **stages**:

```
pipeline {
    agent any

    stages {
        stage(‘Build’) {
            steps {
                echo ‘Building..’
            }
        }
        stage(‘Test’) {
            steps {
                echo ‘Testing..’
            }
        }
        stage(‘Deploy’) {
            steps {
                echo ‘Deploying....’
            }
        }
    }
}
```

```
pipeline {
    agent { docker ‘node:6.3’ }
    stages {
        stage(‘build’) {
            steps {
                sh ‘npm —version’
            }
        }
    }
}
```

* Easier to use and can express most things.

### Scripted pipeline

* Uses a special syntax (a Groovy based DSL) - gives you more precise control for advanced usage

```
node(‘docker’) {
    checkout scm
    stage(‘Build’) {
        docker.image(‘node:6.3’).inside {
            sh ‘npm —version’
        }
    }
}
```

* This node step, with `checkout scm`, is crucial - gives us access to source code of the project in workspace to do stuff with it
  - `checkout scm` instructs the checkout step to clone the specific version which triggered this pipeline run
* Can incorporate a Groovy script using `load`

## Stages

* Some typical stages, each conditional on the last :

### Build

* Will invoke build commands to compile your code into an executable kind of thing - e.g. with `maven` or `make`

### Test

* When there are test failures, it's useful to have Jenkins record them for reporting/visualisation in the UI
* Various plugins assist with this (e.g. junit plugin)

### Deploy

* Can imply a variety of different steps, e.g:
  - publishing build artifacts (e.g. docker images to dockerhub/ECR, helm charts to ChartMuseum)
  - publishing code to a production system
