################################################################
# Swaggy C: A Makefile for generating API clients using OpenAPI Generator
# https://github.com/cliffano/swaggy-c
################################################################

# The version of Swaggy C
SWAGGY_C_VERSION = 5.1.0

# The version of OpenAPI Generator (https://openapi-generator.tech/) used for generating the API clients
OPENAPI_GENERATOR_VERSION = 7.18.0

# GENERATORS_ALL lists the generators supported by the given OPENAPI_GENERATOR_VERSION
GENERATORS_ALL = ada ada-server android apache2 apex asciidoc aspnet-fastendpoints aspnetcore avro-schema bash crystal c clojure cwiki cpp-oatpp-client cpp-qt-client cpp-qt-qhttpengine-server cpp-oatpp-server cpp-pistache-server cpp-restbed-server cpp-restbed-server-deprecated cpp-restsdk cpp-tiny cpp-tizen cpp-ue4 csharp csharp-functions dart dart-dio eiffel elixir elm erlang-client erlang-proper erlang-server fsharp-functions fsharp-giraffe-server gdscript go go-echo-server go-server go-gin-server graphql-schema graphql-nodejs-express-server groovy haskell-http-client haskell haskell-yesod java java-dubbo jaxrs-cxf-client java-helidon-client java-helidon-server java-inflector java-micronaut-client java-micronaut-server java-msf4j java-pkmst java-play-framework java-undertow-server java-vertx-web java-camel jaxrs-cxf jaxrs-cxf-extended jaxrs-cxf-cdi jaxrs-jersey java-microprofile jaxrs-resteasy jaxrs-resteasy-eap jaxrs-spec javascript javascript-flowtyped javascript-closure-angular java-wiremock jetbrains-http-client jmeter julia-client julia-server k6 kotlin kotlin-misk kotlin-server kotlin-spring kotlin-vertx kotlin-wiremock ktorm-schema lua markdown mysql-schema n4js nim nodejs-express-server objc ocaml openapi openapi-yaml plantuml perl php php-flight php-nextgen php-lumen php-slim4 php-symfony php-mezzio-ph php-dt php-laravel postgresql-schema postman-collection powershell protobuf-schema python python-pydantic-v1 python-fastapi python-flask python-aiohttp python-blueplanet r ruby ruby-on-rails ruby-sinatra rust-axum rust rust-server rust-server-deprecated scalatra scala-akka scala-cask scala-pekko scala-akka-http-server scala-finch scala-gatling scala-http4s scala-http4s-server scala-play-server scala-sttp scala-sttp4 scala-sttp4-jsoniter scalaz spring dynamic-html html html2 swift5 swift6 swift-combine typescript typescript-angular typescript-aurelia typescript-axios typescript-fetch typescript-inversify typescript-jquery typescript-nestjs typescript-nestjs-server typescript-node typescript-redux-query typescript-rxjs wsdl-schema xojo-client zapier

# GENERATORS_PRIMARY lists the generators which will be built and published to public package registries
GENERATORS_PRIMARY = javascript python ruby

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

# All target as an alias for CI target
all: ci

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

# Shows a list of available generators supported by the given OPENAPI_GENERATOR_VERSION
# Output is a space-separated list of generator names to be used in GENERATORS_ALL variable
list-generators:
	docker \
		run \
		--rm \
		-v $(APP_BASE_DIR):/local openapitools/openapi-generator-cli:v$(OPENAPI_GENERATOR_VERSION) \
		list --short | tr ',' ' '

# Initialise basic configuration file for all generators
init-generators-config:
	for generator in ${GENERATORS_ALL} ; do \
	  if [ ! -d clients/$$generator ]; then \
	    mkdir -p clients/$$generator/; \
	    echo "{\n  \"gitUserId\": \"$(SCM_GIT_USER)\",\n  \"gitRepoId\": \"$(SCM_GIT_REPO)\"\n}" > clients/$$generator/conf.json; \
	  fi; \
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

# Generate API clients for all generators, this is separate from generate-primary target in order to
# reduce the build time when processing primary generators
# This target requires APP_BASE_DIR parameter to be supplied by user
generate-all:
	for generator in ${GENERATORS_ALL} ; do \
	  docker \
		  run \
		  --rm \
		  -v $(APP_BASE_DIR):/local openapitools/openapi-generator-cli:v$(OPENAPI_GENERATOR_VERSION) \
		  generate \
		  --input-spec /local/$(LOCAL_SPEC_PATH) \
		  --config /local/clients/$$generator/conf.json \
		  --generator-name $$generator \
		  --output /local/clients/$$generator/generated; \
	done

# Generate API clients for primary generators only
# This target requires APP_BASE_DIR parameter to be supplied by user
generate-primary:
	for generator in ${GENERATORS_PRIMARY} ; do \
	  docker \
		  run \
		  --rm \
		  -v $(APP_BASE_DIR):/local openapitools/openapi-generator-cli:v$(OPENAPI_GENERATOR_VERSION) \
		  generate \
		  --input-spec /local/$(LOCAL_SPEC_PATH) \
		  --config /local/clients/$$generator/conf.json \
		  --generator-name $$generator \
		  --output /local/clients/$$generator/generated; \
	done

################################################################
# API clients building targets for primary generators

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
	  $(call python_venv,pip install twine wheel pytest setuptools) && \
	  $(call python_venv,pip install -r requirements.txt) && \
	  $(call python_venv,python3 setup.py sdist bdist_wheel) && \
	  $(call python_venv,python3 setup.py install --single-version-externally-managed --record record.txt)

build-ruby:
	apt-get install libyaml-dev
	cd clients/ruby/generated/ && \
	  rm -f *.gem && \
	  gem install bundler && \
	  bundle install && \
	  bundle binstubs --all && \
	  gem build *.gemspec && \
	  gem install ./*.gem

################################################################
# API clients testing targets for primary generators

# Test target is a convenience target to run tests for all primary generators
test: test-javascript test-python test-ruby

test-javascript: build-javascript
	npm install -g mocha
	npm install validator
	cd clients/javascript/generated/ && \
	  npm install --dev && \
	  npm run test
	cd test/javascript/ && \
	  npm link ../../clients/javascript/generated/ && \
	  mocha --timeout 5000 .

test-python: build-python
	cd clients/python/generated/ && \
	  $(call python_venv,pip install validators) && \
	  $(call python_venv,twine check dist/*) && \
	  $(call python_venv,pytest -v ../../../test/python/*.py --capture=no)

test-ruby: build-ruby
	cd clients/ruby/generated/ && \
	  rm -f *.gem && \
	  bundle exec rspec --format documentation && \
	  bundle exec rspec ../../../test/ruby/ --format documentation

################################################################
# API clients package publishing targets for primary generators

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

.PHONY: all test ci stage clean deps init-spec init-generators-config generate generate-all generate-primary build-javascript build-python build-ruby test-javascript test-python test-ruby publish-javascript publish-python publish-ruby doc doc-latest doc-version doc-publish