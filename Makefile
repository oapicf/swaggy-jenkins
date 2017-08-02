# Swagger CodeGen supported languages
LANGS = android apex aspnetcore bash clojure cwiki cpprest csharp CsharpDotNet2 dart elixir erlang-server flash go go-server groovy haskell dynamic-html html html2 inflector java java-play-framework jaxrs jaxrs-cxf jaxrs-cxf-cdi jaxrs-resteasy jaxrs-resteasy-eap javascript javascript-closure-angular jmeter kotlin lumen nancyfx nodejs-server objc perl php silex-PHP python python-flask qt5cpp ruby scala akka-scala async-scala scalatra sinatra slim spring swagger swagger-yaml swift swift3 tizen typescript-angular typescript-angular2 typescript-fetch typescript-jquery typescript-node undertow

ci: tools lint build-docker

clean:
	for LANG in $(LANGS) ; do \
    $(call build, $$LANG-clean) ; \
	done

init:
	echo ""

define build
	swaggy-c \
    $(if $(SWAGGER_CODEGEN_CLI_JAR), --jar $(SWAGGER_CODEGEN_CLI_JAR)) \
		--api-spec spec/jenkins-api.yml \
		--conf-file clients/{lang}/conf.json \
		--out-dir clients/{lang}/generated/ \
		--log-dir clients/{lang}/log/ \
		$(1)
endef

lint:
	swagger validate spec/*.yml

build-docker:
	docker run \
 	  --rm \
	  --workdir /opt/workspace \
	  -v `pwd`:/opt/workspace \
	  -t cliffano/swaggy-c \
	  make $(LANGS) \
	  SWAGGER_CODEGEN_CLI_JAR=/opt/swagger-codegen/repo/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar

tools:
	npm install -g swagger-cli
	docker pull cliffano/swaggy-c

all: $(LANGS)

android:
	$(call build, android-clean android-gen)
apex:
	$(call build, apex-clean apex-gen)
aspnetcore:
	$(call build, aspnetcore-clean aspnetcore-gen)
bash:
	$(call build, bash-clean bash-gen)
clojure:
	$(call build, clojure-clean clojure-gen)
cwiki:
	$(call build, cwiki-clean cwiki-gen)
cpprest:
	$(call build, cpprest-clean cpprest-gen)
csharp:
	$(call build, csharp-clean csharp-gen)
CsharpDotNet2:
	$(call build, CsharpDotNet2-clean CsharpDotNet2-gen)
dart:
	$(call build, dart-clean dart-gen)
elixir:
	$(call build, elixir-clean elixir-gen)
erlang-server:
	$(call build, erlang-server-clean erlang-server-gen)
flash:
	$(call build, flash-clean flash-gen)
go:
	$(call build, go-clean go-gen)
go-server:
	$(call build, go-server-clean go-server-gen)
groovy:
	$(call build, groovy-clean groovy-gen)
haskell:
	$(call build, haskell-clean haskell-gen)
dynamic-html:
	$(call build, dynamic-html-clean dynamic-html-gen)
html:
	$(call build, html-clean html-gen)
html2:
	$(call build, html2-clean html2-gen)
inflector:
	$(call build, inflector-clean inflector-gen)
java:
	$(call build, java-clean java-gen java-deps java-test java-build java-install)
java-play-framework:
	$(call build, java-play-framework-clean java-play-framework-gen)
jaxrs:
	$(call build, jaxrs-clean jaxrs-gen)
jaxrs-cxf:
	$(call build, jaxrs-cxf-clean jaxrs-cxf-gen)
jaxrs-cxf-cdi:
	$(call build, jaxrs-cxf-cdi-clean jaxrs-cxf-cdi-gen)
jaxrs-resteasy:
	$(call build, jaxrs-resteasy-clean jaxrs-resteasy-gen)
jaxrs-resteasy-eap:
	$(call build, jaxrs-resteasy-eap-clean jaxrs-resteasy-eap-gen)
javascript:
	$(call build, javascript-clean javascript-gen javascript-deps javascript-test javascript-install)
javascript-closure-angular:
	$(call build, javascript-closure-angular-clean javascript-closure-angular-gen)
jmeter:
	$(call build, jmeter-clean jmeter-gen)
kotlin:
	$(call build, kotlin-clean kotlin-gen)
lumen:
	$(call build, lumen-clean lumen-gen)
nancyfx:
	$(call build, nancyfx-clean nancyfx-gen)
nodejs-server:
	$(call build, nodejs-server-clean nodejs-server-gen)
objc:
	$(call build, objc-clean objc-gen)
perl:
	$(call build, perl-clean perl-gen)
php:
	$(call build, php-clean php-gen)
silex-PHP:
	$(call build, silex-PHP-clean silex-PHP-gen)
python:
	$(call build, python-clean python-gen python-deps python-test python-build python-install)
python-flask:
	$(call build, python-flask-clean python-flask-gen)
qt5cpp:
	$(call build, qt5cpp-clean qt5cpp-gen)
ruby:
	$(call build, ruby-clean ruby-gen ruby-deps ruby-test ruby-build ruby-install)
scala:
	$(call build, scala-clean scala-gen)
akka-scala:
	$(call build, akka-scala-clean akka-scala-gen)
async-scala:
	$(call build, async-scala-clean async-scala-gen)
scalatra:
	$(call build, scalatra-clean scalatra-gen)
sinatra:
	$(call build, sinatra-clean sinatra-gen)
slim:
	$(call build, slim-clean slim-gen)
spring:
	$(call build, spring-clean spring-gen)
swagger:
	$(call build, swagger-clean swagger-gen)
swagger-yaml:
	$(call build, swagger-yaml-clean swagger-yaml-gen)
swift:
	$(call build, swift-clean swift-gen)
swift3:
	$(call build, swift3-clean swift3-gen)
tizen:
	$(call build, tizen-clean tizen-gen)
typescript-angular:
	$(call build, typescript-angular-clean typescript-angular-gen)
typescript-angular2:
	$(call build, typescript-angular2-clean typescript-angular2-gen)
typescript-fetch:
	$(call build, typescript-fetch-clean typescript-fetch-gen)
typescript-jquery:
	$(call build, typescript-jquery-clean typescript-jquery-gen)
typescript-node:
	$(call build, typescript-node-clean typescript-node-gen)
undertow:
	$(call build, undertow-clean undertow-gen)
ze-ph:
	$(call build, ze-ph-clean ze-ph-gen)

.PHONY: ci clean init lint build build-docker tools $(LANGS)
