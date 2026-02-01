# OpenAPIClient-php

Jenkins API clients generated from Swagger / Open API specification

For more information, please visit [https://github.com/oapicf/swaggy-jenkins](https://github.com/oapicf/swaggy-jenkins).

## Installation & Usage

### Requirements

PHP 8.1 and later.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/oapicf/swaggy-jenkins.git"
    }
  ],
  "require": {
    "oapicf/swaggy-jenkins": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/OpenAPIClient-php/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BaseApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getCrumb();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BaseApi->getCrumb: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BaseApi* | [**getCrumb**](docs/Api/BaseApi.md#getcrumb) | **GET** /crumbIssuer/api/json | 
*BlueOceanApi* | [**deletePipelineQueueItem**](docs/Api/BlueOceanApi.md#deletepipelinequeueitem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
*BlueOceanApi* | [**getAuthenticatedUser**](docs/Api/BlueOceanApi.md#getauthenticateduser) | **GET** /blue/rest/organizations/{organization}/user/ | 
*BlueOceanApi* | [**getClasses**](docs/Api/BlueOceanApi.md#getclasses) | **GET** /blue/rest/classes/{class} | 
*BlueOceanApi* | [**getJsonWebKey**](docs/Api/BlueOceanApi.md#getjsonwebkey) | **GET** /jwt-auth/jwks/{key} | 
*BlueOceanApi* | [**getJsonWebToken**](docs/Api/BlueOceanApi.md#getjsonwebtoken) | **GET** /jwt-auth/token | 
*BlueOceanApi* | [**getOrganisation**](docs/Api/BlueOceanApi.md#getorganisation) | **GET** /blue/rest/organizations/{organization} | 
*BlueOceanApi* | [**getOrganisations**](docs/Api/BlueOceanApi.md#getorganisations) | **GET** /blue/rest/organizations/ | 
*BlueOceanApi* | [**getPipeline**](docs/Api/BlueOceanApi.md#getpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
*BlueOceanApi* | [**getPipelineActivities**](docs/Api/BlueOceanApi.md#getpipelineactivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
*BlueOceanApi* | [**getPipelineBranch**](docs/Api/BlueOceanApi.md#getpipelinebranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
*BlueOceanApi* | [**getPipelineBranchRun**](docs/Api/BlueOceanApi.md#getpipelinebranchrun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
*BlueOceanApi* | [**getPipelineBranches**](docs/Api/BlueOceanApi.md#getpipelinebranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
*BlueOceanApi* | [**getPipelineFolder**](docs/Api/BlueOceanApi.md#getpipelinefolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
*BlueOceanApi* | [**getPipelineFolderPipeline**](docs/Api/BlueOceanApi.md#getpipelinefolderpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
*BlueOceanApi* | [**getPipelineQueue**](docs/Api/BlueOceanApi.md#getpipelinequeue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
*BlueOceanApi* | [**getPipelineRun**](docs/Api/BlueOceanApi.md#getpipelinerun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
*BlueOceanApi* | [**getPipelineRunLog**](docs/Api/BlueOceanApi.md#getpipelinerunlog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
*BlueOceanApi* | [**getPipelineRunNode**](docs/Api/BlueOceanApi.md#getpipelinerunnode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
*BlueOceanApi* | [**getPipelineRunNodeStep**](docs/Api/BlueOceanApi.md#getpipelinerunnodestep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
*BlueOceanApi* | [**getPipelineRunNodeStepLog**](docs/Api/BlueOceanApi.md#getpipelinerunnodesteplog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
*BlueOceanApi* | [**getPipelineRunNodeSteps**](docs/Api/BlueOceanApi.md#getpipelinerunnodesteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
*BlueOceanApi* | [**getPipelineRunNodes**](docs/Api/BlueOceanApi.md#getpipelinerunnodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
*BlueOceanApi* | [**getPipelineRuns**](docs/Api/BlueOceanApi.md#getpipelineruns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
*BlueOceanApi* | [**getPipelines**](docs/Api/BlueOceanApi.md#getpipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
*BlueOceanApi* | [**getSCM**](docs/Api/BlueOceanApi.md#getscm) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
*BlueOceanApi* | [**getSCMOrganisationRepositories**](docs/Api/BlueOceanApi.md#getscmorganisationrepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
*BlueOceanApi* | [**getSCMOrganisationRepository**](docs/Api/BlueOceanApi.md#getscmorganisationrepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
*BlueOceanApi* | [**getSCMOrganisations**](docs/Api/BlueOceanApi.md#getscmorganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
*BlueOceanApi* | [**getUser**](docs/Api/BlueOceanApi.md#getuser) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
*BlueOceanApi* | [**getUserFavorites**](docs/Api/BlueOceanApi.md#getuserfavorites) | **GET** /blue/rest/users/{user}/favorites | 
*BlueOceanApi* | [**getUsers**](docs/Api/BlueOceanApi.md#getusers) | **GET** /blue/rest/organizations/{organization}/users/ | 
*BlueOceanApi* | [**postPipelineRun**](docs/Api/BlueOceanApi.md#postpipelinerun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
*BlueOceanApi* | [**postPipelineRuns**](docs/Api/BlueOceanApi.md#postpipelineruns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
*BlueOceanApi* | [**putPipelineFavorite**](docs/Api/BlueOceanApi.md#putpipelinefavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
*BlueOceanApi* | [**putPipelineRun**](docs/Api/BlueOceanApi.md#putpipelinerun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
*BlueOceanApi* | [**search**](docs/Api/BlueOceanApi.md#search) | **GET** /blue/rest/search/ | 
*BlueOceanApi* | [**searchClasses**](docs/Api/BlueOceanApi.md#searchclasses) | **GET** /blue/rest/classes/ | 
*RemoteAccessApi* | [**getComputer**](docs/Api/RemoteAccessApi.md#getcomputer) | **GET** /computer/api/json | 
*RemoteAccessApi* | [**getJenkins**](docs/Api/RemoteAccessApi.md#getjenkins) | **GET** /api/json | 
*RemoteAccessApi* | [**getJob**](docs/Api/RemoteAccessApi.md#getjob) | **GET** /job/{name}/api/json | 
*RemoteAccessApi* | [**getJobConfig**](docs/Api/RemoteAccessApi.md#getjobconfig) | **GET** /job/{name}/config.xml | 
*RemoteAccessApi* | [**getJobLastBuild**](docs/Api/RemoteAccessApi.md#getjoblastbuild) | **GET** /job/{name}/lastBuild/api/json | 
*RemoteAccessApi* | [**getJobProgressiveText**](docs/Api/RemoteAccessApi.md#getjobprogressivetext) | **GET** /job/{name}/{number}/logText/progressiveText | 
*RemoteAccessApi* | [**getQueue**](docs/Api/RemoteAccessApi.md#getqueue) | **GET** /queue/api/json | 
*RemoteAccessApi* | [**getQueueItem**](docs/Api/RemoteAccessApi.md#getqueueitem) | **GET** /queue/item/{number}/api/json | 
*RemoteAccessApi* | [**getView**](docs/Api/RemoteAccessApi.md#getview) | **GET** /view/{name}/api/json | 
*RemoteAccessApi* | [**getViewConfig**](docs/Api/RemoteAccessApi.md#getviewconfig) | **GET** /view/{name}/config.xml | 
*RemoteAccessApi* | [**headJenkins**](docs/Api/RemoteAccessApi.md#headjenkins) | **HEAD** /api/json | 
*RemoteAccessApi* | [**postCreateItem**](docs/Api/RemoteAccessApi.md#postcreateitem) | **POST** /createItem | 
*RemoteAccessApi* | [**postCreateView**](docs/Api/RemoteAccessApi.md#postcreateview) | **POST** /createView | 
*RemoteAccessApi* | [**postJobBuild**](docs/Api/RemoteAccessApi.md#postjobbuild) | **POST** /job/{name}/build | 
*RemoteAccessApi* | [**postJobConfig**](docs/Api/RemoteAccessApi.md#postjobconfig) | **POST** /job/{name}/config.xml | 
*RemoteAccessApi* | [**postJobDelete**](docs/Api/RemoteAccessApi.md#postjobdelete) | **POST** /job/{name}/doDelete | 
*RemoteAccessApi* | [**postJobDisable**](docs/Api/RemoteAccessApi.md#postjobdisable) | **POST** /job/{name}/disable | 
*RemoteAccessApi* | [**postJobEnable**](docs/Api/RemoteAccessApi.md#postjobenable) | **POST** /job/{name}/enable | 
*RemoteAccessApi* | [**postJobLastBuildStop**](docs/Api/RemoteAccessApi.md#postjoblastbuildstop) | **POST** /job/{name}/lastBuild/stop | 
*RemoteAccessApi* | [**postViewConfig**](docs/Api/RemoteAccessApi.md#postviewconfig) | **POST** /view/{name}/config.xml | 

## Models

- [AllView](docs/Model/AllView.md)
- [BranchImpl](docs/Model/BranchImpl.md)
- [BranchImpllinks](docs/Model/BranchImpllinks.md)
- [BranchImplpermissions](docs/Model/BranchImplpermissions.md)
- [CauseAction](docs/Model/CauseAction.md)
- [CauseUserIdCause](docs/Model/CauseUserIdCause.md)
- [ClassesByClass](docs/Model/ClassesByClass.md)
- [ClockDifference](docs/Model/ClockDifference.md)
- [ComputerSet](docs/Model/ComputerSet.md)
- [DefaultCrumbIssuer](docs/Model/DefaultCrumbIssuer.md)
- [DiskSpaceMonitorDescriptorDiskSpace](docs/Model/DiskSpaceMonitorDescriptorDiskSpace.md)
- [EmptyChangeLogSet](docs/Model/EmptyChangeLogSet.md)
- [ExtensionClassContainerImpl1](docs/Model/ExtensionClassContainerImpl1.md)
- [ExtensionClassContainerImpl1links](docs/Model/ExtensionClassContainerImpl1links.md)
- [ExtensionClassContainerImpl1map](docs/Model/ExtensionClassContainerImpl1map.md)
- [ExtensionClassImpl](docs/Model/ExtensionClassImpl.md)
- [ExtensionClassImpllinks](docs/Model/ExtensionClassImpllinks.md)
- [FavoriteImpl](docs/Model/FavoriteImpl.md)
- [FavoriteImpllinks](docs/Model/FavoriteImpllinks.md)
- [FreeStyleBuild](docs/Model/FreeStyleBuild.md)
- [FreeStyleProject](docs/Model/FreeStyleProject.md)
- [FreeStyleProjectactions](docs/Model/FreeStyleProjectactions.md)
- [FreeStyleProjecthealthReport](docs/Model/FreeStyleProjecthealthReport.md)
- [GenericResource](docs/Model/GenericResource.md)
- [GithubContent](docs/Model/GithubContent.md)
- [GithubFile](docs/Model/GithubFile.md)
- [GithubOrganization](docs/Model/GithubOrganization.md)
- [GithubOrganizationlinks](docs/Model/GithubOrganizationlinks.md)
- [GithubRepositories](docs/Model/GithubRepositories.md)
- [GithubRepositorieslinks](docs/Model/GithubRepositorieslinks.md)
- [GithubRepository](docs/Model/GithubRepository.md)
- [GithubRepositorylinks](docs/Model/GithubRepositorylinks.md)
- [GithubRepositorypermissions](docs/Model/GithubRepositorypermissions.md)
- [GithubRespositoryContainer](docs/Model/GithubRespositoryContainer.md)
- [GithubRespositoryContainerlinks](docs/Model/GithubRespositoryContainerlinks.md)
- [GithubScm](docs/Model/GithubScm.md)
- [GithubScmlinks](docs/Model/GithubScmlinks.md)
- [Hudson](docs/Model/Hudson.md)
- [HudsonMasterComputer](docs/Model/HudsonMasterComputer.md)
- [HudsonMasterComputerexecutors](docs/Model/HudsonMasterComputerexecutors.md)
- [HudsonMasterComputermonitorData](docs/Model/HudsonMasterComputermonitorData.md)
- [HudsonassignedLabels](docs/Model/HudsonassignedLabels.md)
- [InputStepImpl](docs/Model/InputStepImpl.md)
- [InputStepImpllinks](docs/Model/InputStepImpllinks.md)
- [Label1](docs/Model/Label1.md)
- [Link](docs/Model/Link.md)
- [ListView](docs/Model/ListView.md)
- [MultibranchPipeline](docs/Model/MultibranchPipeline.md)
- [NullSCM](docs/Model/NullSCM.md)
- [Organisation](docs/Model/Organisation.md)
- [Pipeline](docs/Model/Pipeline.md)
- [PipelineActivity](docs/Model/PipelineActivity.md)
- [PipelineActivityartifacts](docs/Model/PipelineActivityartifacts.md)
- [PipelineBranchesitem](docs/Model/PipelineBranchesitem.md)
- [PipelineBranchesitemlatestRun](docs/Model/PipelineBranchesitemlatestRun.md)
- [PipelineBranchesitempullRequest](docs/Model/PipelineBranchesitempullRequest.md)
- [PipelineBranchesitempullRequestlinks](docs/Model/PipelineBranchesitempullRequestlinks.md)
- [PipelineFolderImpl](docs/Model/PipelineFolderImpl.md)
- [PipelineImpl](docs/Model/PipelineImpl.md)
- [PipelineImpllinks](docs/Model/PipelineImpllinks.md)
- [PipelineRun](docs/Model/PipelineRun.md)
- [PipelineRunImpl](docs/Model/PipelineRunImpl.md)
- [PipelineRunImpllinks](docs/Model/PipelineRunImpllinks.md)
- [PipelineRunNode](docs/Model/PipelineRunNode.md)
- [PipelineRunNodeedges](docs/Model/PipelineRunNodeedges.md)
- [PipelineRunartifacts](docs/Model/PipelineRunartifacts.md)
- [PipelineStepImpl](docs/Model/PipelineStepImpl.md)
- [PipelineStepImpllinks](docs/Model/PipelineStepImpllinks.md)
- [PipelinelatestRun](docs/Model/PipelinelatestRun.md)
- [PipelinelatestRunartifacts](docs/Model/PipelinelatestRunartifacts.md)
- [Queue](docs/Model/Queue.md)
- [QueueBlockedItem](docs/Model/QueueBlockedItem.md)
- [QueueItemImpl](docs/Model/QueueItemImpl.md)
- [QueueLeftItem](docs/Model/QueueLeftItem.md)
- [ResponseTimeMonitorData](docs/Model/ResponseTimeMonitorData.md)
- [StringParameterDefinition](docs/Model/StringParameterDefinition.md)
- [StringParameterValue](docs/Model/StringParameterValue.md)
- [SwapSpaceMonitorMemoryUsage2](docs/Model/SwapSpaceMonitorMemoryUsage2.md)
- [UnlabeledLoadStatistics](docs/Model/UnlabeledLoadStatistics.md)
- [User](docs/Model/User.md)

## Authorization

Authentication schemes defined for the API:
### jenkins_auth

- **Type**: HTTP basic authentication

### jwt_auth

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

blah+oapicf@cliffano.com

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `3.2.1-pre.0`
    - Generator version: `7.18.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
