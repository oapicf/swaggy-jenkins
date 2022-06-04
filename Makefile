LANGS = ada ada-server android apache2 apex asciidoc aspnetcore avro-schema bash crystal c clojure cwiki cpp-qt-client cpp-qt-qhttpengine-server cpp-pistache-server cpp-restbed-server cpp-restsdk cpp-tiny cpp-tizen cpp-ue4 csharp csharp-netcore csharp-dotnet2 csharp-netcore-functions dart dart-dio eiffel elixir elm erlang-client erlang-proper erlang-server fsharp-functions fsharp-giraffe-server go go-echo-server go-server go-gin-server graphql-schema graphql-nodejs-express-server groovy kotlin kotlin-server kotlin-spring kotlin-vertx ktorm-schema haskell-http-client haskell haskell-yesod jaxrs-cxf-client java-inflector java-micronaut-client java-micronaut-server java-msf4j java-pkmst java-play-framework java-undertow-server java-vertx java-vertx-web java-camel jaxrs-cxf jaxrs-cxf-extended jaxrs-cxf-cdi jaxrs-jersey jaxrs-resteasy jaxrs-resteasy-eap jaxrs-spec javascript-apollo javascript-flowtyped javascript-closure-angular jmeter k6 lua markdown mysql-schema nim nodejs-express-server objc ocaml openapi openapi-yaml plantuml perl php php-laravel php-lumen php-slim-deprecated php-slim4 php-symfony php-mezzio-ph php-dt powershell protobuf-schema python-legacy python-fastapi python-experimental python-flask python-aiohttp python-blueplanet r ruby-on-rails ruby-sinatra rust rust-server scalatra scala-akka scala-akka-http-server scala-finch scala-httpclient-deprecated scala-gatling scala-lagom-server scala-play-server scala-sttp scalaz spring dynamic-html html html2 swift5 typescript typescript-angular typescript-aurelia typescript-axios typescript-fetch typescript-inversify typescript-jquery typescript-nestjs typescript-node typescript-redux-query typescript-rxjs wsdl-schema
LANGS_PRIMARY = java javascript python ruby
oag_version = 6.0.0
version ?= 1.5.1-pre.0

ci: clean deps generate test-javascript test-python test-ruby doc

clean:
	rm -rf clients/*/generated

deps:
	docker pull openapitools/openapi-generator-cli:v$(oag_version)
	npm install -g bootprint bootprint-openapi gh-pages mocha

conf-placeholder:
	for lang in ${LANGS} ; do \
	  mkdir -p clients/$$lang/; \
	  cp fixtures/conf-placeholder.json clients/$$lang/conf.json; \
	done
	for lang in ${LANGS_PRIMARY} ; do \
	  git checkout clients/$$lang/conf.json; \
	done

local-generate:
	LOCAL=true make generate

generate:
	if [ "${LOCAL}" = "true" ]; then \
	  make  generate-langs GEN_BASE_DIR=/Users/cliffano/dev/workspace-studio/swaggy-jenkins; \
	elif [ "${GITHUB_ACTIONS}" = "true" ]; then \
	  make generate-langs GEN_BASE_DIR=/home/runner/work/swaggy-jenkins/swaggy-jenkins; \
	fi

generate-langs:
	for lang in ${LANGS} ; do \
	  docker \
		  run \
		  --rm \
		  -v $(GEN_BASE_DIR):/local openapitools/openapi-generator-cli:v$(oag_version) \
		  generate \
		  --input-spec /local/specification/jenkins.yml \
		  --config /local/clients/$$lang/conf.json \
		  --generator-name $$lang \
		  --output /local/clients/$$lang/generated; \
	done

generate-primary:
	if [ "${LOCAL}" = "true" ]; then \
	  make  generate-langs-primary GEN_BASE_DIR=/Users/cliffano/dev/workspace-studio/swaggy-jenkins; \
	elif [ "${GITHUB_ACTIONS}" = "true" ]; then \
	  make generate-langs-primary GEN_BASE_DIR=/home/runner/work/swaggy-jenkins/swaggy-jenkins; \
	fi

generate-langs-primary:
	for lang in ${LANGS_PRIMARY} ; do \
	  docker \
		  run \
		  --rm \
		  -v $(GEN_BASE_DIR):/local openapitools/openapi-generator-cli:v$(oag_version) \
		  generate \
		  --input-spec /local/specification/jenkins.yml \
		  --config /local/clients/$$lang/conf.json \
		  --generator-name $$lang \
		  --output /local/clients/$$lang/generated; \
	done

build-javascript:
	npm install -g babel-cli
	cd clients/javascript/generated/ && \
	  npm install && \
	  npm link && \
	  npm run build
	cd test/javascript/ && \
	  npm link ../../clients/javascript/generated/

build-python:
	sudo apt-get install -y python-setuptools
	pip install twine wheel
	cd clients/python/generated/ && \
	  pip install -r requirements.txt && \
	  python3 setup.py sdist bdist_wheel && \
	  python3 setup.py install

build-ruby:
	cd clients/ruby/generated/ && \
	  gem install bundler --version=1.17.3 && \
	  bundle install --binstubs && \
	  gem build swaggy_jenkins.gemspec && \
	  gem install ./swaggy_jenkins-*.gem

test-javascript: build-javascript
	cd clients/javascript/generated/ && \
	  npm run test
	mocha --timeout 5000 test/javascript/

test-python: build-python
	cd clients/python/generated/ && \
	  twine check dist/*

test-ruby: build-ruby

publish-javascript: build-javascript
	cd clients/javascript/generated/ && \
	  npm publish

publish-python: build-python
	cd clients/python/generated/ && \
	  twine upload dist/*

publish-ruby: build-ruby
	cd clients/ruby/generated/ && \
	  gem push `ls swaggy_jenkins-*.gem`

doc:
	bootprint openapi specification/jenkins.yml doc/api/latest/

doc-version:
	bootprint openapi specification/jenkins.yml doc/api/$(version)/

doc-publish:
	CACHE_DIR=/tmp gh-pages --dist doc/

.PHONY: clean conf-placeholder deps generate build-javascript build-python build-ruby test-javascript test-python test-ruby publish-javascript publish-python publish-ruby doc doc-publish
