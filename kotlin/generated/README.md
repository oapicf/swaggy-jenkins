# io.swagger.client - Kotlin client library for Swaggy Jenkins

## Requires

* Kotlin 1.1.2
* Gradle 3.3

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs, File inputs, and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in Swagger definitions.
* Implementation of ApiClient is intended to reduce method counts, specifically to benefit Android targets.

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BlueOceanApi* | [**getAuthenticatedUser**](docs/BlueOceanApi.md#getauthenticateduser) | **GET** /blue/rest/organizations/{organisation}/user/ | 
*BlueOceanApi* | [**getClasses**](docs/BlueOceanApi.md#getclasses) | **GET** /blue/rest/classes/{class} | 
*BlueOceanApi* | [**getOrganisation**](docs/BlueOceanApi.md#getorganisation) | **GET** /blue/rest/organizations/{organisation} | 
*BlueOceanApi* | [**getOrganisations**](docs/BlueOceanApi.md#getorganisations) | **GET** /blue/rest/organizations/ | 
*BlueOceanApi* | [**getPipelineBranchByOrg**](docs/BlueOceanApi.md#getpipelinebranchbyorg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/ | 
*BlueOceanApi* | [**getPipelineBranchesByOrg**](docs/BlueOceanApi.md#getpipelinebranchesbyorg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches | 
*BlueOceanApi* | [**getPipelineByOrg**](docs/BlueOceanApi.md#getpipelinebyorg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline} | 
*BlueOceanApi* | [**getPipelineFolderByOrg**](docs/BlueOceanApi.md#getpipelinefolderbyorg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{folder}/ | 
*BlueOceanApi* | [**getPipelineFolderByOrg_0**](docs/BlueOceanApi.md#getpipelinefolderbyorg_0) | **GET** /blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline} | 
*BlueOceanApi* | [**getPipelinesByOrg**](docs/BlueOceanApi.md#getpipelinesbyorg) | **GET** /blue/rest/organizations/{organisation}/pipelines/ | 
*BlueOceanApi* | [**getUser**](docs/BlueOceanApi.md#getuser) | **GET** /blue/rest/organizations/{organisation}/users/{user} | 
*BlueOceanApi* | [**getUsers**](docs/BlueOceanApi.md#getusers) | **GET** /blue/rest/organizations/{organisation}/users/ | 
*BlueOceanApi* | [**search**](docs/BlueOceanApi.md#search) | **GET** /blue/rest/classes/ | 
*BlueOceanApi* | [**search_0**](docs/BlueOceanApi.md#search_0) | **GET** /blue/rest/search/ | 
*RemoteAccessApi* | [**getComputer**](docs/RemoteAccessApi.md#getcomputer) | **GET** /computer/api/json?depth&#x3D;1 | 
*RemoteAccessApi* | [**getCrumb**](docs/RemoteAccessApi.md#getcrumb) | **GET** /crumbIssuer/api/json | 
*RemoteAccessApi* | [**getJenkins**](docs/RemoteAccessApi.md#getjenkins) | **GET** /api/json | 
*RemoteAccessApi* | [**getJob**](docs/RemoteAccessApi.md#getjob) | **GET** /job/{name}/api/json | 
*RemoteAccessApi* | [**getJobConfig**](docs/RemoteAccessApi.md#getjobconfig) | **GET** /job/{name}/config.xml | 
*RemoteAccessApi* | [**getJobLastBuild**](docs/RemoteAccessApi.md#getjoblastbuild) | **GET** /job/{name}/lastBuild/api/json | 
*RemoteAccessApi* | [**getJobProgressiveText**](docs/RemoteAccessApi.md#getjobprogressivetext) | **GET** /job/{name}/{number}/logText/progressiveText | 
*RemoteAccessApi* | [**getQueue**](docs/RemoteAccessApi.md#getqueue) | **GET** /queue/api/json | 
*RemoteAccessApi* | [**getQueueItem**](docs/RemoteAccessApi.md#getqueueitem) | **GET** /queue/item/{number}/api/json | 
*RemoteAccessApi* | [**getView**](docs/RemoteAccessApi.md#getview) | **GET** /view/{name}/api/json | 
*RemoteAccessApi* | [**getViewConfig**](docs/RemoteAccessApi.md#getviewconfig) | **GET** /view/{name}/config.xml | 
*RemoteAccessApi* | [**headJenkins**](docs/RemoteAccessApi.md#headjenkins) | **HEAD** /api/json | 
*RemoteAccessApi* | [**postCreateItem**](docs/RemoteAccessApi.md#postcreateitem) | **POST** /createItem | 
*RemoteAccessApi* | [**postCreateView**](docs/RemoteAccessApi.md#postcreateview) | **POST** /createView | 
*RemoteAccessApi* | [**postJobBuild**](docs/RemoteAccessApi.md#postjobbuild) | **POST** /job/{name}/build | 
*RemoteAccessApi* | [**postJobConfig**](docs/RemoteAccessApi.md#postjobconfig) | **POST** /job/{name}/config.xml | 
*RemoteAccessApi* | [**postJobDelete**](docs/RemoteAccessApi.md#postjobdelete) | **POST** /job/{name}/doDelete | 
*RemoteAccessApi* | [**postJobDisable**](docs/RemoteAccessApi.md#postjobdisable) | **POST** /job/{name}/disable | 
*RemoteAccessApi* | [**postJobEnable**](docs/RemoteAccessApi.md#postjobenable) | **POST** /job/{name}/enable | 
*RemoteAccessApi* | [**postJobLastBuildStop**](docs/RemoteAccessApi.md#postjoblastbuildstop) | **POST** /job/{name}/lastBuild/stop | 
*RemoteAccessApi* | [**postViewConfig**](docs/RemoteAccessApi.md#postviewconfig) | **POST** /view/{name}/config.xml | 


<a name="documentation-for-models"></a>
## Documentation for Models

 - [io.swagger.client.models.GetClassesByClass](docs/GetClassesByClass.md)
 - [io.swagger.client.models.GetMultibranchPipeline](docs/GetMultibranchPipeline.md)
 - [io.swagger.client.models.GetOrganisations](docs/GetOrganisations.md)
 - [io.swagger.client.models.GetPipelineBranches](docs/GetPipelineBranches.md)
 - [io.swagger.client.models.GetPipelineBranchesitem](docs/GetPipelineBranchesitem.md)
 - [io.swagger.client.models.GetPipelineBranchesitem_latestRun](docs/GetPipelineBranchesitem_latestRun.md)
 - [io.swagger.client.models.GetPipelineBranchesitem_pullRequest](docs/GetPipelineBranchesitem_pullRequest.md)
 - [io.swagger.client.models.GetPipelineBranchesitem_pullRequest__links](docs/GetPipelineBranchesitem_pullRequest__links.md)
 - [io.swagger.client.models.GetPipelines](docs/GetPipelines.md)
 - [io.swagger.client.models.GetUsers](docs/GetUsers.md)
 - [io.swagger.client.models.HudsonmodelAllView](docs/HudsonmodelAllView.md)
 - [io.swagger.client.models.HudsonmodelCauseAction](docs/HudsonmodelCauseAction.md)
 - [io.swagger.client.models.HudsonmodelCauseUserIdCause](docs/HudsonmodelCauseUserIdCause.md)
 - [io.swagger.client.models.HudsonmodelComputerSet](docs/HudsonmodelComputerSet.md)
 - [io.swagger.client.models.HudsonmodelFreeStyleBuild](docs/HudsonmodelFreeStyleBuild.md)
 - [io.swagger.client.models.HudsonmodelFreeStyleProject](docs/HudsonmodelFreeStyleProject.md)
 - [io.swagger.client.models.HudsonmodelFreeStyleProjectactions](docs/HudsonmodelFreeStyleProjectactions.md)
 - [io.swagger.client.models.HudsonmodelFreeStyleProjecthealthReport](docs/HudsonmodelFreeStyleProjecthealthReport.md)
 - [io.swagger.client.models.HudsonmodelHudson](docs/HudsonmodelHudson.md)
 - [io.swagger.client.models.HudsonmodelHudsonMasterComputer](docs/HudsonmodelHudsonMasterComputer.md)
 - [io.swagger.client.models.HudsonmodelHudsonMasterComputer_monitorData](docs/HudsonmodelHudsonMasterComputer_monitorData.md)
 - [io.swagger.client.models.HudsonmodelHudsonMasterComputerexecutors](docs/HudsonmodelHudsonMasterComputerexecutors.md)
 - [io.swagger.client.models.HudsonmodelHudsonassignedLabels](docs/HudsonmodelHudsonassignedLabels.md)
 - [io.swagger.client.models.HudsonmodelLabel1](docs/HudsonmodelLabel1.md)
 - [io.swagger.client.models.HudsonmodelListView](docs/HudsonmodelListView.md)
 - [io.swagger.client.models.HudsonmodelQueue](docs/HudsonmodelQueue.md)
 - [io.swagger.client.models.HudsonmodelQueueBlockedItem](docs/HudsonmodelQueueBlockedItem.md)
 - [io.swagger.client.models.HudsonmodelQueueLeftItem](docs/HudsonmodelQueueLeftItem.md)
 - [io.swagger.client.models.HudsonmodelStringParameterDefinition](docs/HudsonmodelStringParameterDefinition.md)
 - [io.swagger.client.models.HudsonmodelStringParameterValue](docs/HudsonmodelStringParameterValue.md)
 - [io.swagger.client.models.Hudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace](docs/Hudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace.md)
 - [io.swagger.client.models.Hudsonnode_monitorsResponseTimeMonitorData](docs/Hudsonnode_monitorsResponseTimeMonitorData.md)
 - [io.swagger.client.models.Hudsonnode_monitorsSwapSpaceMonitorMemoryUsage2](docs/Hudsonnode_monitorsSwapSpaceMonitorMemoryUsage2.md)
 - [io.swagger.client.models.HudsonscmEmptyChangeLogSet](docs/HudsonscmEmptyChangeLogSet.md)
 - [io.swagger.client.models.HudsonscmNullSCM](docs/HudsonscmNullSCM.md)
 - [io.swagger.client.models.HudsonsecuritycsrfDefaultCrumbIssuer](docs/HudsonsecuritycsrfDefaultCrumbIssuer.md)
 - [io.swagger.client.models.HudsonutilClockDifference](docs/HudsonutilClockDifference.md)
 - [io.swagger.client.models.IojenkinsblueoceanresthalLink](docs/IojenkinsblueoceanresthalLink.md)
 - [io.swagger.client.models.IojenkinsblueoceanrestimplpipelineBranchImpl](docs/IojenkinsblueoceanrestimplpipelineBranchImpl.md)
 - [io.swagger.client.models.IojenkinsblueoceanrestimplpipelineBranchImpl_permissions](docs/IojenkinsblueoceanrestimplpipelineBranchImpl_permissions.md)
 - [io.swagger.client.models.IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1](docs/IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1.md)
 - [io.swagger.client.models.IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links](docs/IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links.md)
 - [io.swagger.client.models.IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map](docs/IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map.md)
 - [io.swagger.client.models.IojenkinsblueoceanserviceembeddedrestExtensionClassImpl](docs/IojenkinsblueoceanserviceembeddedrestExtensionClassImpl.md)
 - [io.swagger.client.models.IojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links](docs/IojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links.md)
 - [io.swagger.client.models.IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl](docs/IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.md)
 - [io.swagger.client.models.IojenkinsblueoceanserviceembeddedrestPipelineImpl](docs/IojenkinsblueoceanserviceembeddedrestPipelineImpl.md)
 - [io.swagger.client.models.JenkinsmodelUnlabeledLoadStatistics](docs/JenkinsmodelUnlabeledLoadStatistics.md)
 - [io.swagger.client.models.SwaggyjenkinsOrganisation](docs/SwaggyjenkinsOrganisation.md)
 - [io.swagger.client.models.SwaggyjenkinsPipeline](docs/SwaggyjenkinsPipeline.md)
 - [io.swagger.client.models.SwaggyjenkinsPipeline_latestRun](docs/SwaggyjenkinsPipeline_latestRun.md)
 - [io.swagger.client.models.SwaggyjenkinsPipeline_latestRunartifacts](docs/SwaggyjenkinsPipeline_latestRunartifacts.md)
 - [io.swagger.client.models.SwaggyjenkinsUser](docs/SwaggyjenkinsUser.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="jenkins_auth"></a>
### jenkins_auth

- **Type**: HTTP basic authentication

