# docker-phpcs-72
Basic Alpine based docker image for running phpcs on a specific project folder

Note: A valid **_phpcs.xml_** needs to be present in the project folder

This image can be used in a Gitlab-CI context 

```
###############################
# part of a citlab-ci.yml
###############################

stages:
  - syntax
  
phpcs:
  image: interlutions/docker-phpcs-72:latest
  stage: syntax
  script:
    - cd project
    - phpcs --error-severity=1 --warning-severity=1 --extensions=php
```
or standalone using the command line.
```
###############################
# commandline-usage
###############################

docker run -v $(pwd)/project:/project -w=/project --rm interlutions/docker-phpcs-72 phpcs --error-severity=1 --warning-severity=1 --extensions=php

```
