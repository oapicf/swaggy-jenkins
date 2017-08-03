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
SwagClient client = api.getClient();


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
*SwagBlueOceanApi* | [**callSearch**](docs/SwagBlueOceanApi.md#callSearch) | **GET** /blue/rest/search/ | 
*SwagBlueOceanApi* | [**deletePipelineQueueItem**](docs/SwagBlueOceanApi.md#deletePipelineQueueItem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
*SwagBlueOceanApi* | [**getAuthenticatedUser**](docs/SwagBlueOceanApi.md#getAuthenticatedUser) | **GET** /blue/rest/organizations/{organization}/user/ | 
*SwagBlueOceanApi* | [**getClasses**](docs/SwagBlueOceanApi.md#getClasses) | **GET** /blue/rest/classes/{class} | 
*SwagBlueOceanApi* | [**getOrganisation**](docs/SwagBlueOceanApi.md#getOrganisation) | **GET** /blue/rest/organizations/{organization} | 
*SwagBlueOceanApi* | [**getOrganisations**](docs/SwagBlueOceanApi.md#getOrganisations) | **GET** /blue/rest/organizations/ | 
*SwagBlueOceanApi* | [**getPipeline**](docs/SwagBlueOceanApi.md#getPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
*SwagBlueOceanApi* | [**getPipelineActivities**](docs/SwagBlueOceanApi.md#getPipelineActivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
*SwagBlueOceanApi* | [**getPipelineBranch**](docs/SwagBlueOceanApi.md#getPipelineBranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
*SwagBlueOceanApi* | [**getPipelineBranchRun**](docs/SwagBlueOceanApi.md#getPipelineBranchRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
*SwagBlueOceanApi* | [**getPipelineBranches**](docs/SwagBlueOceanApi.md#getPipelineBranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
*SwagBlueOceanApi* | [**getPipelineFolder**](docs/SwagBlueOceanApi.md#getPipelineFolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
*SwagBlueOceanApi* | [**getPipelineFolderPipeline**](docs/SwagBlueOceanApi.md#getPipelineFolderPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
*SwagBlueOceanApi* | [**getPipelineQueue**](docs/SwagBlueOceanApi.md#getPipelineQueue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
*SwagBlueOceanApi* | [**getPipelineRun**](docs/SwagBlueOceanApi.md#getPipelineRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
*SwagBlueOceanApi* | [**getPipelineRunLog**](docs/SwagBlueOceanApi.md#getPipelineRunLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
*SwagBlueOceanApi* | [**getPipelineRunNode**](docs/SwagBlueOceanApi.md#getPipelineRunNode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
*SwagBlueOceanApi* | [**getPipelineRunNodeStep**](docs/SwagBlueOceanApi.md#getPipelineRunNodeStep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
*SwagBlueOceanApi* | [**getPipelineRunNodeStepLog**](docs/SwagBlueOceanApi.md#getPipelineRunNodeStepLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
*SwagBlueOceanApi* | [**getPipelineRunNodeSteps**](docs/SwagBlueOceanApi.md#getPipelineRunNodeSteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
*SwagBlueOceanApi* | [**getPipelineRunNodes**](docs/SwagBlueOceanApi.md#getPipelineRunNodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
*SwagBlueOceanApi* | [**getPipelineRuns**](docs/SwagBlueOceanApi.md#getPipelineRuns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
*SwagBlueOceanApi* | [**getPipelines**](docs/SwagBlueOceanApi.md#getPipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
*SwagBlueOceanApi* | [**getSCM**](docs/SwagBlueOceanApi.md#getSCM) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
*SwagBlueOceanApi* | [**getSCMOrganisationRepositories**](docs/SwagBlueOceanApi.md#getSCMOrganisationRepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
*SwagBlueOceanApi* | [**getSCMOrganisationRepository**](docs/SwagBlueOceanApi.md#getSCMOrganisationRepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
*SwagBlueOceanApi* | [**getSCMOrganisations**](docs/SwagBlueOceanApi.md#getSCMOrganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
*SwagBlueOceanApi* | [**getUser**](docs/SwagBlueOceanApi.md#getUser) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
*SwagBlueOceanApi* | [**getUserFavorites**](docs/SwagBlueOceanApi.md#getUserFavorites) | **GET** /blue/rest/users/{user}/favorites | 
*SwagBlueOceanApi* | [**getUsers**](docs/SwagBlueOceanApi.md#getUsers) | **GET** /blue/rest/organizations/{organization}/users/ | 
*SwagBlueOceanApi* | [**postPipelineRun**](docs/SwagBlueOceanApi.md#postPipelineRun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
*SwagBlueOceanApi* | [**postPipelineRuns**](docs/SwagBlueOceanApi.md#postPipelineRuns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
*SwagBlueOceanApi* | [**putPipelineFavorite**](docs/SwagBlueOceanApi.md#putPipelineFavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
*SwagBlueOceanApi* | [**putPipelineRun**](docs/SwagBlueOceanApi.md#putPipelineRun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
*SwagBlueOceanApi* | [**searchClasses**](docs/SwagBlueOceanApi.md#searchClasses) | **GET** /blue/rest/classes/ | 
*SwagRemoteAccessApi* | [**getComputer**](docs/SwagRemoteAccessApi.md#getComputer) | **GET** /computer/api/json | 
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

 - [SwagAllView](docs/SwagAllView.md)
 - [SwagBody](docs/SwagBody.md)
 - [SwagBranchImpl](docs/SwagBranchImpl.md)
 - [SwagBranchImpllinks](docs/SwagBranchImpllinks.md)
 - [SwagBranchImplpermissions](docs/SwagBranchImplpermissions.md)
 - [SwagCauseAction](docs/SwagCauseAction.md)
 - [SwagCauseUserIdCause](docs/SwagCauseUserIdCause.md)
 - [SwagClassesByClass](docs/SwagClassesByClass.md)
 - [SwagClockDifference](docs/SwagClockDifference.md)
 - [SwagComputerSet](docs/SwagComputerSet.md)
 - [SwagDefaultCrumbIssuer](docs/SwagDefaultCrumbIssuer.md)
 - [SwagDiskSpaceMonitorDescriptorDiskSp](docs/SwagDiskSpaceMonitorDescriptorDiskSp.md)
 - [SwagEmptyChangeLogSet](docs/SwagEmptyChangeLogSet.md)
 - [SwagExtensionClassContainerImpl1](docs/SwagExtensionClassContainerImpl1.md)
 - [SwagExtensionClassContainerImpl1link](docs/SwagExtensionClassContainerImpl1link.md)
 - [SwagExtensionClassContainerImpl1map](docs/SwagExtensionClassContainerImpl1map.md)
 - [SwagExtensionClassImpl](docs/SwagExtensionClassImpl.md)
 - [SwagExtensionClassImpllinks](docs/SwagExtensionClassImpllinks.md)
 - [SwagFavoriteImpl](docs/SwagFavoriteImpl.md)
 - [SwagFavoriteImpllinks](docs/SwagFavoriteImpllinks.md)
 - [SwagFreeStyleBuild](docs/SwagFreeStyleBuild.md)
 - [SwagFreeStyleProject](docs/SwagFreeStyleProject.md)
 - [SwagFreeStyleProjectactions](docs/SwagFreeStyleProjectactions.md)
 - [SwagFreeStyleProjecthealthReport](docs/SwagFreeStyleProjecthealthReport.md)
 - [SwagGenericResource](docs/SwagGenericResource.md)
 - [SwagGithubContent](docs/SwagGithubContent.md)
 - [SwagGithubFile](docs/SwagGithubFile.md)
 - [SwagGithubOrganization](docs/SwagGithubOrganization.md)
 - [SwagGithubOrganizationlinks](docs/SwagGithubOrganizationlinks.md)
 - [SwagGithubRepositories](docs/SwagGithubRepositories.md)
 - [SwagGithubRepositorieslinks](docs/SwagGithubRepositorieslinks.md)
 - [SwagGithubRepository](docs/SwagGithubRepository.md)
 - [SwagGithubRepositorylinks](docs/SwagGithubRepositorylinks.md)
 - [SwagGithubRepositorypermissions](docs/SwagGithubRepositorypermissions.md)
 - [SwagGithubRespositoryContainer](docs/SwagGithubRespositoryContainer.md)
 - [SwagGithubRespositoryContainerlinks](docs/SwagGithubRespositoryContainerlinks.md)
 - [SwagGithubScm](docs/SwagGithubScm.md)
 - [SwagGithubScmlinks](docs/SwagGithubScmlinks.md)
 - [SwagHudson](docs/SwagHudson.md)
 - [SwagHudsonMasterComputer](docs/SwagHudsonMasterComputer.md)
 - [SwagHudsonMasterComputerexecutors](docs/SwagHudsonMasterComputerexecutors.md)
 - [SwagHudsonMasterComputermonitorData](docs/SwagHudsonMasterComputermonitorData.md)
 - [SwagHudsonassignedLabels](docs/SwagHudsonassignedLabels.md)
 - [SwagInputStepImpl](docs/SwagInputStepImpl.md)
 - [SwagInputStepImpllinks](docs/SwagInputStepImpllinks.md)
 - [SwagLabel1](docs/SwagLabel1.md)
 - [SwagLink](docs/SwagLink.md)
 - [SwagListView](docs/SwagListView.md)
 - [SwagMultibranchPipeline](docs/SwagMultibranchPipeline.md)
 - [SwagNullSCM](docs/SwagNullSCM.md)
 - [SwagOrganisation](docs/SwagOrganisation.md)
 - [SwagOrganisations](docs/SwagOrganisations.md)
 - [SwagPipeline](docs/SwagPipeline.md)
 - [SwagPipelineActivities](docs/SwagPipelineActivities.md)
 - [SwagPipelineActivity](docs/SwagPipelineActivity.md)
 - [SwagPipelineActivityartifacts](docs/SwagPipelineActivityartifacts.md)
 - [SwagPipelineBranches](docs/SwagPipelineBranches.md)
 - [SwagPipelineBranchesitem](docs/SwagPipelineBranchesitem.md)
 - [SwagPipelineBranchesitemlatestRun](docs/SwagPipelineBranchesitemlatestRun.md)
 - [SwagPipelineBranchesitempullRequest](docs/SwagPipelineBranchesitempullRequest.md)
 - [SwagPipelineBranchesitempullRequestl](docs/SwagPipelineBranchesitempullRequestl.md)
 - [SwagPipelineFolderImpl](docs/SwagPipelineFolderImpl.md)
 - [SwagPipelineImpl](docs/SwagPipelineImpl.md)
 - [SwagPipelineImpllinks](docs/SwagPipelineImpllinks.md)
 - [SwagPipelineQueue](docs/SwagPipelineQueue.md)
 - [SwagPipelineRun](docs/SwagPipelineRun.md)
 - [SwagPipelineRunImpl](docs/SwagPipelineRunImpl.md)
 - [SwagPipelineRunImpllinks](docs/SwagPipelineRunImpllinks.md)
 - [SwagPipelineRunNode](docs/SwagPipelineRunNode.md)
 - [SwagPipelineRunNodeSteps](docs/SwagPipelineRunNodeSteps.md)
 - [SwagPipelineRunNodeedges](docs/SwagPipelineRunNodeedges.md)
 - [SwagPipelineRunNodes](docs/SwagPipelineRunNodes.md)
 - [SwagPipelineRunSteps](docs/SwagPipelineRunSteps.md)
 - [SwagPipelineRunartifacts](docs/SwagPipelineRunartifacts.md)
 - [SwagPipelineRuns](docs/SwagPipelineRuns.md)
 - [SwagPipelineStepImpl](docs/SwagPipelineStepImpl.md)
 - [SwagPipelineStepImpllinks](docs/SwagPipelineStepImpllinks.md)
 - [SwagPipelinelatestRun](docs/SwagPipelinelatestRun.md)
 - [SwagPipelinelatestRunartifacts](docs/SwagPipelinelatestRunartifacts.md)
 - [SwagPipelines](docs/SwagPipelines.md)
 - [SwagQueue](docs/SwagQueue.md)
 - [SwagQueueBlockedItem](docs/SwagQueueBlockedItem.md)
 - [SwagQueueItemImpl](docs/SwagQueueItemImpl.md)
 - [SwagQueueLeftItem](docs/SwagQueueLeftItem.md)
 - [SwagResponseTimeMonitorData](docs/SwagResponseTimeMonitorData.md)
 - [SwagScmOrganisations](docs/SwagScmOrganisations.md)
 - [SwagStringParameterDefinition](docs/SwagStringParameterDefinition.md)
 - [SwagStringParameterValue](docs/SwagStringParameterValue.md)
 - [SwagSwapSpaceMonitorMemoryUsage2](docs/SwagSwapSpaceMonitorMemoryUsage2.md)
 - [SwagUnlabeledLoadStatistics](docs/SwagUnlabeledLoadStatistics.md)
 - [SwagUser](docs/SwagUser.md)
 - [SwagUserFavorites](docs/SwagUserFavorites.md)
 - [SwagUsers](docs/SwagUsers.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### jenkins_auth

- **Type**: HTTP basic authentication


## Author

blah@cliffano.com

