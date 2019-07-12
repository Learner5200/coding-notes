# Swagger

## Overview

* Lets you **describe the structure of your APIs** so **machines can read them**
* API can return YAML/JSON listing API's resources according to the **OpenAPI specification**:
* Swagger can then read this and build:
  - beautiful/interactive documentation that lets users try the calls in their browser
  - server stubs (just add logic)
  - automated tests

## The OpenAPI Specification (aka Swagger Specification)

* An API description format for describing entire API, including
  - Available endpoints (`/users`) and operations on each endpoint (`GET /users`, `POST /users`)
  - Operation parameters
  - Input and output for each operation
  - Authentication methods
  - Contact information, license, terms of use and other information.

* Can be written in JSON or YAML:

```
swagger: "2.0"
info:
  title: Sample API
  description: API description in Markdown.
  version: 1.0.0
host: api.example.com
basePath: /v1
schemes:
  - https
paths:
  /users:
    get:
      summary: Returns a list of users.
      description: Optional extended description in Markdown.
      produces:
        - application/json
      responses:
        200:
          description: OK
```



* Can write this spec manually or (better) use a tool to generate swagger from annotations
