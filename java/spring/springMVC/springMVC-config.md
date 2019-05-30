# Config

* In your `web.xml` file:
  * Spring dispatcher servlet - what class will you use for your dispatcher
  * Tell it where your spring context configuration is located
  * Tell it which URL patterns (e.g. "/", "/server") to map to the dispatcher servlet


* In your normal Spring config file:
  - make sure you add support for component scanning
  - add support for conversion, formatting and validation: `<mvc:annotation-driven/>`
    - will allow SpringMVC to convert/format form data, do validations, etc.
  - Configure the **view resolver**, which tells us where pages are locatred, how they should be displayed, etc:
    - give class of view resolve
    - give SpringMVC a prefix (e.g. path) and suffix (e.g. file type) to automatically append when you give it a file name - saves time
    - ![prefix-suffix](images/2019/03/prefix-suffix.png)
    - 
