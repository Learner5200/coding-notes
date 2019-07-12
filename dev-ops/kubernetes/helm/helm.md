# Helm

* Helm is a package manager for kubernetes, analogous to homebrew or something
* Helm **charts** help people define, install and upgrade kubernetes applications

## Benefits

* Make it easier to manage deployment/scaling of large number of microservices - just need names of charts
  - avoid making a million kubectl commands or writing one long and detailed YAML manifest file

## How it works

* Command line tool `helm` provides UI to Helm functionality
* Server component `tiller` runs on K8s cluster, listens for commands from helm and handles configuration/deployment based on that
* Helm packaging format, called `charts`

* Helm installs **charts** into Kubernetes clusters, creating a new **release** for each installation. To find new charts, you can search helm **repositories**.

## Charts

* A **chart** is a Helm package. It contains all the **resource definitions** needed to tun an application, tool or service inside a K8s cluster.

* Helm packages are called charts, and consist of some YAML configuration files and some templates that get rendered into Kubernetes manifest files
* Basic directory structure includes
  - charts: can put dependencies in here manually if desired
  - templates: files (e.g. standard K8s yaml config files) that get combined with config values and rendered into manifests
    - that's why it's called templates: because it contains files that get templated
  - Chart.yaml: has metadata about chart (name, version...)
  - LICENSE
  - README
  - requirements: YAML file listing chart's dependencies
  - values: YAML file of default configuration values
    - can use Helm's templating system to include these in, allowing for configuration
* Can use `helm create chartName` to create folder with all these things - can then fill out metadata and relevant config etc

## Repositories

* A **repository** is a place where charts can be collected or shared. e.g. Chart Museum or `stable` (the official repository)
*

## Releases

* A **release** is an **instance of a chart running in a K8s cluster**.

* When installing a chart (`helm install` - remember, it's a package manager so things get installed!), Helm combines the templates with the config, values file, etc. and renders these into Kubernetes manifests that can then be deployed normally via the Kubernetes API
* Releases are key concept - may want to deploy same application more than once on same cluster (multiple releases)
  - a new release is created whenever you install a chart

* Chart Museum is an open source helm chart repository server
