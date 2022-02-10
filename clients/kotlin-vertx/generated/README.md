# org.openapitools - Kotlin Server library for Swaggy Jenkins

## Requires

* Kotlin 1.3.10
* Maven 3.3

## Build

```
mvn clean package
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in OpenAPI definitions.

    <a name="documentation-for-api-endpoints"></a>
    ## Documentation for API Endpoints

    All URIs are relative to *http://localhost*

    Class | Method | HTTP request | Description
    ------------ | ------------- | ------------- | -------------
    *BaseApi* | [**getCrumb**](docs/BaseApi.md#getcrumb) | **GET** /crumbIssuer/api/json | 
    *BlueOceanApi* | [**deletePipelineQueueItem**](docs/BlueOceanApi.md#deletepipelinequeueitem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
    *BlueOceanApi* | [**getAuthenticatedUser**](docs/BlueOceanApi.md#getauthenticateduser) | **GET** /blue/rest/organizations/{organization}/user/ | 
    *BlueOceanApi* | [**getClasses**](docs/BlueOceanApi.md#getclasses) | **GET** /blue/rest/classes/{class} | 
    *BlueOceanApi* | [**getJsonWebKey**](docs/BlueOceanApi.md#getjsonwebkey) | **GET** /jwt-auth/jwks/{key} | 
    *BlueOceanApi* | [**getJsonWebToken**](docs/BlueOceanApi.md#getjsonwebtoken) | **GET** /jwt-auth/token | 
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

         - [org.openapitools.server.api.model.AllView](docs/AllView.md)
         - [org.openapitools.server.api.model.BranchImpl](docs/BranchImpl.md)
         - [org.openapitools.server.api.model.BranchImpllinks](docs/BranchImpllinks.md)
         - [org.openapitools.server.api.model.BranchImplpermissions](docs/BranchImplpermissions.md)
         - [org.openapitools.server.api.model.CauseAction](docs/CauseAction.md)
         - [org.openapitools.server.api.model.CauseUserIdCause](docs/CauseUserIdCause.md)
         - [org.openapitools.server.api.model.ClassesByClass](docs/ClassesByClass.md)
         - [org.openapitools.server.api.model.ClockDifference](docs/ClockDifference.md)
         - [org.openapitools.server.api.model.ComputerSet](docs/ComputerSet.md)
         - [org.openapitools.server.api.model.DefaultCrumbIssuer](docs/DefaultCrumbIssuer.md)
         - [org.openapitools.server.api.model.DiskSpaceMonitorDescriptorDiskSpace](docs/DiskSpaceMonitorDescriptorDiskSpace.md)
         - [org.openapitools.server.api.model.EmptyChangeLogSet](docs/EmptyChangeLogSet.md)
         - [org.openapitools.server.api.model.ExtensionClassContainerImpl1](docs/ExtensionClassContainerImpl1.md)
         - [org.openapitools.server.api.model.ExtensionClassContainerImpl1links](docs/ExtensionClassContainerImpl1links.md)
         - [org.openapitools.server.api.model.ExtensionClassContainerImpl1map](docs/ExtensionClassContainerImpl1map.md)
         - [org.openapitools.server.api.model.ExtensionClassImpl](docs/ExtensionClassImpl.md)
         - [org.openapitools.server.api.model.ExtensionClassImpllinks](docs/ExtensionClassImpllinks.md)
         - [org.openapitools.server.api.model.FavoriteImpl](docs/FavoriteImpl.md)
         - [org.openapitools.server.api.model.FavoriteImpllinks](docs/FavoriteImpllinks.md)
         - [org.openapitools.server.api.model.FreeStyleBuild](docs/FreeStyleBuild.md)
         - [org.openapitools.server.api.model.FreeStyleProject](docs/FreeStyleProject.md)
         - [org.openapitools.server.api.model.FreeStyleProjectactions](docs/FreeStyleProjectactions.md)
         - [org.openapitools.server.api.model.FreeStyleProjecthealthReport](docs/FreeStyleProjecthealthReport.md)
         - [org.openapitools.server.api.model.GenericResource](docs/GenericResource.md)
         - [org.openapitools.server.api.model.GithubContent](docs/GithubContent.md)
         - [org.openapitools.server.api.model.GithubFile](docs/GithubFile.md)
         - [org.openapitools.server.api.model.GithubOrganization](docs/GithubOrganization.md)
         - [org.openapitools.server.api.model.GithubOrganizationlinks](docs/GithubOrganizationlinks.md)
         - [org.openapitools.server.api.model.GithubRepositories](docs/GithubRepositories.md)
         - [org.openapitools.server.api.model.GithubRepositorieslinks](docs/GithubRepositorieslinks.md)
         - [org.openapitools.server.api.model.GithubRepository](docs/GithubRepository.md)
         - [org.openapitools.server.api.model.GithubRepositorylinks](docs/GithubRepositorylinks.md)
         - [org.openapitools.server.api.model.GithubRepositorypermissions](docs/GithubRepositorypermissions.md)
         - [org.openapitools.server.api.model.GithubRespositoryContainer](docs/GithubRespositoryContainer.md)
         - [org.openapitools.server.api.model.GithubRespositoryContainerlinks](docs/GithubRespositoryContainerlinks.md)
         - [org.openapitools.server.api.model.GithubScm](docs/GithubScm.md)
         - [org.openapitools.server.api.model.GithubScmlinks](docs/GithubScmlinks.md)
         - [org.openapitools.server.api.model.Hudson](docs/Hudson.md)
         - [org.openapitools.server.api.model.HudsonMasterComputer](docs/HudsonMasterComputer.md)
         - [org.openapitools.server.api.model.HudsonMasterComputerexecutors](docs/HudsonMasterComputerexecutors.md)
         - [org.openapitools.server.api.model.HudsonMasterComputermonitorData](docs/HudsonMasterComputermonitorData.md)
         - [org.openapitools.server.api.model.HudsonassignedLabels](docs/HudsonassignedLabels.md)
         - [org.openapitools.server.api.model.InputStepImpl](docs/InputStepImpl.md)
         - [org.openapitools.server.api.model.InputStepImpllinks](docs/InputStepImpllinks.md)
         - [org.openapitools.server.api.model.Label1](docs/Label1.md)
         - [org.openapitools.server.api.model.Link](docs/Link.md)
         - [org.openapitools.server.api.model.ListView](docs/ListView.md)
         - [org.openapitools.server.api.model.MultibranchPipeline](docs/MultibranchPipeline.md)
         - [org.openapitools.server.api.model.NullSCM](docs/NullSCM.md)
         - [org.openapitools.server.api.model.Organisation](docs/Organisation.md)
         - [org.openapitools.server.api.model.Pipeline](docs/Pipeline.md)
         - [org.openapitools.server.api.model.PipelineActivity](docs/PipelineActivity.md)
         - [org.openapitools.server.api.model.PipelineActivityartifacts](docs/PipelineActivityartifacts.md)
         - [org.openapitools.server.api.model.PipelineBranchesitem](docs/PipelineBranchesitem.md)
         - [org.openapitools.server.api.model.PipelineBranchesitemlatestRun](docs/PipelineBranchesitemlatestRun.md)
         - [org.openapitools.server.api.model.PipelineBranchesitempullRequest](docs/PipelineBranchesitempullRequest.md)
         - [org.openapitools.server.api.model.PipelineBranchesitempullRequestlinks](docs/PipelineBranchesitempullRequestlinks.md)
         - [org.openapitools.server.api.model.PipelineFolderImpl](docs/PipelineFolderImpl.md)
         - [org.openapitools.server.api.model.PipelineImpl](docs/PipelineImpl.md)
         - [org.openapitools.server.api.model.PipelineImpllinks](docs/PipelineImpllinks.md)
         - [org.openapitools.server.api.model.PipelineRun](docs/PipelineRun.md)
         - [org.openapitools.server.api.model.PipelineRunImpl](docs/PipelineRunImpl.md)
         - [org.openapitools.server.api.model.PipelineRunImpllinks](docs/PipelineRunImpllinks.md)
         - [org.openapitools.server.api.model.PipelineRunNode](docs/PipelineRunNode.md)
         - [org.openapitools.server.api.model.PipelineRunNodeedges](docs/PipelineRunNodeedges.md)
         - [org.openapitools.server.api.model.PipelineRunartifacts](docs/PipelineRunartifacts.md)
         - [org.openapitools.server.api.model.PipelineStepImpl](docs/PipelineStepImpl.md)
         - [org.openapitools.server.api.model.PipelineStepImpllinks](docs/PipelineStepImpllinks.md)
         - [org.openapitools.server.api.model.PipelinelatestRun](docs/PipelinelatestRun.md)
         - [org.openapitools.server.api.model.PipelinelatestRunartifacts](docs/PipelinelatestRunartifacts.md)
         - [org.openapitools.server.api.model.Queue](docs/Queue.md)
         - [org.openapitools.server.api.model.QueueBlockedItem](docs/QueueBlockedItem.md)
         - [org.openapitools.server.api.model.QueueItemImpl](docs/QueueItemImpl.md)
         - [org.openapitools.server.api.model.QueueLeftItem](docs/QueueLeftItem.md)
         - [org.openapitools.server.api.model.ResponseTimeMonitorData](docs/ResponseTimeMonitorData.md)
         - [org.openapitools.server.api.model.StringParameterDefinition](docs/StringParameterDefinition.md)
         - [org.openapitools.server.api.model.StringParameterValue](docs/StringParameterValue.md)
         - [org.openapitools.server.api.model.SwapSpaceMonitorMemoryUsage2](docs/SwapSpaceMonitorMemoryUsage2.md)
         - [org.openapitools.server.api.model.UnlabeledLoadStatistics](docs/UnlabeledLoadStatistics.md)
         - [org.openapitools.server.api.model.User](docs/User.md)
        

<a name="documentation-for-authorization"></a>
## Documentation for Authorization

    <a name="jenkins_auth"></a>
    ### jenkins_auth

        - **Type**: HTTP basic authentication
    
    <a name="jwt_auth"></a>
    ### jwt_auth

    - **Type**: API key
    - **API key parameter name**: Authorization
    - **Location**: HTTP header
        
