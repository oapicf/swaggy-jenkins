# Swagger CodeGen supported languages
LANGS = android aspnet5 async-scala csharp dart flash python-flask go java jaxrs jaxrs-cxf jaxrs-resteasy inflector javascript javascript-closure-angular jmeter objc perl php python qt5cpp ruby scala scalatra silex-PHP sinatra slim spring dynamic-html html swagger swagger-yaml swift tizen typescript-angular typescript-node akka-scala CsharpDotNet2 clojure haskell

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
		--conf-file {lang}/conf.json \
		--out-dir {lang}/generated/ \
		$(1)
endef

lint:
	swagger validate spec/*.yml

build-docker:
	docker run \
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

aspnet5:
	$(call build, aspnet5-clean aspnet5-gen)

async-scala:
	$(call build, async-scala-clean async-scala-gen)

csharp:
	$(call build, csharp-clean csharp-gen)

dart:
	$(call build, dart-clean dart-gen)

flash:
	$(call build, flash-clean flash-gen)

python-flask:
	$(call build, python-flask-clean python-flask-gen)

go:
	$(call build, go-clean go-gen)

java:
	$(call build, java-clean java-gen java-deps, java-build, java-install)

jaxrs:
	$(call build, jaxrs-clean jaxrs-gen)

jaxrs-cxf:
	$(call build, jaxrs-cxf-clean jaxrs-cxf-gen)

jaxrs-resteasy:
	$(call build, jaxrs-resteasy-clean jaxrs-resteasy-gen)

inflector:
	$(call build, inflector-clean inflector-gen)

javascript:
	$(call build, javascript-clean javascript-gen javascript-deps javascript-test javascript-install)

javascript-closure-angular:
	$(call build, javascript-closure-angular-clean javascript-closure-angular-gen)

jmeter:
	$(call build, jmeter-clean jmeter-gen)

nodejs-server:
	$(call build, nodejs-server-clean nodejs-server-gen)

objc:
	$(call build, objc-clean objc-gen)

perl:
	$(call build, perl-clean perl-gen)

php:
	$(call build, php-clean php-gen)

python:
	$(call build, python-clean python-gen python-deps python-test python-build python-install)

qt5cpp:
	$(call build, qt5cpp-clean qt5cpp-gen)

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

dynamic-html:
	$(call build, dynamic-html-clean dynamic-html-gen)

html:
	$(call build, html-clean html-gen)

swagger:
	$(call build, swagger-clean swagger-gen)

swagger-yaml:
	$(call build, swagger-yaml-clean swagger-yaml-gen)

swift:
	$(call build, swift-clean swift-gen)

tizen:
	$(call build, tizen-clean tizen-gen)

typescript-angular:
	$(call build, typescript-angular-clean typescript-angular-gen)

typescript-node:
	$(call build, typescript-node-clean typescript-node-gen)

akka-scala:
	$(call build, akka-scala-clean akka-scala-gen)

CsharpDotNet2:
	$(call build, CsharpDotNet2-clean CsharpDotNet2-gen)

clojure:
	$(call build, clojure-clean clojure-gen)

haskell:
	$(call build, haskell-clean haskell-gen)

.PHONY: ci clean init lint build build-docker tools android aspnet5 async-scala csharp dart flash python-flask go java jaxrs jaxrs-cxf jaxrs-resteasy inflector javascript javascript-closure-angular jmeter objc perl php python qt5cpp ruby scala scalatra silex-PHP sinatra slim spring dynamic-html html swagger swagger-yaml swift tizen typescript-angular typescript-node akka-scala CsharpDotNet2 clojure haskell
