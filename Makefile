clean:
	rm -rf generated

init:
	cd scripts && npm install node-yaml

javascript:
	swaggy-c --jar $(SWAGGER_CODEGEN_JAR) --api-spec spec/jenkins-api.yml --conf-dir conf --out-dir generated javascript-gen javascript-install

build:
	docker run \
      --workdir /opt/workspace \
      -v `pwd`:/opt/workspace \
      -t cliffano/swaggy-c \
      make javascript \
			SWAGGER_CODEGEN_JAR=/opt/swagger-codegen/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar

tools:
	docker pull cliffano/swaggy-c

.PHONY: clean init javascript build tools
