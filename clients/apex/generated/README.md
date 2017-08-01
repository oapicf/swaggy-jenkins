# Swaggy Jenkins API Client

Jenkins API clients generated from Swagger / Open API specification

## Requirements

- [Salesforce DX](https://www.salesforce.com/products/platform/products/salesforce-dx/)


If everything is set correctly:

- Running `sfdx version` in a command prompt should output something like:

  ```bash
  sfdx-cli/5.7.5-05549de (darwin-amd64) go1.7.5 sfdxstable
  ```


## Installation

1. Copy the output into your Salesforce DX folder - or alternatively deploy the output directly into the workspace.
2. Deploy the code via Salesforce DX to your Scratch Org

   ```bash
   $ sfdx force:source:push
   ```
3. If the API needs authentication update the Named Credential in Setup.
4. Run your Apex tests using

    ```bash
    $ sfdx sfdx force:apex:test:run
    ```
5. Retrieve the job id from the console and check the test results.

  ```bash
  $ sfdx force:apex:test:report -i theJobId
  ```


## Getting Started

Please follow the [installation](#installation) instruction and execute the following Apex code:

```java
SwagBlueOceanApi api = new SwagBlueOceanApi();

Map<String, Object> params = new Map<String, Object>{
    'q' => 'q_example'
};

try {
    // cross your fingers
    String result = api.callSearch(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwagBlueOceanApi* | [**callSearch**](docs/SwagBlueOceanApi.md#callSearch) | **GET** /blue/rest/classes/ | 
*SwagBlueOceanApi* | [**callSearch_0**](docs/SwagBlueOceanApi.md#callSearch_0) | **GET** /blue/rest/search/ | 
*SwagBlueOceanApi* | [**getAuthenticatedUser**](docs/SwagBlueOceanApi.md#getAuthenticatedUser) | **GET** /blue/rest/organizations/{organisation}/user/ | 
*SwagBlueOceanApi* | [**getClasses**](docs/SwagBlueOceanApi.md#getClasses) | **GET** /blue/rest/classes/{class} | 
*SwagBlueOceanApi* | [**getOrganisation**](docs/SwagBlueOceanApi.md#getOrganisation) | **GET** /blue/rest/organizations/{organisation} | 
*SwagBlueOceanApi* | [**getOrganisations**](docs/SwagBlueOceanApi.md#getOrganisations) | **GET** /blue/rest/organizations/ | 
*SwagBlueOceanApi* | [**getPipelineBranchByOrg**](docs/SwagBlueOceanApi.md#getPipelineBranchByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/ | 
*SwagBlueOceanApi* | [**getPipelineBranchesByOrg**](docs/SwagBlueOceanApi.md#getPipelineBranchesByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches | 
*SwagBlueOceanApi* | [**getPipelineByOrg**](docs/SwagBlueOceanApi.md#getPipelineByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline} | 
*SwagBlueOceanApi* | [**getPipelineFolderByOrg**](docs/SwagBlueOceanApi.md#getPipelineFolderByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{folder}/ | 
*SwagBlueOceanApi* | [**getPipelineFolderByOrg_0**](docs/SwagBlueOceanApi.md#getPipelineFolderByOrg_0) | **GET** /blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline} | 
*SwagBlueOceanApi* | [**getPipelinesByOrg**](docs/SwagBlueOceanApi.md#getPipelinesByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/ | 
*SwagBlueOceanApi* | [**getUser**](docs/SwagBlueOceanApi.md#getUser) | **GET** /blue/rest/organizations/{organisation}/users/{user} | 
*SwagBlueOceanApi* | [**getUsers**](docs/SwagBlueOceanApi.md#getUsers) | **GET** /blue/rest/organizations/{organisation}/users/ | 
*SwagRemoteAccessApi* | [**getComputer**](docs/SwagRemoteAccessApi.md#getComputer) | **GET** /computer/api/json?depth&#x3D;1 | 
*SwagRemoteAccessApi* | [**getCrumb**](docs/SwagRemoteAccessApi.md#getCrumb) | **GET** /crumbIssuer/api/json | 
*SwagRemoteAccessApi* | [**getJenkins**](docs/SwagRemoteAccessApi.md#getJenkins) | **GET** /api/json | 
*SwagRemoteAccessApi* | [**getJob**](docs/SwagRemoteAccessApi.md#getJob) | **GET** /job/{name}/api/json | 
*SwagRemoteAccessApi* | [**getJobConfig**](docs/SwagRemoteAccessApi.md#getJobConfig) | **GET** /job/{name}/config.xml | 
*SwagRemoteAccessApi* | [**getJobLastBuild**](docs/SwagRemoteAccessApi.md#getJobLastBuild) | **GET** /job/{name}/lastBuild/api/json | 
*SwagRemoteAccessApi* | [**getJobProgressiveText**](docs/SwagRemoteAccessApi.md#getJobProgressiveText) | **GET** /job/{name}/{number}/logText/progressiveText | 
*SwagRemoteAccessApi* | [**getQueue**](docs/SwagRemoteAccessApi.md#getQueue) | **GET** /queue/api/json | 
*SwagRemoteAccessApi* | [**getQueueItem**](docs/SwagRemoteAccessApi.md#getQueueItem) | **GET** /queue/item/{number}/api/json | 
*SwagRemoteAccessApi* | [**getView**](docs/SwagRemoteAccessApi.md#getView) | **GET** /view/{name}/api/json | 
*SwagRemoteAccessApi* | [**getViewConfig**](docs/SwagRemoteAccessApi.md#getViewConfig) | **GET** /view/{name}/config.xml | 
*SwagRemoteAccessApi* | [**headJenkins**](docs/SwagRemoteAccessApi.md#headJenkins) | **HEAD** /api/json | 
*SwagRemoteAccessApi* | [**postCreateItem**](docs/SwagRemoteAccessApi.md#postCreateItem) | **POST** /createItem | 
*SwagRemoteAccessApi* | [**postCreateView**](docs/SwagRemoteAccessApi.md#postCreateView) | **POST** /createView | 
*SwagRemoteAccessApi* | [**postJobBuild**](docs/SwagRemoteAccessApi.md#postJobBuild) | **POST** /job/{name}/build | 
*SwagRemoteAccessApi* | [**postJobConfig**](docs/SwagRemoteAccessApi.md#postJobConfig) | **POST** /job/{name}/config.xml | 
*SwagRemoteAccessApi* | [**postJobDelete**](docs/SwagRemoteAccessApi.md#postJobDelete) | **POST** /job/{name}/doDelete | 
*SwagRemoteAccessApi* | [**postJobDisable**](docs/SwagRemoteAccessApi.md#postJobDisable) | **POST** /job/{name}/disable | 
*SwagRemoteAccessApi* | [**postJobEnable**](docs/SwagRemoteAccessApi.md#postJobEnable) | **POST** /job/{name}/enable | 
*SwagRemoteAccessApi* | [**postJobLastBuildStop**](docs/SwagRemoteAccessApi.md#postJobLastBuildStop) | **POST** /job/{name}/lastBuild/stop | 
*SwagRemoteAccessApi* | [**postViewConfig**](docs/SwagRemoteAccessApi.md#postViewConfig) | **POST** /view/{name}/config.xml | 


## Documentation for Models

 - [SwagGetClassesByClass](docs/SwagGetClassesByClass.md)
 - [SwagGetMultibranchPipeline](docs/SwagGetMultibranchPipeline.md)
 - [SwagGetOrganisations](docs/SwagGetOrganisations.md)
 - [SwagGetPipelineBranches](docs/SwagGetPipelineBranches.md)
 - [SwagGetPipelineBranchesitem](docs/SwagGetPipelineBranchesitem.md)
 - [SwagGetPipelineBranchesitemLatestRun](docs/SwagGetPipelineBranchesitemLatestRun.md)
 - [SwagGetPipelineBranchesitemPullReque](docs/SwagGetPipelineBranchesitemPullReque.md)
 - [SwagGetPipelines](docs/SwagGetPipelines.md)
 - [SwagGetUsers](docs/SwagGetUsers.md)
 - [SwagHudsonmodelAllView](docs/SwagHudsonmodelAllView.md)
 - [SwagHudsonmodelCauseAction](docs/SwagHudsonmodelCauseAction.md)
 - [SwagHudsonmodelCauseUserIdCause](docs/SwagHudsonmodelCauseUserIdCause.md)
 - [SwagHudsonmodelComputerSet](docs/SwagHudsonmodelComputerSet.md)
 - [SwagHudsonmodelFreeStyleBuild](docs/SwagHudsonmodelFreeStyleBuild.md)
 - [SwagHudsonmodelFreeStyleProject](docs/SwagHudsonmodelFreeStyleProject.md)
 - [SwagHudsonmodelFreeStyleProjectactio](docs/SwagHudsonmodelFreeStyleProjectactio.md)
 - [SwagHudsonmodelFreeStyleProjecthealt](docs/SwagHudsonmodelFreeStyleProjecthealt.md)
 - [SwagHudsonmodelHudson](docs/SwagHudsonmodelHudson.md)
 - [SwagHudsonmodelHudsonMasterComputer](docs/SwagHudsonmodelHudsonMasterComputer.md)
 - [SwagHudsonmodelHudsonMasterComputerM](docs/SwagHudsonmodelHudsonMasterComputerM.md)
 - [SwagHudsonmodelHudsonMasterComputere](docs/SwagHudsonmodelHudsonMasterComputere.md)
 - [SwagHudsonmodelHudsonassignedLabels](docs/SwagHudsonmodelHudsonassignedLabels.md)
 - [SwagHudsonmodelLabel1](docs/SwagHudsonmodelLabel1.md)
 - [SwagHudsonmodelListView](docs/SwagHudsonmodelListView.md)
 - [SwagHudsonmodelQueue](docs/SwagHudsonmodelQueue.md)
 - [SwagHudsonmodelQueueBlockedItem](docs/SwagHudsonmodelQueueBlockedItem.md)
 - [SwagHudsonmodelQueueLeftItem](docs/SwagHudsonmodelQueueLeftItem.md)
 - [SwagHudsonmodelStringParameterDefini](docs/SwagHudsonmodelStringParameterDefini.md)
 - [SwagHudsonmodelStringParameterValue](docs/SwagHudsonmodelStringParameterValue.md)
 - [SwagHudsonnodeMonitorsDiskSpaceMonit](docs/SwagHudsonnodeMonitorsDiskSpaceMonit.md)
 - [SwagHudsonnodeMonitorsResponseTimeMo](docs/SwagHudsonnodeMonitorsResponseTimeMo.md)
 - [SwagHudsonnodeMonitorsSwapSpaceMonit](docs/SwagHudsonnodeMonitorsSwapSpaceMonit.md)
 - [SwagHudsonscmEmptyChangeLogSet](docs/SwagHudsonscmEmptyChangeLogSet.md)
 - [SwagHudsonscmNullSCM](docs/SwagHudsonscmNullSCM.md)
 - [SwagHudsonsecuritycsrfDefaultCrumbIs](docs/SwagHudsonsecuritycsrfDefaultCrumbIs.md)
 - [SwagHudsonutilClockDifference](docs/SwagHudsonutilClockDifference.md)
 - [SwagIojenkinsblueoceanresthalLink](docs/SwagIojenkinsblueoceanresthalLink.md)
 - [SwagIojenkinsblueoceanrestimplpipeli](docs/SwagIojenkinsblueoceanrestimplpipeli.md)
 - [SwagIojenkinsblueoceanserviceembedde](docs/SwagIojenkinsblueoceanserviceembedde.md)
 - [SwagJenkinsmodelUnlabeledLoadStatist](docs/SwagJenkinsmodelUnlabeledLoadStatist.md)
 - [SwagSwaggyjenkinsOrganisation](docs/SwagSwaggyjenkinsOrganisation.md)
 - [SwagSwaggyjenkinsPipeline](docs/SwagSwaggyjenkinsPipeline.md)
 - [SwagSwaggyjenkinsPipelineLatestRun](docs/SwagSwaggyjenkinsPipelineLatestRun.md)
 - [SwagSwaggyjenkinsPipelineLatestRunar](docs/SwagSwaggyjenkinsPipelineLatestRunar.md)
 - [SwagSwaggyjenkinsUser](docs/SwagSwaggyjenkinsUser.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### jenkins_auth

- **Type**: HTTP basic authentication


## Author

blah@cliffano.com

