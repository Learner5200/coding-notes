# Multibranch pipeline

* Allows you to implement different jenkinsfiles for different branches of the same project
* When you set it up it will scan and create appropriate items for each branch in the repo which contains a jenkinsfile

* Can use env `BRANCH_NAME` in jenkinsfile to refer to the branch for which the pipeline is executing --> allows you to do different stuff for different branches

* Can use `Organization Folders` to enable Jenkins to monitor an entire Github Organisation or Bitbucket Team/Project, and automatically create multibranch pipelines for repos with a jenkinsfile
