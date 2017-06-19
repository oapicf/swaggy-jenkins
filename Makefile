# Swagger CodeGen supported languages
LANGS = javascript ruby

ci: tools build-docker

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

java:
	$(call build, java-clean java-gen java-deps, java-build, java-install)

javascript:
	$(call build, javascript-clean javascript-gen javascript-deps javascript-test javascript-install)

python:
	$(call build, python-clean python-gen python-deps python-test python-build python-install)

ruby:
	$(call build, ruby-clean ruby-gen ruby-deps ruby-test ruby-build ruby-install)

build-docker:
	docker run \
	  --workdir /opt/workspace \
	  -v `pwd`:/opt/workspace \
	  -t cliffano/swaggy-c \
	  make java javascript python ruby \
	  SWAGGER_CODEGEN_CLI_JAR=/opt/swagger-codegen/repo/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar

tools:
	docker pull cliffano/swaggy-c

.PHONY: ci clean init java javascript python ruby build build-docker tools
