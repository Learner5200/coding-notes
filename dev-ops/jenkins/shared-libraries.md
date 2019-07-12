# Shared Libraries

* Can create 'shared libraries' of pipeline code defined in external source control repositories and loaded into existing pipelines
  - Allows you to share parts of pipelines between projects to DRY things up.


## How to setup

* Define a shared library with a name, a source code retrieval method (e.g. scm), and optionally a default version


* The directory structure of a Shared Library repository is as follows:

```
(root)
+- src                     # Groovy source files
|   +- org
|       +- foo
|           +- Bar.groovy  # for org.foo.Bar class
+- vars
|   +- foo.groovy          # for global 'foo' variable
|   +- foo.txt             # help for 'foo' variable
+- resources               # resource files (external libraries only)
|   +- org
|       +- foo
|           +- bar.json    # static helper data for org.foo.Bar
```

* e.g. can call `foo.method()` and will understand what you mean

* Can setup Global Pipeline Libraries in Jenkins: can then use these in any pipeline in the system


## How to use

* If you mark a shared library as 'load implicitly', pipelines can immediately use classes or global variables defined therein
* Otherwise, need to use the `@Library` annotation, annotation either a `_` or an import statement for clarity:

```
@Library('my-shared-library') _
/* Using a version specifier, such as branch, tag, etc */
@Library('my-shared-library@1.0') _
/* Accessing multiple libraries with one statement */
@Library(['my-shared-library', 'otherlib@abc1234']) _
```

```
@Library('somelib')
import com.mycorp.pipeline.somelib.Helper

int useSomeLib(Helper helper) {
    helper.prepare()
    return helper.count()
}

echo useSomeLib(new Helper('some text'))
```

* Can now also load dynamically at any time during a build:
  - for global variables: `library 'my-shared-library'`
  - for classes etc: `library('my-shared-library').com.mycorp.pipeline.Utils.someStaticMethod()`


## Writing libraries

* Can write any valid Groovy code.
* Can access pipeline steps in a method:

```
// src/org/foo/Zot.groovy
package org.foo

def checkOutFrom(repo) {
  git url: "git@github.com:jenkinsci/${repo}"
}

return this
```

*
