# Swagger CodeGen supported languages
LANGS = javascript ruby

ci: build-docker

clean:
	rm -rf generated

init:
	cd scripts && npm install node-yaml

define build
	swaggy-c \
	  --jar $(SWAGGER_CODEGEN_CLI_JAR) \
		--api-spec spec/jenkins-api.yml \
		--conf-file {lang}/conf.json \
		--out-dir {lang}/generated/ \
		$(1)
endef

javascript:
	$(call build, javascript-gen javascript-deps javascript-test javascript-install)

ruby:
	$(call build, ruby-gen ruby-deps ruby-test ruby-build ruby-install)

build-docker:
	docker run \
	  --workdir /opt/workspace \
	  -v `pwd`:/opt/workspace \
	  -t cliffano/swaggy-c \
	  make javascript ruby \
	  SWAGGER_CODEGEN_CLI_JAR=/opt/swagger-codegen/repo/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar

tools:
	docker pull cliffano/swaggy-c

.PHONY: ci clean init javascript ruby build build-docker tools
