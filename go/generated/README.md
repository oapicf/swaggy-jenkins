# Go API client for swagger

Jenkins API clients generated from Swagger / Open API specification

## Overview
This API client was generated by the [swagger-codegen](https://github.com/swagger-api/swagger-codegen) project.  By using the [swagger-spec](https://github.com/swagger-api/swagger-spec) from a remote server, you can easily generate an API client.

- API version: 0.1.0
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.GoClientCodegen
For more information, please visit [http://github.com/cliffano/swaggy-jenkins](http://github.com/cliffano/swaggy-jenkins)

## Installation
Put the package under your project folder and add the following in import:
```
    "./swagger"
```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BlueOceanApi* | [**GetAuthenticatedUser**](docs/BlueOceanApi.md#getauthenticateduser) | **Get** /blue/rest/organizations/{organisation}/user/ | 
*BlueOceanApi* | [**GetClasses**](docs/BlueOceanApi.md#getclasses) | **Get** /blue/rest/classes/{class} | 
*BlueOceanApi* | [**GetOrganisation**](docs/BlueOceanApi.md#getorganisation) | **Get** /blue/rest/organizations/{organisation} | 
*BlueOceanApi* | [**GetOrganisations**](docs/BlueOceanApi.md#getorganisations) | **Get** /blue/rest/organizations/ | 
*BlueOceanApi* | [**GetPipelineBranchByOrg**](docs/BlueOceanApi.md#getpipelinebranchbyorg) | **Get** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/ | 
*BlueOceanApi* | [**GetPipelineBranchesByOrg**](docs/BlueOceanApi.md#getpipelinebranchesbyorg) | **Get** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches | 
*BlueOceanApi* | [**GetPipelineByOrg**](docs/BlueOceanApi.md#getpipelinebyorg) | **Get** /blue/rest/organizations/{organisation}/pipelines/{pipeline} | 
*BlueOceanApi* | [**GetPipelineFolderByOrg**](docs/BlueOceanApi.md#getpipelinefolderbyorg) | **Get** /blue/rest/organizations/{organisation}/pipelines/{folder}/ | 
*BlueOceanApi* | [**GetPipelineFolderByOrg_0**](docs/BlueOceanApi.md#getpipelinefolderbyorg_0) | **Get** /blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline} | 
*BlueOceanApi* | [**GetPipelinesByOrg**](docs/BlueOceanApi.md#getpipelinesbyorg) | **Get** /blue/rest/organizations/{organisation}/pipelines/ | 
*BlueOceanApi* | [**GetUser**](docs/BlueOceanApi.md#getuser) | **Get** /blue/rest/organizations/{organisation}/users/{user} | 
*BlueOceanApi* | [**GetUsers**](docs/BlueOceanApi.md#getusers) | **Get** /blue/rest/organizations/{organisation}/users/ | 
*BlueOceanApi* | [**Search**](docs/BlueOceanApi.md#search) | **Get** /blue/rest/classes/ | 
*BlueOceanApi* | [**Search_0**](docs/BlueOceanApi.md#search_0) | **Get** /blue/rest/search/ | 
*RemoteAccessApi* | [**GetComputer**](docs/RemoteAccessApi.md#getcomputer) | **Get** /computer/api/json?depth&#x3D;1 | 
*RemoteAccessApi* | [**GetCrumb**](docs/RemoteAccessApi.md#getcrumb) | **Get** /crumbIssuer/api/json | 
*RemoteAccessApi* | [**GetJenkins**](docs/RemoteAccessApi.md#getjenkins) | **Get** /api/json | 
*RemoteAccessApi* | [**GetJob**](docs/RemoteAccessApi.md#getjob) | **Get** /job/{name}/api/json | 
*RemoteAccessApi* | [**GetJobConfig**](docs/RemoteAccessApi.md#getjobconfig) | **Get** /job/{name}/config.xml | 
*RemoteAccessApi* | [**GetJobLastBuild**](docs/RemoteAccessApi.md#getjoblastbuild) | **Get** /job/{name}/lastBuild/api/json | 
*RemoteAccessApi* | [**GetJobProgressiveText**](docs/RemoteAccessApi.md#getjobprogressivetext) | **Get** /job/{name}/{number}/logText/progressiveText | 
*RemoteAccessApi* | [**GetQueue**](docs/RemoteAccessApi.md#getqueue) | **Get** /queue/api/json | 
*RemoteAccessApi* | [**GetQueueItem**](docs/RemoteAccessApi.md#getqueueitem) | **Get** /queue/item/{number}/api/json | 
*RemoteAccessApi* | [**GetView**](docs/RemoteAccessApi.md#getview) | **Get** /view/{name}/api/json | 
*RemoteAccessApi* | [**GetViewConfig**](docs/RemoteAccessApi.md#getviewconfig) | **Get** /view/{name}/config.xml | 
*RemoteAccessApi* | [**HeadJenkins**](docs/RemoteAccessApi.md#headjenkins) | **Head** /api/json | 
*RemoteAccessApi* | [**PostCreateItem**](docs/RemoteAccessApi.md#postcreateitem) | **Post** /createItem | 
*RemoteAccessApi* | [**PostCreateView**](docs/RemoteAccessApi.md#postcreateview) | **Post** /createView | 
*RemoteAccessApi* | [**PostJobBuild**](docs/RemoteAccessApi.md#postjobbuild) | **Post** /job/{name}/build | 
*RemoteAccessApi* | [**PostJobConfig**](docs/RemoteAccessApi.md#postjobconfig) | **Post** /job/{name}/config.xml | 
*RemoteAccessApi* | [**PostJobDelete**](docs/RemoteAccessApi.md#postjobdelete) | **Post** /job/{name}/doDelete | 
*RemoteAccessApi* | [**PostJobDisable**](docs/RemoteAccessApi.md#postjobdisable) | **Post** /job/{name}/disable | 
*RemoteAccessApi* | [**PostJobEnable**](docs/RemoteAccessApi.md#postjobenable) | **Post** /job/{name}/enable | 
*RemoteAccessApi* | [**PostJobLastBuildStop**](docs/RemoteAccessApi.md#postjoblastbuildstop) | **Post** /job/{name}/lastBuild/stop | 
*RemoteAccessApi* | [**PostViewConfig**](docs/RemoteAccessApi.md#postviewconfig) | **Post** /view/{name}/config.xml | 


## Documentation For Models

 - [GetClassesByClass](docs/GetClassesByClass.md)
 - [GetMultibranchPipeline](docs/GetMultibranchPipeline.md)
 - [GetOrganisations](docs/GetOrganisations.md)
 - [GetPipelineBranches](docs/GetPipelineBranches.md)
 - [GetPipelineBranchesitem](docs/GetPipelineBranchesitem.md)
 - [GetPipelineBranchesitemLatestRun](docs/GetPipelineBranchesitemLatestRun.md)
 - [GetPipelineBranchesitemPullRequest](docs/GetPipelineBranchesitemPullRequest.md)
 - [GetPipelineBranchesitemPullRequestLinks](docs/GetPipelineBranchesitemPullRequestLinks.md)
 - [GetPipelines](docs/GetPipelines.md)
 - [GetUsers](docs/GetUsers.md)
 - [HudsonmodelAllView](docs/HudsonmodelAllView.md)
 - [HudsonmodelCauseAction](docs/HudsonmodelCauseAction.md)
 - [HudsonmodelCauseUserIdCause](docs/HudsonmodelCauseUserIdCause.md)
 - [HudsonmodelComputerSet](docs/HudsonmodelComputerSet.md)
 - [HudsonmodelFreeStyleBuild](docs/HudsonmodelFreeStyleBuild.md)
 - [HudsonmodelFreeStyleProject](docs/HudsonmodelFreeStyleProject.md)
 - [HudsonmodelFreeStyleProjectactions](docs/HudsonmodelFreeStyleProjectactions.md)
 - [HudsonmodelFreeStyleProjecthealthReport](docs/HudsonmodelFreeStyleProjecthealthReport.md)
 - [HudsonmodelHudson](docs/HudsonmodelHudson.md)
 - [HudsonmodelHudsonMasterComputer](docs/HudsonmodelHudsonMasterComputer.md)
 - [HudsonmodelHudsonMasterComputerMonitorData](docs/HudsonmodelHudsonMasterComputerMonitorData.md)
 - [HudsonmodelHudsonMasterComputerexecutors](docs/HudsonmodelHudsonMasterComputerexecutors.md)
 - [HudsonmodelHudsonassignedLabels](docs/HudsonmodelHudsonassignedLabels.md)
 - [HudsonmodelLabel1](docs/HudsonmodelLabel1.md)
 - [HudsonmodelListView](docs/HudsonmodelListView.md)
 - [HudsonmodelQueue](docs/HudsonmodelQueue.md)
 - [HudsonmodelQueueBlockedItem](docs/HudsonmodelQueueBlockedItem.md)
 - [HudsonmodelQueueLeftItem](docs/HudsonmodelQueueLeftItem.md)
 - [HudsonmodelStringParameterDefinition](docs/HudsonmodelStringParameterDefinition.md)
 - [HudsonmodelStringParameterValue](docs/HudsonmodelStringParameterValue.md)
 - [HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace](docs/HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace.md)
 - [HudsonnodeMonitorsResponseTimeMonitorData](docs/HudsonnodeMonitorsResponseTimeMonitorData.md)
 - [HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2](docs/HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2.md)
 - [HudsonscmEmptyChangeLogSet](docs/HudsonscmEmptyChangeLogSet.md)
 - [HudsonscmNullScm](docs/HudsonscmNullScm.md)
 - [HudsonsecuritycsrfDefaultCrumbIssuer](docs/HudsonsecuritycsrfDefaultCrumbIssuer.md)
 - [HudsonutilClockDifference](docs/HudsonutilClockDifference.md)
 - [IojenkinsblueoceanresthalLink](docs/IojenkinsblueoceanresthalLink.md)
 - [IojenkinsblueoceanrestimplpipelineBranchImpl](docs/IojenkinsblueoceanrestimplpipelineBranchImpl.md)
 - [IojenkinsblueoceanrestimplpipelineBranchImplPermissions](docs/IojenkinsblueoceanrestimplpipelineBranchImplPermissions.md)
 - [IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1](docs/IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1.md)
 - [IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links](docs/IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links.md)
 - [IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map](docs/IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map.md)
 - [IojenkinsblueoceanserviceembeddedrestExtensionClassImpl](docs/IojenkinsblueoceanserviceembeddedrestExtensionClassImpl.md)
 - [IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks](docs/IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks.md)
 - [IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl](docs/IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.md)
 - [IojenkinsblueoceanserviceembeddedrestPipelineImpl](docs/IojenkinsblueoceanserviceembeddedrestPipelineImpl.md)
 - [JenkinsmodelUnlabeledLoadStatistics](docs/JenkinsmodelUnlabeledLoadStatistics.md)
 - [SwaggyjenkinsOrganisation](docs/SwaggyjenkinsOrganisation.md)
 - [SwaggyjenkinsPipeline](docs/SwaggyjenkinsPipeline.md)
 - [SwaggyjenkinsPipelineLatestRun](docs/SwaggyjenkinsPipelineLatestRun.md)
 - [SwaggyjenkinsPipelineLatestRunartifacts](docs/SwaggyjenkinsPipelineLatestRunartifacts.md)
 - [SwaggyjenkinsUser](docs/SwaggyjenkinsUser.md)


## Documentation For Authorization


## jenkins_auth

- **Type**: HTTP basic authentication


## Author

blah@cliffano.com
