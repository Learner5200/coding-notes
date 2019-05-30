# Feign

* Feign is a declarative HTTP client developed by Netflix.
* Meant to simplify HTTP API clients

## Use

* Just have to declare an interface and annotate it appropriately -> the actual implementation will be provisioned at runtime
* e.g. annotate method template with `@RequestLine("POST")`
* Use `Feign.builder()` to configure the interface-based client: e.g. set encoder/decoder, target, logging stuff
