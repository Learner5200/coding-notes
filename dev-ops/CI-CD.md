## Continuous Integration

* Integrate code into a shared repository several times a day.
* Check-in is verified by an automated build tool  like Travis CI or Jenkins - can do things like run tests and linter to make sure it's ready to be merged into master


## Continuous Deployment/Delivery

* Once the software passes the automated checks above, it should get automatically deployed to production (e.g. AWS, Heroku, Surge) so users can see the latest stuff
* Helps with agile methodologies as can rapidly produce and iterate on software
