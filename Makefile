# Swagger CodeGen supported languages
LANGS = akka-scala android apache2 apex aspnetcore async-scala bash clojure cpprest csharp CsharpDotNet2 cwiki dart dynamic-html eiffel elixir erlang-server finch flash go go-server groovy haskell html html2 inflector java java-play-framework java-vertx javascript javascript-closure-angular jaxrs jaxrs-cxf jaxrs-cxf-cdi jaxrs-cxf-client jaxrs-resteasy jaxrs-resteasy-eap jaxrs-spec jmeter kotlin lumen msf4j nancyfx nodejs-server objc perl php php-symfony pistache-server powershell python python-flask qt5cpp rails5 restbed ruby scala scalatra silex-PHP sinatra slim spring swagger swagger-yaml swift swift3 swift4 tizen typescript-angular typescript-angularjs typescript-aurelia typescript-fetch typescript-jquery typescript-node undertow ze-ph

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

akka-scala:
	$(call build, akka-scala-clean akka-scala-gen)
android:
	$(call build, android-clean android-gen)
apache2:
	$(call build, apache2-clean apache2-gen)
apex:
	$(call build, apex-clean apex-gen)
aspnetcore:
	$(call build, aspnetcore-clean aspnetcore-gen)
async-scala:
	$(call build, async-scala-clean async-scala-gen)
bash:
	$(call build, bash-clean bash-gen)
clojure:
	$(call build, clojure-clean clojure-gen)
cpprest:
	$(call build, cpprest-clean cpprest-gen)
csharp:
	$(call build, csharp-clean csharp-gen)
CsharpDotNet2:
	$(call build, CsharpDotNet2-clean CsharpDotNet2-gen)
cwiki:
	$(call build, cwiki-clean cwiki-gen)
dart:
	$(call build, dart-clean dart-gen)
dynamic-html:
	$(call build, dynamic-html-clean dynamic-html-gen)
eiffel:
	$(call build, eiffel-clean eiffel-gen)
elixir:
	$(call build, elixir-clean elixir-gen)
erlang-server:
	$(call build, erlang-server-clean erlang-server-gen)
finch:
	$(call build, finch-clean finch-gen)
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
java-vertx:
	$(call build, java-vertx-clean java-vertx-gen)
javascript:
	$(call build, javascript-clean javascript-gen javascript-deps javascript-install)
javascript-closure-angular:
	$(call build, javascript-closure-angular-clean javascript-closure-angular-gen)
jaxrs:
	$(call build, jaxrs-clean jaxrs-gen)
jaxrs-cxf:
	$(call build, jaxrs-cxf-clean jaxrs-cxf-gen)
jaxrs-cxf-cdi:
	$(call build, jaxrs-cxf-cdi-clean jaxrs-cxf-cdi-gen)
jaxrs-cxf-client:
	$(call build, jaxrs-cxf-client-clean jaxrs-cxf-client-gen)
jaxrs-resteasy:
	$(call build, jaxrs-resteasy-clean jaxrs-resteasy-gen)
jaxrs-resteasy-eap:
	$(call build, jaxrs-resteasy-eap-clean jaxrs-resteasy-eap-gen)
jaxrs-spec:
	$(call build, jaxrs-spec-clean jaxrs-spec-gen)
jmeter:
	$(call build, jmeter-clean jmeter-gen)
kotlin:
	$(call build, kotlin-clean kotlin-gen)
lumen:
	$(call build, lumen-clean lumen-gen)
msf4j:
	$(call build, msf4j-clean msf4j-gen)
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
php-symfony:
	$(call build, php-symfony-clean php-symfony-gen)
pistache-server:
	$(call build, pistache-server-clean pistache-server-gen)
powershell:
	$(call build, powershell-clean powershell-gen)
python:
	$(call build, python-clean python-gen python-deps python-test python-build python-install)
python-flask:
	$(call build, python-flask-clean python-flask-gen)
qt5cpp:
	$(call build, qt5cpp-clean qt5cpp-gen)
rails5:
	$(call build, rails5-clean rails5-gen)
restbed:
	$(call build, restbed-clean restbed-gen)
ruby:
	$(call build, ruby-clean ruby-gen ruby-deps ruby-test ruby-build ruby-install)
scala:
	$(call build, scala-clean scala-gen)
scalatra:
	$(call build, scalatra-clean scalatra-gen)
silex-PHP:
	$(call build, silex-PHP-clean silex-PHP-gen)
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
swift4:
	$(call build, swift4-clean swift4-gen)
tizen:
	$(call build, tizen-clean tizen-gen)
typescript-angular:
	$(call build, typescript-angular-clean typescript-angular-gen)
typescript-angularjs:
	$(call build, typescript-angularjs-clean typescript-angularjs-gen)
typescript-aurelia:
	$(call build, typescript-aurelia-clean typescript-aurelia-gen)
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
