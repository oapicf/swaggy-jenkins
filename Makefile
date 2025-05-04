################################################################
# Swaggy C: A Makefile for generating API clients using OpenAPI Generator
# https://github.com/cliffano/swaggy-c
################################################################

# The version of Swaggy C
SWAGGY_C_VERSION = 4.10.0

# The version of OpenAPI Generator (https://openapi-generator.tech/) used for generating the API clients
OPENAPI_GENERATOR_VERSION = 7.12.0

# LANGS_ALL lists the languages supported by the given OPENAPI_GENERATOR_VERSION
LANGS_ALL = ada ada-server android apache2 apex asciidoc aspnetcore avro-schema bash crystal c clojure cwiki cpp-qt-client cpp-qt-qhttpengine-server cpp-pistache-server cpp-restbed-server cpp-restbed-server-deprecated cpp-restsdk cpp-tiny cpp-tizen cpp-ue4 csharp csharp-functions dart dart-dio eiffel elixir elm erlang-client erlang-proper erlang-server fsharp-functions fsharp-giraffe-server go go-echo-server go-server go-gin-server graphql-schema graphql-nodejs-express-server groovy kotlin kotlin-server kotlin-spring kotlin-vertx ktorm-schema haskell-http-client haskell haskell-yesod java jaxrs-cxf-client java-helidon-client java-helidon-server java-inflector java-micronaut-client java-micronaut-server java-msf4j java-pkmst java-play-framework java-undertow-server java-vertx java-vertx-web java-camel jaxrs-cxf jaxrs-cxf-extended jaxrs-cxf-cdi jaxrs-jersey jaxrs-resteasy jaxrs-resteasy-eap jaxrs-spec javascript javascript-apollo-deprecated javascript-flowtyped javascript-closure-angular java-wiremock jetbrains-http-client jmeter julia-client julia-server k6 lua markdown mysql-schema n4js nim nodejs-express-server objc ocaml openapi openapi-yaml plantuml perl php php-nextgen php-laravel php-lumen php-slim4 php-symfony php-mezzio-ph php-dt postman-collection powershell protobuf-schema python python-pydantic-v1 python-fastapi python-flask python-aiohttp python-blueplanet r ruby ruby-on-rails ruby-sinatra rust rust-server scalatra scala-akka scala-pekko scala-akka-http-server scala-finch scala-gatling scala-http4s-server scala-lagom-server scala-play-server scala-sttp scala-sttp4 scalaz spring dynamic-html html html2 swift5 swift-combine typescript typescript-angular typescript-aurelia typescript-axios typescript-fetch typescript-inversify typescript-jquery typescript-nestjs typescript-node typescript-redux-query typescript-rxjs wsdl-schema xojo-client zapier rust-axum

# LANGS_PRIMARY lists the languages which will be built and published to public package registries
LANGS_PRIMARY = javascript python ruby

# The location where OpenAPI specification file will be placed within the project
LOCAL_SPEC_PATH = stage/specification.yml

################################################################
# User configuration variables
# These variables should be stored in swaggy-c.yml config file,
# and they will be parsed using yq https://github.com/mikefarah/yq
# Example:
# ---
# spec_uri: specification/someapp.yml
# version:1.2.3
# base_dir:
#   github_actions: /home/runner/work/someapp/someapp
#   local: /home/someuser/someapp

# SPEC_URI is the file path or URL where the OpenAPI specification is located, for example:
# - local file path: spec/some-app.yaml
# - remote URL: https://some-app.com/some-app.yaml
SPEC_URI=$(shell yq .spec_uri swaggy-c.yml)

# APP_VERSION is version of the application using Swaggy C
APP_VERSION ?= $(shell yq .version swaggy-c.yml)

# Contact details to be amended to the OpenAPI specification .info.contact.* properties
CONTACT_NAME ?= $(shell yq .contact.name swaggy-c.yml)
CONTACT_URL ?= $(shell yq .contact.url swaggy-c.yml)
CONTACT_EMAIL ?= $(shell yq .contact.email swaggy-c.yml)

# SCM details to be amended to the OpenAPI Generator configuration .git_* properties
SCM_GIT_USER ?= $(shell yq .scm.git_user swaggy-c.yml)
SCM_GIT_REPO ?= $(shell yq .scm.git_repo swaggy-c.yml)

# APP_BASE_DIR is the absolute path where the application base directory is located, for example:
# - MacOS user workspace as a local directory: /Users/some-user/some-path/some-app
#   This is used when no environment variable is specified.
# - GitHub Actions workspace directory: /home/runner/work/some-app/some-app
#   This is used when GITHUB_ACTIONS environment variable is specified.
# - Custom directory to overwrite the other directories: /any/path/to/some-app
#   This is used when CUSTOM environment variable is specified.
ifdef CUSTOM
APP_BASE_DIR=$(shell yq .base_dir.custom swaggy-c.yml)
else
  ifdef GITHUB_ACTIONS
	APP_BASE_DIR=$(shell yq .base_dir.github_actions swaggy-c.yml)
	else
  APP_BASE_DIR=$(shell yq .base_dir.local swaggy-c.yml)
	endif
endif

define python_venv
	. .venv/bin/activate && $(1)
endef

$(info ################################################################)
$(info Building Swaggy C application with user configurations:)
$(info - OpenAPI specification URI: ${SPEC_URI})
$(info - Application version: ${APP_VERSION})
$(info - Application base directory: ${APP_BASE_DIR})

################################################################
# Base targets

# CI target to be executed by CI/CD tool
ci: clean deps init-spec generate build-javascript build-python build-ruby test-javascript test-python test-ruby doc

# Ensure stage directory exists
stage:
	mkdir -p stage

# Remove all generated API clients code
clean:
	rm -rf stage/ clients/*/generated

# Retrieve the OpenAPI Generator Docker image and npm modules
deps:
	docker pull openapitools/openapi-generator-cli:v$(OPENAPI_GENERATOR_VERSION)
	npm install -g bootprint bootprint-openapi gh-pages

# Initialise OpenAPI specification from either a local file path or a remote URL
# This target requires the following parameters to be supplied by user
# - SPEC_URI parameter
# - CONTACT_NAME parameter
# - CONTACT_ parameter
# - CONTACT_NAME parameter
init-spec: stage
	if test $(findstring https, $(SPEC_URI)); then \
	  curl $(SPEC_URI) --output $(LOCAL_SPEC_PATH); \
	else \
	  cp $(SPEC_URI) $(LOCAL_SPEC_PATH); \
	fi
	yq -i '.info.contact.name = "$(CONTACT_NAME)" | .info.contact.url = "$(CONTACT_URL)" | .info.contact.email = "$(CONTACT_EMAIL)"' "$(LOCAL_SPEC_PATH)"

# Initialise basic configuration file for all languages
init-langs-config:
	for lang in ${LANGS_ALL} ; do \
	  mkdir -p clients/$$lang/; \
		echo "{\n  \"gitUserId\": \"$(SCM_GIT_USER)\",\n  \"gitRepoId\": \"$(SCM_GIT_REPO)\"\n}" > clients/$$lang/conf.json; \
	done

# Update Makefile to the latest version on origin's main branch
update-to-latest:
	curl https://raw.githubusercontent.com/cliffano/swaggy-c/main/src/Makefile-swaggy-c -o Makefile

# Update Makefile to the version defined in TARGET_SWAGGY_C_VERSION parameter
update-to-version:
	curl https://raw.githubusercontent.com/cliffano/swaggy-c/v$(TARGET_SWAGGY_C_VERSION)/src/Makefile-swaggy-c -o Makefile

################################################################
# API clients generate targets

# Alias for generate-all target
generate: generate-all

# Generate API clients for all languages, this is separate from generate-primary target in order to
# reduce the build time when processing primary languages
# This target requires APP_BASE_DIR parameter to be supplied by user
generate-all:
	for lang in ${LANGS_ALL} ; do \
	  docker \
		  run \
		  --rm \
		  -v $(APP_BASE_DIR):/local openapitools/openapi-generator-cli:v$(OPENAPI_GENERATOR_VERSION) \
		  generate \
		  --input-spec /local/$(LOCAL_SPEC_PATH) \
		  --config /local/clients/$$lang/conf.json \
		  --generator-name $$lang \
		  --output /local/clients/$$lang/generated; \
	done

# Generate API clients for primary languages only
# This target requires APP_BASE_DIR parameter to be supplied by user
generate-primary:
	for lang in ${LANGS_PRIMARY} ; do \
	  docker \
		  run \
		  --rm \
		  -v $(APP_BASE_DIR):/local openapitools/openapi-generator-cli:v$(OPENAPI_GENERATOR_VERSION) \
		  generate \
		  --input-spec /local/$(LOCAL_SPEC_PATH) \
		  --config /local/clients/$$lang/conf.json \
		  --generator-name $$lang \
		  --output /local/clients/$$lang/generated; \
	done

################################################################
# API clients building targets for primary languages

build-javascript:
	npm install -g babel-cli
	cd clients/javascript/generated/ && \
	  npm install && \
	  npm link && \
	  npm run build
	cd test/javascript/ && \
	  npm link ../../clients/javascript/generated/

build-python:
	cd clients/python/generated/ && \
	  python3 -m venv .venv && \
	  $(call python_venv,pip install twine wheel pytest setuptools validators) && \
	  $(call python_venv,pip install -r requirements.txt) && \
	  $(call python_venv,python3 setup.py sdist bdist_wheel) && \
	  $(call python_venv,python3 setup.py install --single-version-externally-managed --record record.txt)

build-ruby:
	apt-get install libyaml-dev
	cd clients/ruby/generated/ && \
	  find . -name '*.gem' -delete && \
	  gem install bundler --version=1.17.3 && \
	  bundle install --binstubs && \
	  gem build *.gemspec && \
	  gem install ./*.gem

################################################################
# API clients testing targets for primary languages

test-javascript: build-javascript
	npm install -g mocha
	npm install validator
	cd clients/javascript/generated/ && \
	  npm run test
	mocha --timeout 5000 test/javascript/

test-python: build-python
	cd clients/python/generated/ && \
	  $(call python_venv,twine check dist/*) && \
	  $(call python_venv,pytest -v ../../../test/python/*.py --capture=no)

test-ruby: build-ruby

################################################################
# API clients package publishing targets for primary languages

publish-javascript: build-javascript
	cd clients/javascript/generated/ && \
	  npm publish

publish-python: build-python
	cd clients/python/generated/ && \
	  $(call python_venv,twine upload dist/*)

publish-ruby: build-ruby
	cd clients/ruby/generated/ && \
	  gem push `ls *.gem`

################################################################
# Documentation targets

# Alias for doc-latest target
doc: doc-latest

# Generate API documentation locally as the latest version
doc-latest:
	bootprint openapi $(LOCAL_SPEC_PATH) doc/api/latest/

# Generate API documentation locally as the application's version
# This target requires APP_VERSION parameter to be supplied by user
doc-version:
	bootprint openapi $(LOCAL_SPEC_PATH) doc/api/$(APP_VERSION)/

# Publish documentation via GitHub Pages
doc-publish:
	CACHE_DIR=/tmp gh-pages --dist doc/

################################################################

.PHONY: all test ci stage clean deps init-spec init-langs-config generate generate-all generate-primary build-javascript build-python build-ruby test-javascript test-python test-ruby publish-javascript publish-python publish-ruby doc doc-latest doc-version doc-publish