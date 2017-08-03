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
*BlueOceanApi* | [**deletePipelineQueueItem**](docs/BlueOceanApi.md#deletepipelinequeueitem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
*BlueOceanApi* | [**getAuthenticatedUser**](docs/BlueOceanApi.md#getauthenticateduser) | **GET** /blue/rest/organizations/{organization}/user/ | 
*BlueOceanApi* | [**getClasses**](docs/BlueOceanApi.md#getclasses) | **GET** /blue/rest/classes/{class} | 
*BlueOceanApi* | [**getOrganisation**](docs/BlueOceanApi.md#getorganisation) | **GET** /blue/rest/organizations/{organization} | 
*BlueOceanApi* | [**getOrganisations**](docs/BlueOceanApi.md#getorganisations) | **GET** /blue/rest/organizations/ | 
*BlueOceanApi* | [**getPipeline**](docs/BlueOceanApi.md#getpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
*BlueOceanApi* | [**getPipelineActivities**](docs/BlueOceanApi.md#getpipelineactivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
*BlueOceanApi* | [**getPipelineBranch**](docs/BlueOceanApi.md#getpipelinebranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
*BlueOceanApi* | [**getPipelineBranchRun**](docs/BlueOceanApi.md#getpipelinebranchrun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
*BlueOceanApi* | [**getPipelineBranches**](docs/BlueOceanApi.md#getpipelinebranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
*BlueOceanApi* | [**getPipelineFolder**](docs/BlueOceanApi.md#getpipelinefolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
*BlueOceanApi* | [**getPipelineFolderPipeline**](docs/BlueOceanApi.md#getpipelinefolderpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
*BlueOceanApi* | [**getPipelineQueue**](docs/BlueOceanApi.md#getpipelinequeue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
*BlueOceanApi* | [**getPipelineRun**](docs/BlueOceanApi.md#getpipelinerun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
*BlueOceanApi* | [**getPipelineRunLog**](docs/BlueOceanApi.md#getpipelinerunlog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
*BlueOceanApi* | [**getPipelineRunNode**](docs/BlueOceanApi.md#getpipelinerunnode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
*BlueOceanApi* | [**getPipelineRunNodeStep**](docs/BlueOceanApi.md#getpipelinerunnodestep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
*BlueOceanApi* | [**getPipelineRunNodeStepLog**](docs/BlueOceanApi.md#getpipelinerunnodesteplog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
*BlueOceanApi* | [**getPipelineRunNodeSteps**](docs/BlueOceanApi.md#getpipelinerunnodesteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
*BlueOceanApi* | [**getPipelineRunNodes**](docs/BlueOceanApi.md#getpipelinerunnodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
*BlueOceanApi* | [**getPipelineRuns**](docs/BlueOceanApi.md#getpipelineruns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
*BlueOceanApi* | [**getPipelines**](docs/BlueOceanApi.md#getpipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
*BlueOceanApi* | [**getSCM**](docs/BlueOceanApi.md#getscm) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
*BlueOceanApi* | [**getSCMOrganisationRepositories**](docs/BlueOceanApi.md#getscmorganisationrepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
*BlueOceanApi* | [**getSCMOrganisationRepository**](docs/BlueOceanApi.md#getscmorganisationrepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
*BlueOceanApi* | [**getSCMOrganisations**](docs/BlueOceanApi.md#getscmorganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
*BlueOceanApi* | [**getUser**](docs/BlueOceanApi.md#getuser) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
*BlueOceanApi* | [**getUserFavorites**](docs/BlueOceanApi.md#getuserfavorites) | **GET** /blue/rest/users/{user}/favorites | 
*BlueOceanApi* | [**getUsers**](docs/BlueOceanApi.md#getusers) | **GET** /blue/rest/organizations/{organization}/users/ | 
*BlueOceanApi* | [**postPipelineRun**](docs/BlueOceanApi.md#postpipelinerun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
*BlueOceanApi* | [**postPipelineRuns**](docs/BlueOceanApi.md#postpipelineruns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
*BlueOceanApi* | [**putPipelineFavorite**](docs/BlueOceanApi.md#putpipelinefavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
*BlueOceanApi* | [**putPipelineRun**](docs/BlueOceanApi.md#putpipelinerun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
*BlueOceanApi* | [**search**](docs/BlueOceanApi.md#search) | **GET** /blue/rest/search/ | 
*BlueOceanApi* | [**searchClasses**](docs/BlueOceanApi.md#searchclasses) | **GET** /blue/rest/classes/ | 
*RemoteAccessApi* | [**getComputer**](docs/RemoteAccessApi.md#getcomputer) | **GET** /computer/api/json | 
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

 - [io.swagger.client.models.AllView](docs/AllView.md)
 - [io.swagger.client.models.Body](docs/Body.md)
 - [io.swagger.client.models.BranchImpl](docs/BranchImpl.md)
 - [io.swagger.client.models.BranchImpllinks](docs/BranchImpllinks.md)
 - [io.swagger.client.models.BranchImplpermissions](docs/BranchImplpermissions.md)
 - [io.swagger.client.models.CauseAction](docs/CauseAction.md)
 - [io.swagger.client.models.CauseUserIdCause](docs/CauseUserIdCause.md)
 - [io.swagger.client.models.ClassesByClass](docs/ClassesByClass.md)
 - [io.swagger.client.models.ClockDifference](docs/ClockDifference.md)
 - [io.swagger.client.models.ComputerSet](docs/ComputerSet.md)
 - [io.swagger.client.models.DefaultCrumbIssuer](docs/DefaultCrumbIssuer.md)
 - [io.swagger.client.models.DiskSpaceMonitorDescriptorDiskSpace](docs/DiskSpaceMonitorDescriptorDiskSpace.md)
 - [io.swagger.client.models.EmptyChangeLogSet](docs/EmptyChangeLogSet.md)
 - [io.swagger.client.models.ExtensionClassContainerImpl1](docs/ExtensionClassContainerImpl1.md)
 - [io.swagger.client.models.ExtensionClassContainerImpl1links](docs/ExtensionClassContainerImpl1links.md)
 - [io.swagger.client.models.ExtensionClassContainerImpl1map](docs/ExtensionClassContainerImpl1map.md)
 - [io.swagger.client.models.ExtensionClassImpl](docs/ExtensionClassImpl.md)
 - [io.swagger.client.models.ExtensionClassImpllinks](docs/ExtensionClassImpllinks.md)
 - [io.swagger.client.models.FavoriteImpl](docs/FavoriteImpl.md)
 - [io.swagger.client.models.FavoriteImpllinks](docs/FavoriteImpllinks.md)
 - [io.swagger.client.models.FreeStyleBuild](docs/FreeStyleBuild.md)
 - [io.swagger.client.models.FreeStyleProject](docs/FreeStyleProject.md)
 - [io.swagger.client.models.FreeStyleProjectactions](docs/FreeStyleProjectactions.md)
 - [io.swagger.client.models.FreeStyleProjecthealthReport](docs/FreeStyleProjecthealthReport.md)
 - [io.swagger.client.models.GenericResource](docs/GenericResource.md)
 - [io.swagger.client.models.GithubContent](docs/GithubContent.md)
 - [io.swagger.client.models.GithubFile](docs/GithubFile.md)
 - [io.swagger.client.models.GithubOrganization](docs/GithubOrganization.md)
 - [io.swagger.client.models.GithubOrganizationlinks](docs/GithubOrganizationlinks.md)
 - [io.swagger.client.models.GithubRepositories](docs/GithubRepositories.md)
 - [io.swagger.client.models.GithubRepositorieslinks](docs/GithubRepositorieslinks.md)
 - [io.swagger.client.models.GithubRepository](docs/GithubRepository.md)
 - [io.swagger.client.models.GithubRepositorylinks](docs/GithubRepositorylinks.md)
 - [io.swagger.client.models.GithubRepositorypermissions](docs/GithubRepositorypermissions.md)
 - [io.swagger.client.models.GithubRespositoryContainer](docs/GithubRespositoryContainer.md)
 - [io.swagger.client.models.GithubRespositoryContainerlinks](docs/GithubRespositoryContainerlinks.md)
 - [io.swagger.client.models.GithubScm](docs/GithubScm.md)
 - [io.swagger.client.models.GithubScmlinks](docs/GithubScmlinks.md)
 - [io.swagger.client.models.Hudson](docs/Hudson.md)
 - [io.swagger.client.models.HudsonMasterComputer](docs/HudsonMasterComputer.md)
 - [io.swagger.client.models.HudsonMasterComputerexecutors](docs/HudsonMasterComputerexecutors.md)
 - [io.swagger.client.models.HudsonMasterComputermonitorData](docs/HudsonMasterComputermonitorData.md)
 - [io.swagger.client.models.HudsonassignedLabels](docs/HudsonassignedLabels.md)
 - [io.swagger.client.models.InputStepImpl](docs/InputStepImpl.md)
 - [io.swagger.client.models.InputStepImpllinks](docs/InputStepImpllinks.md)
 - [io.swagger.client.models.Label1](docs/Label1.md)
 - [io.swagger.client.models.Link](docs/Link.md)
 - [io.swagger.client.models.ListView](docs/ListView.md)
 - [io.swagger.client.models.MultibranchPipeline](docs/MultibranchPipeline.md)
 - [io.swagger.client.models.NullSCM](docs/NullSCM.md)
 - [io.swagger.client.models.Organisation](docs/Organisation.md)
 - [io.swagger.client.models.Organisations](docs/Organisations.md)
 - [io.swagger.client.models.Pipeline](docs/Pipeline.md)
 - [io.swagger.client.models.PipelineActivities](docs/PipelineActivities.md)
 - [io.swagger.client.models.PipelineActivity](docs/PipelineActivity.md)
 - [io.swagger.client.models.PipelineActivityartifacts](docs/PipelineActivityartifacts.md)
 - [io.swagger.client.models.PipelineBranches](docs/PipelineBranches.md)
 - [io.swagger.client.models.PipelineBranchesitem](docs/PipelineBranchesitem.md)
 - [io.swagger.client.models.PipelineBranchesitemlatestRun](docs/PipelineBranchesitemlatestRun.md)
 - [io.swagger.client.models.PipelineBranchesitempullRequest](docs/PipelineBranchesitempullRequest.md)
 - [io.swagger.client.models.PipelineBranchesitempullRequestlinks](docs/PipelineBranchesitempullRequestlinks.md)
 - [io.swagger.client.models.PipelineFolderImpl](docs/PipelineFolderImpl.md)
 - [io.swagger.client.models.PipelineImpl](docs/PipelineImpl.md)
 - [io.swagger.client.models.PipelineImpllinks](docs/PipelineImpllinks.md)
 - [io.swagger.client.models.PipelineQueue](docs/PipelineQueue.md)
 - [io.swagger.client.models.PipelineRun](docs/PipelineRun.md)
 - [io.swagger.client.models.PipelineRunImpl](docs/PipelineRunImpl.md)
 - [io.swagger.client.models.PipelineRunImpllinks](docs/PipelineRunImpllinks.md)
 - [io.swagger.client.models.PipelineRunNode](docs/PipelineRunNode.md)
 - [io.swagger.client.models.PipelineRunNodeSteps](docs/PipelineRunNodeSteps.md)
 - [io.swagger.client.models.PipelineRunNodeedges](docs/PipelineRunNodeedges.md)
 - [io.swagger.client.models.PipelineRunNodes](docs/PipelineRunNodes.md)
 - [io.swagger.client.models.PipelineRunSteps](docs/PipelineRunSteps.md)
 - [io.swagger.client.models.PipelineRunartifacts](docs/PipelineRunartifacts.md)
 - [io.swagger.client.models.PipelineRuns](docs/PipelineRuns.md)
 - [io.swagger.client.models.PipelineStepImpl](docs/PipelineStepImpl.md)
 - [io.swagger.client.models.PipelineStepImpllinks](docs/PipelineStepImpllinks.md)
 - [io.swagger.client.models.PipelinelatestRun](docs/PipelinelatestRun.md)
 - [io.swagger.client.models.PipelinelatestRunartifacts](docs/PipelinelatestRunartifacts.md)
 - [io.swagger.client.models.Pipelines](docs/Pipelines.md)
 - [io.swagger.client.models.Queue](docs/Queue.md)
 - [io.swagger.client.models.QueueBlockedItem](docs/QueueBlockedItem.md)
 - [io.swagger.client.models.QueueItemImpl](docs/QueueItemImpl.md)
 - [io.swagger.client.models.QueueLeftItem](docs/QueueLeftItem.md)
 - [io.swagger.client.models.ResponseTimeMonitorData](docs/ResponseTimeMonitorData.md)
 - [io.swagger.client.models.ScmOrganisations](docs/ScmOrganisations.md)
 - [io.swagger.client.models.StringParameterDefinition](docs/StringParameterDefinition.md)
 - [io.swagger.client.models.StringParameterValue](docs/StringParameterValue.md)
 - [io.swagger.client.models.SwapSpaceMonitorMemoryUsage2](docs/SwapSpaceMonitorMemoryUsage2.md)
 - [io.swagger.client.models.UnlabeledLoadStatistics](docs/UnlabeledLoadStatistics.md)
 - [io.swagger.client.models.User](docs/User.md)
 - [io.swagger.client.models.UserFavorites](docs/UserFavorites.md)
 - [io.swagger.client.models.Users](docs/Users.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="jenkins_auth"></a>
### jenkins_auth

- **Type**: HTTP basic authentication

