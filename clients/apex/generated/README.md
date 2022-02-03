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
      sfdx force:source:push
   ```

3. If the API needs authentication update the Named Credential in Setup.
4. Run your Apex tests using

   ```bash
       sfdx sfdx force:apex:test:run
   ```

5. Retrieve the job id from the console and check the test results.

  ```bash
  sfdx force:apex:test:report -i theJobId
  ```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Apex code:

```java
OASBaseApi api = new OASBaseApi();
OASClient client = api.getClient();


try {
    // cross your fingers
    OASDefaultCrumbIssuer result = api.getCrumb();
    System.debug(result);
} catch (OAS.ApiException e) {
    // ...handle your exceptions
}
```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OASBaseApi* | [**getCrumb**](OASBaseApi.md#getCrumb) | **GET** /crumbIssuer/api/json | 
*OASBlueOceanApi* | [**deletePipelineQueueItem**](OASBlueOceanApi.md#deletePipelineQueueItem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
*OASBlueOceanApi* | [**getAuthenticatedUser**](OASBlueOceanApi.md#getAuthenticatedUser) | **GET** /blue/rest/organizations/{organization}/user/ | 
*OASBlueOceanApi* | [**getClasses**](OASBlueOceanApi.md#getClasses) | **GET** /blue/rest/classes/{class} | 
*OASBlueOceanApi* | [**getJsonWebKey**](OASBlueOceanApi.md#getJsonWebKey) | **GET** /jwt-auth/jwks/{key} | 
*OASBlueOceanApi* | [**getJsonWebToken**](OASBlueOceanApi.md#getJsonWebToken) | **GET** /jwt-auth/token | 
*OASBlueOceanApi* | [**getOrganisation**](OASBlueOceanApi.md#getOrganisation) | **GET** /blue/rest/organizations/{organization} | 
*OASBlueOceanApi* | [**getOrganisations**](OASBlueOceanApi.md#getOrganisations) | **GET** /blue/rest/organizations/ | 
*OASBlueOceanApi* | [**getPipeline**](OASBlueOceanApi.md#getPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
*OASBlueOceanApi* | [**getPipelineActivities**](OASBlueOceanApi.md#getPipelineActivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
*OASBlueOceanApi* | [**getPipelineBranch**](OASBlueOceanApi.md#getPipelineBranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
*OASBlueOceanApi* | [**getPipelineBranchRun**](OASBlueOceanApi.md#getPipelineBranchRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
*OASBlueOceanApi* | [**getPipelineBranches**](OASBlueOceanApi.md#getPipelineBranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
*OASBlueOceanApi* | [**getPipelineFolder**](OASBlueOceanApi.md#getPipelineFolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
*OASBlueOceanApi* | [**getPipelineFolderPipeline**](OASBlueOceanApi.md#getPipelineFolderPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
*OASBlueOceanApi* | [**getPipelineQueue**](OASBlueOceanApi.md#getPipelineQueue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
*OASBlueOceanApi* | [**getPipelineRun**](OASBlueOceanApi.md#getPipelineRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
*OASBlueOceanApi* | [**getPipelineRunLog**](OASBlueOceanApi.md#getPipelineRunLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
*OASBlueOceanApi* | [**getPipelineRunNode**](OASBlueOceanApi.md#getPipelineRunNode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
*OASBlueOceanApi* | [**getPipelineRunNodeStep**](OASBlueOceanApi.md#getPipelineRunNodeStep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
*OASBlueOceanApi* | [**getPipelineRunNodeStepLog**](OASBlueOceanApi.md#getPipelineRunNodeStepLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
*OASBlueOceanApi* | [**getPipelineRunNodeSteps**](OASBlueOceanApi.md#getPipelineRunNodeSteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
*OASBlueOceanApi* | [**getPipelineRunNodes**](OASBlueOceanApi.md#getPipelineRunNodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
*OASBlueOceanApi* | [**getPipelineRuns**](OASBlueOceanApi.md#getPipelineRuns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
*OASBlueOceanApi* | [**getPipelines**](OASBlueOceanApi.md#getPipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
*OASBlueOceanApi* | [**getSCM**](OASBlueOceanApi.md#getSCM) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
*OASBlueOceanApi* | [**getSCMOrganisationRepositories**](OASBlueOceanApi.md#getSCMOrganisationRepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
*OASBlueOceanApi* | [**getSCMOrganisationRepository**](OASBlueOceanApi.md#getSCMOrganisationRepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
*OASBlueOceanApi* | [**getSCMOrganisations**](OASBlueOceanApi.md#getSCMOrganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
*OASBlueOceanApi* | [**getUser**](OASBlueOceanApi.md#getUser) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
*OASBlueOceanApi* | [**getUserFavorites**](OASBlueOceanApi.md#getUserFavorites) | **GET** /blue/rest/users/{user}/favorites | 
*OASBlueOceanApi* | [**getUsers**](OASBlueOceanApi.md#getUsers) | **GET** /blue/rest/organizations/{organization}/users/ | 
*OASBlueOceanApi* | [**postPipelineRun**](OASBlueOceanApi.md#postPipelineRun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
*OASBlueOceanApi* | [**postPipelineRuns**](OASBlueOceanApi.md#postPipelineRuns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
*OASBlueOceanApi* | [**putPipelineFavorite**](OASBlueOceanApi.md#putPipelineFavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
*OASBlueOceanApi* | [**putPipelineRun**](OASBlueOceanApi.md#putPipelineRun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
*OASBlueOceanApi* | [**search**](OASBlueOceanApi.md#search) | **GET** /blue/rest/search/ | 
*OASBlueOceanApi* | [**searchClasses**](OASBlueOceanApi.md#searchClasses) | **GET** /blue/rest/classes/ | 
*OASRemoteAccessApi* | [**getComputer**](OASRemoteAccessApi.md#getComputer) | **GET** /computer/api/json | 
*OASRemoteAccessApi* | [**getJenkins**](OASRemoteAccessApi.md#getJenkins) | **GET** /api/json | 
*OASRemoteAccessApi* | [**getJob**](OASRemoteAccessApi.md#getJob) | **GET** /job/{name}/api/json | 
*OASRemoteAccessApi* | [**getJobConfig**](OASRemoteAccessApi.md#getJobConfig) | **GET** /job/{name}/config.xml | 
*OASRemoteAccessApi* | [**getJobLastBuild**](OASRemoteAccessApi.md#getJobLastBuild) | **GET** /job/{name}/lastBuild/api/json | 
*OASRemoteAccessApi* | [**getJobProgressiveText**](OASRemoteAccessApi.md#getJobProgressiveText) | **GET** /job/{name}/{number}/logText/progressiveText | 
*OASRemoteAccessApi* | [**getQueue**](OASRemoteAccessApi.md#getQueue) | **GET** /queue/api/json | 
*OASRemoteAccessApi* | [**getQueueItem**](OASRemoteAccessApi.md#getQueueItem) | **GET** /queue/item/{number}/api/json | 
*OASRemoteAccessApi* | [**getView**](OASRemoteAccessApi.md#getView) | **GET** /view/{name}/api/json | 
*OASRemoteAccessApi* | [**getViewConfig**](OASRemoteAccessApi.md#getViewConfig) | **GET** /view/{name}/config.xml | 
*OASRemoteAccessApi* | [**headJenkins**](OASRemoteAccessApi.md#headJenkins) | **HEAD** /api/json | 
*OASRemoteAccessApi* | [**postCreateItem**](OASRemoteAccessApi.md#postCreateItem) | **POST** /createItem | 
*OASRemoteAccessApi* | [**postCreateView**](OASRemoteAccessApi.md#postCreateView) | **POST** /createView | 
*OASRemoteAccessApi* | [**postJobBuild**](OASRemoteAccessApi.md#postJobBuild) | **POST** /job/{name}/build | 
*OASRemoteAccessApi* | [**postJobConfig**](OASRemoteAccessApi.md#postJobConfig) | **POST** /job/{name}/config.xml | 
*OASRemoteAccessApi* | [**postJobDelete**](OASRemoteAccessApi.md#postJobDelete) | **POST** /job/{name}/doDelete | 
*OASRemoteAccessApi* | [**postJobDisable**](OASRemoteAccessApi.md#postJobDisable) | **POST** /job/{name}/disable | 
*OASRemoteAccessApi* | [**postJobEnable**](OASRemoteAccessApi.md#postJobEnable) | **POST** /job/{name}/enable | 
*OASRemoteAccessApi* | [**postJobLastBuildStop**](OASRemoteAccessApi.md#postJobLastBuildStop) | **POST** /job/{name}/lastBuild/stop | 
*OASRemoteAccessApi* | [**postViewConfig**](OASRemoteAccessApi.md#postViewConfig) | **POST** /view/{name}/config.xml | 


## Documentation for Models

 - [OASAllView](OASAllView.md)
 - [OASBranchImpl](OASBranchImpl.md)
 - [OASBranchImpllinks](OASBranchImpllinks.md)
 - [OASBranchImplpermissions](OASBranchImplpermissions.md)
 - [OASCauseAction](OASCauseAction.md)
 - [OASCauseUserIdCause](OASCauseUserIdCause.md)
 - [OASClassesByClass](OASClassesByClass.md)
 - [OASClockDifference](OASClockDifference.md)
 - [OASComputerSet](OASComputerSet.md)
 - [OASDefaultCrumbIssuer](OASDefaultCrumbIssuer.md)
 - [OASDiskSpaceMonitorDescriptorDiskSpa](OASDiskSpaceMonitorDescriptorDiskSpa.md)
 - [OASEmptyChangeLogSet](OASEmptyChangeLogSet.md)
 - [OASExtensionClassContainerImpl1](OASExtensionClassContainerImpl1.md)
 - [OASExtensionClassContainerImpl1links](OASExtensionClassContainerImpl1links.md)
 - [OASExtensionClassContainerImpl1map](OASExtensionClassContainerImpl1map.md)
 - [OASExtensionClassImpl](OASExtensionClassImpl.md)
 - [OASExtensionClassImpllinks](OASExtensionClassImpllinks.md)
 - [OASFavoriteImpl](OASFavoriteImpl.md)
 - [OASFavoriteImpllinks](OASFavoriteImpllinks.md)
 - [OASFreeStyleBuild](OASFreeStyleBuild.md)
 - [OASFreeStyleProject](OASFreeStyleProject.md)
 - [OASFreeStyleProjectactions](OASFreeStyleProjectactions.md)
 - [OASFreeStyleProjecthealthReport](OASFreeStyleProjecthealthReport.md)
 - [OASGenericResource](OASGenericResource.md)
 - [OASGithubContent](OASGithubContent.md)
 - [OASGithubFile](OASGithubFile.md)
 - [OASGithubOrganization](OASGithubOrganization.md)
 - [OASGithubOrganizationlinks](OASGithubOrganizationlinks.md)
 - [OASGithubRepositories](OASGithubRepositories.md)
 - [OASGithubRepositorieslinks](OASGithubRepositorieslinks.md)
 - [OASGithubRepository](OASGithubRepository.md)
 - [OASGithubRepositorylinks](OASGithubRepositorylinks.md)
 - [OASGithubRepositorypermissions](OASGithubRepositorypermissions.md)
 - [OASGithubRespositoryContainer](OASGithubRespositoryContainer.md)
 - [OASGithubRespositoryContainerlinks](OASGithubRespositoryContainerlinks.md)
 - [OASGithubScm](OASGithubScm.md)
 - [OASGithubScmlinks](OASGithubScmlinks.md)
 - [OASHudson](OASHudson.md)
 - [OASHudsonMasterComputer](OASHudsonMasterComputer.md)
 - [OASHudsonMasterComputerexecutors](OASHudsonMasterComputerexecutors.md)
 - [OASHudsonMasterComputermonitorData](OASHudsonMasterComputermonitorData.md)
 - [OASHudsonassignedLabels](OASHudsonassignedLabels.md)
 - [OASInputStepImpl](OASInputStepImpl.md)
 - [OASInputStepImpllinks](OASInputStepImpllinks.md)
 - [OASLabel1](OASLabel1.md)
 - [OASLink](OASLink.md)
 - [OASListView](OASListView.md)
 - [OASMultibranchPipeline](OASMultibranchPipeline.md)
 - [OASNullSCM](OASNullSCM.md)
 - [OASOrganisation](OASOrganisation.md)
 - [OASPipeline](OASPipeline.md)
 - [OASPipelineActivity](OASPipelineActivity.md)
 - [OASPipelineActivityartifacts](OASPipelineActivityartifacts.md)
 - [OASPipelineBranchesitem](OASPipelineBranchesitem.md)
 - [OASPipelineBranchesitemlatestRun](OASPipelineBranchesitemlatestRun.md)
 - [OASPipelineBranchesitempullRequest](OASPipelineBranchesitempullRequest.md)
 - [OASPipelineBranchesitempullRequestli](OASPipelineBranchesitempullRequestli.md)
 - [OASPipelineFolderImpl](OASPipelineFolderImpl.md)
 - [OASPipelineImpl](OASPipelineImpl.md)
 - [OASPipelineImpllinks](OASPipelineImpllinks.md)
 - [OASPipelineRun](OASPipelineRun.md)
 - [OASPipelineRunImpl](OASPipelineRunImpl.md)
 - [OASPipelineRunImpllinks](OASPipelineRunImpllinks.md)
 - [OASPipelineRunNode](OASPipelineRunNode.md)
 - [OASPipelineRunNodeedges](OASPipelineRunNodeedges.md)
 - [OASPipelineRunartifacts](OASPipelineRunartifacts.md)
 - [OASPipelineStepImpl](OASPipelineStepImpl.md)
 - [OASPipelineStepImpllinks](OASPipelineStepImpllinks.md)
 - [OASPipelinelatestRun](OASPipelinelatestRun.md)
 - [OASPipelinelatestRunartifacts](OASPipelinelatestRunartifacts.md)
 - [OASQueue](OASQueue.md)
 - [OASQueueBlockedItem](OASQueueBlockedItem.md)
 - [OASQueueItemImpl](OASQueueItemImpl.md)
 - [OASQueueLeftItem](OASQueueLeftItem.md)
 - [OASResponseTimeMonitorData](OASResponseTimeMonitorData.md)
 - [OASStringParameterDefinition](OASStringParameterDefinition.md)
 - [OASStringParameterValue](OASStringParameterValue.md)
 - [OASSwapSpaceMonitorMemoryUsage2](OASSwapSpaceMonitorMemoryUsage2.md)
 - [OASUnlabeledLoadStatistics](OASUnlabeledLoadStatistics.md)
 - [OASUser](OASUser.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### jenkins_auth

- **Type**: HTTP basic authentication

### jwt_auth


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


## Author

blah@cliffano.com

