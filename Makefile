clean:
	rm -rf generated

init:
	cd scripts && npm install node-yaml

javascript:
	swaggy-c \
	  --jar $(SWAGGER_CODEGEN_CLI_JAR) \
		--api-spec spec/jenkins-api.yml \
		--conf-file {lang}/conf.json \
		--out-dir {lang}/generated/ \
		javascript-gen javascript-deps javascript-test javascript-install

ruby:
	swaggy-c \
	  --jar $(SWAGGER_CODEGEN_CLI_JAR) \
		--api-spec spec/jenkins-api.yml \
		--conf-file {lang}/conf.json \
		--out-dir {lang}/generated/ \
		ruby-gen ruby-deps ruby-test ruby-build ruby-install

build:
	docker run \
	  --workdir /opt/workspace \
	  -v `pwd`:/opt/workspace \
	  -t cliffano/swaggy-c \
	  make javascript \
	  SWAGGER_CODEGEN_CLI_JAR=/opt/swagger-codegen/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar

tools:
	docker pull cliffano/swaggy-c

.PHONY: clean init javascript ruby build tools
