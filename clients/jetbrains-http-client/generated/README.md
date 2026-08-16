# Swaggy Jenkins - Jetbrains API Client

## General API description

Jenkins API clients generated from Swagger / Open API specification

* API basepath : [http://localhost](http://localhost)
* Version : 3.4.1-pre.0

## Documentation for API Endpoints

All URIs are relative to *http://localhost*, but will link to the `.http` file that contains the endpoint definition.
There may be multiple requests for a single endpoint, one for each example described in the OpenAPI specification.

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BaseApi* | [**getCrumb**](Apis/BaseApi.http#getcrumb) | **GET** /crumbIssuer/api/json | 
*BlueOceanApi* | [**deletePipelineQueueItem**](Apis/BlueOceanApi.http#deletepipelinequeueitem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
*BlueOceanApi* | [**getAuthenticatedUser**](Apis/BlueOceanApi.http#getauthenticateduser) | **GET** /blue/rest/organizations/{organization}/user/ | 
*BlueOceanApi* | [**getClasses**](Apis/BlueOceanApi.http#getclasses) | **GET** /blue/rest/classes/{class} | 
*BlueOceanApi* | [**getJsonWebKey**](Apis/BlueOceanApi.http#getjsonwebkey) | **GET** /jwt-auth/jwks/{key} | 
*BlueOceanApi* | [**getJsonWebToken**](Apis/BlueOceanApi.http#getjsonwebtoken) | **GET** /jwt-auth/token | 
*BlueOceanApi* | [**getOrganisation**](Apis/BlueOceanApi.http#getorganisation) | **GET** /blue/rest/organizations/{organization} | 
*BlueOceanApi* | [**getOrganisations**](Apis/BlueOceanApi.http#getorganisations) | **GET** /blue/rest/organizations/ | 
*BlueOceanApi* | [**getPipeline**](Apis/BlueOceanApi.http#getpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
*BlueOceanApi* | [**getPipelineActivities**](Apis/BlueOceanApi.http#getpipelineactivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
*BlueOceanApi* | [**getPipelineBranch**](Apis/BlueOceanApi.http#getpipelinebranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
*BlueOceanApi* | [**getPipelineBranchRun**](Apis/BlueOceanApi.http#getpipelinebranchrun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
*BlueOceanApi* | [**getPipelineBranches**](Apis/BlueOceanApi.http#getpipelinebranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
*BlueOceanApi* | [**getPipelineFolder**](Apis/BlueOceanApi.http#getpipelinefolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
*BlueOceanApi* | [**getPipelineFolderPipeline**](Apis/BlueOceanApi.http#getpipelinefolderpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
*BlueOceanApi* | [**getPipelineQueue**](Apis/BlueOceanApi.http#getpipelinequeue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
*BlueOceanApi* | [**getPipelineRun**](Apis/BlueOceanApi.http#getpipelinerun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
*BlueOceanApi* | [**getPipelineRunLog**](Apis/BlueOceanApi.http#getpipelinerunlog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
*BlueOceanApi* | [**getPipelineRunNode**](Apis/BlueOceanApi.http#getpipelinerunnode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
*BlueOceanApi* | [**getPipelineRunNodeStep**](Apis/BlueOceanApi.http#getpipelinerunnodestep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
*BlueOceanApi* | [**getPipelineRunNodeStepLog**](Apis/BlueOceanApi.http#getpipelinerunnodesteplog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
*BlueOceanApi* | [**getPipelineRunNodeSteps**](Apis/BlueOceanApi.http#getpipelinerunnodesteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
*BlueOceanApi* | [**getPipelineRunNodes**](Apis/BlueOceanApi.http#getpipelinerunnodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
*BlueOceanApi* | [**getPipelineRuns**](Apis/BlueOceanApi.http#getpipelineruns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
*BlueOceanApi* | [**getPipelines**](Apis/BlueOceanApi.http#getpipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
*BlueOceanApi* | [**getSCM**](Apis/BlueOceanApi.http#getscm) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
*BlueOceanApi* | [**getSCMOrganisationRepositories**](Apis/BlueOceanApi.http#getscmorganisationrepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
*BlueOceanApi* | [**getSCMOrganisationRepository**](Apis/BlueOceanApi.http#getscmorganisationrepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
*BlueOceanApi* | [**getSCMOrganisations**](Apis/BlueOceanApi.http#getscmorganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
*BlueOceanApi* | [**getUser**](Apis/BlueOceanApi.http#getuser) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
*BlueOceanApi* | [**getUserFavorites**](Apis/BlueOceanApi.http#getuserfavorites) | **GET** /blue/rest/users/{user}/favorites | 
*BlueOceanApi* | [**getUsers**](Apis/BlueOceanApi.http#getusers) | **GET** /blue/rest/organizations/{organization}/users/ | 
*BlueOceanApi* | [**postPipelineRun**](Apis/BlueOceanApi.http#postpipelinerun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
*BlueOceanApi* | [**postPipelineRuns**](Apis/BlueOceanApi.http#postpipelineruns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
*BlueOceanApi* | [**putPipelineFavorite**](Apis/BlueOceanApi.http#putpipelinefavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
*BlueOceanApi* | [**putPipelineRun**](Apis/BlueOceanApi.http#putpipelinerun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
*BlueOceanApi* | [**search**](Apis/BlueOceanApi.http#search) | **GET** /blue/rest/search/ | 
*BlueOceanApi* | [**searchClasses**](Apis/BlueOceanApi.http#searchclasses) | **GET** /blue/rest/classes/ | 
*RemoteAccessApi* | [**getComputer**](Apis/RemoteAccessApi.http#getcomputer) | **GET** /computer/api/json | 
*RemoteAccessApi* | [**getJenkins**](Apis/RemoteAccessApi.http#getjenkins) | **GET** /api/json | 
*RemoteAccessApi* | [**getJob**](Apis/RemoteAccessApi.http#getjob) | **GET** /job/{name}/api/json | 
*RemoteAccessApi* | [**getJobConfig**](Apis/RemoteAccessApi.http#getjobconfig) | **GET** /job/{name}/config.xml | 
*RemoteAccessApi* | [**getJobLastBuild**](Apis/RemoteAccessApi.http#getjoblastbuild) | **GET** /job/{name}/lastBuild/api/json | 
*RemoteAccessApi* | [**getJobProgressiveText**](Apis/RemoteAccessApi.http#getjobprogressivetext) | **GET** /job/{name}/{number}/logText/progressiveText | 
*RemoteAccessApi* | [**getQueue**](Apis/RemoteAccessApi.http#getqueue) | **GET** /queue/api/json | 
*RemoteAccessApi* | [**getQueueItem**](Apis/RemoteAccessApi.http#getqueueitem) | **GET** /queue/item/{number}/api/json | 
*RemoteAccessApi* | [**getView**](Apis/RemoteAccessApi.http#getview) | **GET** /view/{name}/api/json | 
*RemoteAccessApi* | [**getViewConfig**](Apis/RemoteAccessApi.http#getviewconfig) | **GET** /view/{name}/config.xml | 
*RemoteAccessApi* | [**headJenkins**](Apis/RemoteAccessApi.http#headjenkins) | **HEAD** /api/json | 
*RemoteAccessApi* | [**postCreateItem**](Apis/RemoteAccessApi.http#postcreateitem) | **POST** /createItem | 
*RemoteAccessApi* | [**postCreateView**](Apis/RemoteAccessApi.http#postcreateview) | **POST** /createView | 
*RemoteAccessApi* | [**postJobBuild**](Apis/RemoteAccessApi.http#postjobbuild) | **POST** /job/{name}/build | 
*RemoteAccessApi* | [**postJobConfig**](Apis/RemoteAccessApi.http#postjobconfig) | **POST** /job/{name}/config.xml | 
*RemoteAccessApi* | [**postJobDelete**](Apis/RemoteAccessApi.http#postjobdelete) | **POST** /job/{name}/doDelete | 
*RemoteAccessApi* | [**postJobDisable**](Apis/RemoteAccessApi.http#postjobdisable) | **POST** /job/{name}/disable | 
*RemoteAccessApi* | [**postJobEnable**](Apis/RemoteAccessApi.http#postjobenable) | **POST** /job/{name}/enable | 
*RemoteAccessApi* | [**postJobLastBuildStop**](Apis/RemoteAccessApi.http#postjoblastbuildstop) | **POST** /job/{name}/lastBuild/stop | 
*RemoteAccessApi* | [**postViewConfig**](Apis/RemoteAccessApi.http#postviewconfig) | **POST** /view/{name}/config.xml | 


## Usage

### Prerequisites

You need [IntelliJ](https://www.jetbrains.com/idea/) to be able to run those queries. More information can be found [here](https://www.jetbrains.com/help/idea/http-client-in-product-code-editor.html).
You may have some luck running queries using the [Code REST Client](https://marketplace.visualstudio.com/items?itemName=humao.rest-client) as well, but your mileage may vary.

### Variables and Environment files

* Generally speaking, you want queries to be specific using custom variables. All variables in the `.http` files have the `` format.
* You can create [public or private environment files](https://www.jetbrains.com/help/idea/exploring-http-syntax.html#environment-variables) to dynamically replace the variables at runtime.

_Note: don't commit private environment files! They typically will contain sensitive information like API Keys._

### Customizations

If you have control over the generation of the files here, there are two main things you can do

* Select elements to replace as variables during generation. The process is case-sensitive. For example, API_KEY -> 
    * For this, run the generation with the `bodyVariables` property, followed by a "-" separated list of variables
    * Example: `--additional-properties bodyVariables=YOUR_MERCHANT_ACCOUNT-YOUR_COMPANY_ACCOUNT-YOUR_BALANCE_PLATFORM`
* Add custom headers to _all_ requests. This can be useful for example if your specifications are missing [security schemes](https://github.com/github/rest-api-description/issues/237).
    * For this, run the generation with the `customHeaders` property, followed by a "&" separated list of variables
    * Example : `--additional-properties=customHeaders="Cookie:X-API-KEY="&"Accept-Encoding=gzip"`

_This client was generated by the [jetbrains-http-client](https://openapi-generator.tech/docs/generators/jetbrains-http-client) generator of OpenAPI Generator_