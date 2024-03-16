<img align="right" src="https://raw.github.com/oapicf/swaggy-jenkins/master/avatar.jpg" alt="Avatar"/>

[![Build Status](https://github.com/oapicf/swaggy-jenkins/actions/workflows/ci-workflow.yaml/badge.svg)](https://github.com/oapicf/swaggy-jenkins/actions/workflows/ci-workflow.yaml)
<br/>

Swaggy Jenkins
--------------

Swaggy Jenkins is a set of Jenkins API clients in multiple languages generated from Swagger / Open API specification.

Published packages
------------------

| Language | Package | Status |
|----------|---------|--------|
| JavaScript | [swaggy-jenkins]((http://www.npmjs.com/package/swaggy-jenkins)) | [![Published Version](https://img.shields.io/npm/v/swaggy-jenkins.svg)](http://www.npmjs.com/package/swaggy-jenkins) |
| Python | [swaggyjenkins]((https://pypi.python.org/pypi/swaggyjenkins)) | [![Published Version](https://img.shields.io/pypi/v/swaggyjenkins.svg)](https://pypi.python.org/pypi/swaggyjenkins) |
| Ruby | [swaggy_jenkins]((https://rubygems.org/gems/swaggy_jenkins)) | [![Published Version](https://img.shields.io/gem/v/swaggy_jenkins.svg)](https://rubygems.org/gems/swaggy_jenkins) |

Version Matrix
--------------

| Swaggy Jenkins Version | OpenAPI Version | OpenAPI Generator Version |
|------------------------|-----------------|---------------------------|
| 3.0.1 | 3.0.0 | 7.4.0 |
| 2.0.0 | 3.0.0 | 6.0.0 |
| 1.5.0 | 3.0.0 | 5.4.0 |

Usage
-----

Generate API clients of the currently supported languages:

    make generate GEN_BASE_DIR=<path/to/swaggy-jenkins>

Installation
------------

You can either use the generated clients from `clients/<lang>/generated/` directory.

Or you can use the published packages like below:

Install JavaScript client:

    npm install swaggy-jenkins

Install Python client:

    pip install swaggyjenkins

Install Ruby client:

    gem install swaggy_jenkins

Colophon
--------

* [API Documentation](https://cliffano.github.io/swaggy-jenkins/api/latest/)

Videos:

* [Jenkins World 2017: Bringing Jenkins Remote Access API To The Masses](https://www.youtube.com/watch?v=D93t1jElt4Q)

Presentations:

* [Bringing Jenkins Remote Access API To The Masses](https://www.slideshare.net/cliffano/bringing-jenkins-remote-access-api-to-the-masses)

Related Projects:

* [swaggy-jenkins-cli](http://github.com/oapicf/swaggy-jenkins-cli) - CLI utility tool for Swaggy Jenkins
* [swaggy-c](http://github.com/cliffano/swaggy-c) - Builder for Swagger CodeGen-generated API clients in multiple languages
