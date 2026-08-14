# Helidon SE Server with OpenAPI

## Build and run

With JDK11+
```bash
mvn package
java -jar target/openapi-java-server.jar
```

## Exercise the application

```
curl -X GET http://localhost/crumbIssuer/api/json
curl -X DELETE http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}
curl -X GET http://localhost/blue/rest/organizations/{organization}/user/
curl -X GET http://localhost/blue/rest/classes/{class}
curl -X GET http://localhost/jwt-auth/jwks/{key}
curl -X GET http://localhost/jwt-auth/token
curl -X GET http://localhost/blue/rest/organizations/{organization}
curl -X GET http://localhost/blue/rest/organizations/
curl -X GET http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}
curl -X GET http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities
curl -X GET http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/
curl -X GET http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}
curl -X GET http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches
curl -X GET http://localhost/blue/rest/organizations/{organization}/pipelines/{folder}/
curl -X GET http://localhost/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}
curl -X GET http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue
curl -X GET http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}
curl -X GET http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log
curl -X GET http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}
curl -X GET http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}
curl -X GET http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log
curl -X GET http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps
curl -X GET http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes
curl -X GET http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs
curl -X GET http://localhost/blue/rest/organizations/{organization}/pipelines/
curl -X GET http://localhost/blue/rest/organizations/{organization}/scm/{scm}
curl -X GET http://localhost/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories
curl -X GET http://localhost/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}
curl -X GET http://localhost/blue/rest/organizations/{organization}/scm/{scm}/organizations
curl -X GET http://localhost/blue/rest/organizations/{organization}/users/{user}
curl -X GET http://localhost/blue/rest/users/{user}/favorites
curl -X GET http://localhost/blue/rest/organizations/{organization}/users/
curl -X POST http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay
curl -X POST http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs
curl -X PUT http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite
curl -X PUT http://localhost/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop
curl -X GET http://localhost/blue/rest/search/
curl -X GET http://localhost/blue/rest/classes/
curl -X GET http://localhost/computer/api/json
curl -X GET http://localhost/api/json
curl -X GET http://localhost/job/{name}/api/json
curl -X GET http://localhost/job/{name}/config.xml
curl -X GET http://localhost/job/{name}/lastBuild/api/json
curl -X GET http://localhost/job/{name}/{number}/logText/progressiveText
curl -X GET http://localhost/queue/api/json
curl -X GET http://localhost/queue/item/{number}/api/json
curl -X GET http://localhost/view/{name}/api/json
curl -X GET http://localhost/view/{name}/config.xml
curl -X HEAD http://localhost/api/json
curl -X POST http://localhost/createItem
curl -X POST http://localhost/createView
curl -X POST http://localhost/job/{name}/build
curl -X POST http://localhost/job/{name}/config.xml
curl -X POST http://localhost/job/{name}/doDelete
curl -X POST http://localhost/job/{name}/disable
curl -X POST http://localhost/job/{name}/enable
curl -X POST http://localhost/job/{name}/lastBuild/stop
curl -X POST http://localhost/view/{name}/config.xml

```

## Try health and metrics

```
curl -s -X GET http://localhost/health
{"outcome":"UP",...
. . .

# Prometheus Format
curl -s -X GET http://localhost/metrics
# TYPE base:gc_g1_young_generation_count gauge
. . .

# JSON Format
curl -H 'Accept: application/json' -X GET http://localhost/metrics
{"base":...
. . .
```