# Mapped Diagnostic Context (MDC)

* Can inject session specific information into the MDC
* This info  is then available to be called from a `logger.xml` file
* Developer will insert pertinent contextual info like client id/ip, request params, etc into MDC-->will be included in each log entry automatically
