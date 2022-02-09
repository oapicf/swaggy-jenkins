LANGS = ada ada-server android apache2 apex aspnetcore bash clojure cwiki cpp-qt5 cpp-qt5-qhttpengine-server cpp-pistache-server cpp-restbed-server cpp-restsdk cpp-tizen csharp csharp-dotnet2 csharp-nancyfx dart eiffel elixir elm erlang-client erlang-server flash scala-finch go go-server groovy kotlin kotlin-server haskell-http-client haskell java jaxrs-cxf-client java-inflector java-msf4j java-pkmst java-play-framework java-undertow-server java-vertx jaxrs-cxf jaxrs-cxf-cdi jaxrs-jersey jaxrs-resteasy jaxrs-resteasy-eap jaxrs-spec javascript javascript-flowtyped javascript-closure-angular jmeter lua nodejs-server objc openapi openapi-yaml perl php php-laravel php-lumen php-slim php-silex php-symfony php-ze-ph powershell python python-flask r ruby ruby-on-rails ruby-sinatra rust rust-server scalatra scala-akka scala-httpclient scala-gatling scala-lagom-server scalaz spring dynamic-html html html2 swift2-deprecated swift3 swift4 typescript-angular typescript-angularjs typescript-aurelia typescript-fetch typescript-inversify typescript-jquery typescript-node
GEN_BASE_DIR = "${PWD}"

ci: clean deps generate test-javascript doc

clean:
	rm -rf clients/*/generated

deps:
	docker pull openapitools/openapi-generator-cli:v5.4.0
	npm install -g bootprint bootprint-openapi gh-pages mocha

generate:
	if [ "${LOCAL}" = "true" ]; then \
	  make  generate-langs GEN_BASE_DIR=/Users/cliffano/dev/workspace-studio/swaggy-jenkins; \
	elif [ "${GITHUB_ACTIONS}" = "true" ]; then \
	  make generate-langs GEN_BASE_DIR=/github/workspace; \
	fi

generate-langs:
	for lang in ${LANGS} ; do \
	  docker \
		  run \
		  --rm \
		  -v $(GEN_BASE_DIR):/local openapitools/openapi-generator-cli:v5.4.0 \
		  generate \
		  --input-spec /local/spec/jenkins-api.yml \
		  --config /local/clients/$$lang/conf.json \
		  --generator-name $$lang \
		  --output /local/clients/$$lang/generated; \
	done

test-javascript:
	cd clients/javascript/generated/ && npm link
	cd test/javascript/ && npm link swaggy-jenkins
	mocha --timeout 5000 test/javascript/

doc:
	bootprint openapi spec/jenkins-api.yaml doc/api/latest/

doc-publish:
	gh-pages --dist doc/

.PHONY: clean deps generate test-javascript doc doc-publish
