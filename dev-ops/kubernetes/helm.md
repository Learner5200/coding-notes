# Helm

* Helm is a package manager for kubernetes, analogous to homebrew or something
* Helm **charts** help people define, install and upgrade kubernetes applications

## Charts

* Helm packages are called charts, and consist of some YAML configuration files and some templates that get rendered into Kubernetes manifest files
* Basic directory structure includes
  - charts: can put dependencies in here manually if desired
  - templates: files that get combined with config values and rendered into manifests
  - Chart.yaml: has metadata about chart (name, version...)
  - LICENSE
  - README
  - requirements: YAML file listing chart's dependencies
  - values: YAML file of default configuration values


* Chart Museum is an open source helm chart repository server
