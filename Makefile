clean:
	rm -rf generated

init:
	cd scripts && npm install node-yaml

javascript:
	swaggy-c --jar $(SWAGGER_CODEGEN_JAR) --api-spec jenkins-api.yml --conf-dir conf --out-dir generated javascript-gen javascript-install

.PHONY: clean init gen
