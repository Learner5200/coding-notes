# Docker with Pipeline

* Can easily use Docker images from DockerHub as execution environment for single stage, or for entire pipeline-->allows you to use tools packaged in docker container


```
node {
    /* Requires the Docker Pipeline plugin to be installed */
    docker.image('node:7-alpine').inside {
        stage('Test') {
            sh 'node --version'
        }
    }
}
```

* Can also build and run a container from a Dockerfile in the source repo instead of pulling them, off the shelf from DockerHub:

```
pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
                sh 'svn --version'
            }
        }
    }
}
```

* Can build image from dockerfile:

```
node {
    checkout scm
    def customImage = docker.build("my-image:${env.BUILD_ID}")
    customImage.push()
}
```
