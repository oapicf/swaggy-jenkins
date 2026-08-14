# Documentation for Swaggy Jenkins

    <a id="documentation-for-api-endpoints"></a>
    ## Documentation for API Endpoints

    All URIs are relative to *http://localhost*

    Class | Method | HTTP request | Description
    ------------ | ------------- | ------------- | -------------
    *BaseApi* | [**getCrumb**](Apis/docs/BaseApi.md#getcrumb) | **Get** /crumbIssuer/api/json | 
    *BlueOceanApi* | [**deletePipelineQueueItem**](Apis/docs/BlueOceanApi.md#deletepipelinequeueitem) | **Delete** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
    *BlueOceanApi* | [**getAuthenticatedUser**](Apis/docs/BlueOceanApi.md#getauthenticateduser) | **Get** /blue/rest/organizations/{organization}/user/ | 
    *BlueOceanApi* | [**getClasses**](Apis/docs/BlueOceanApi.md#getclasses) | **Get** /blue/rest/classes/{class} | 
    *BlueOceanApi* | [**getJsonWebKey**](Apis/docs/BlueOceanApi.md#getjsonwebkey) | **Get** /jwt-auth/jwks/{key} | 
    *BlueOceanApi* | [**getJsonWebToken**](Apis/docs/BlueOceanApi.md#getjsonwebtoken) | **Get** /jwt-auth/token | 
    *BlueOceanApi* | [**getOrganisation**](Apis/docs/BlueOceanApi.md#getorganisation) | **Get** /blue/rest/organizations/{organization} | 
    *BlueOceanApi* | [**getOrganisations**](Apis/docs/BlueOceanApi.md#getorganisations) | **Get** /blue/rest/organizations/ | 
    *BlueOceanApi* | [**getPipeline**](Apis/docs/BlueOceanApi.md#getpipeline) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
    *BlueOceanApi* | [**getPipelineActivities**](Apis/docs/BlueOceanApi.md#getpipelineactivities) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
    *BlueOceanApi* | [**getPipelineBranch**](Apis/docs/BlueOceanApi.md#getpipelinebranch) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
    *BlueOceanApi* | [**getPipelineBranchRun**](Apis/docs/BlueOceanApi.md#getpipelinebranchrun) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
    *BlueOceanApi* | [**getPipelineBranches**](Apis/docs/BlueOceanApi.md#getpipelinebranches) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
    *BlueOceanApi* | [**getPipelineFolder**](Apis/docs/BlueOceanApi.md#getpipelinefolder) | **Get** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
    *BlueOceanApi* | [**getPipelineFolderPipeline**](Apis/docs/BlueOceanApi.md#getpipelinefolderpipeline) | **Get** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
    *BlueOceanApi* | [**getPipelineQueue**](Apis/docs/BlueOceanApi.md#getpipelinequeue) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
    *BlueOceanApi* | [**getPipelineRun**](Apis/docs/BlueOceanApi.md#getpipelinerun) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
    *BlueOceanApi* | [**getPipelineRunLog**](Apis/docs/BlueOceanApi.md#getpipelinerunlog) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
    *BlueOceanApi* | [**getPipelineRunNode**](Apis/docs/BlueOceanApi.md#getpipelinerunnode) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
    *BlueOceanApi* | [**getPipelineRunNodeStep**](Apis/docs/BlueOceanApi.md#getpipelinerunnodestep) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
    *BlueOceanApi* | [**getPipelineRunNodeStepLog**](Apis/docs/BlueOceanApi.md#getpipelinerunnodesteplog) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
    *BlueOceanApi* | [**getPipelineRunNodeSteps**](Apis/docs/BlueOceanApi.md#getpipelinerunnodesteps) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
    *BlueOceanApi* | [**getPipelineRunNodes**](Apis/docs/BlueOceanApi.md#getpipelinerunnodes) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
    *BlueOceanApi* | [**getPipelineRuns**](Apis/docs/BlueOceanApi.md#getpipelineruns) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
    *BlueOceanApi* | [**getPipelines**](Apis/docs/BlueOceanApi.md#getpipelines) | **Get** /blue/rest/organizations/{organization}/pipelines/ | 
    *BlueOceanApi* | [**getSCM**](Apis/docs/BlueOceanApi.md#getscm) | **Get** /blue/rest/organizations/{organization}/scm/{scm} | 
    *BlueOceanApi* | [**getSCMOrganisationRepositories**](Apis/docs/BlueOceanApi.md#getscmorganisationrepositories) | **Get** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
    *BlueOceanApi* | [**getSCMOrganisationRepository**](Apis/docs/BlueOceanApi.md#getscmorganisationrepository) | **Get** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
    *BlueOceanApi* | [**getSCMOrganisations**](Apis/docs/BlueOceanApi.md#getscmorganisations) | **Get** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
    *BlueOceanApi* | [**getUser**](Apis/docs/BlueOceanApi.md#getuser) | **Get** /blue/rest/organizations/{organization}/users/{user} | 
    *BlueOceanApi* | [**getUserFavorites**](Apis/docs/BlueOceanApi.md#getuserfavorites) | **Get** /blue/rest/users/{user}/favorites | 
    *BlueOceanApi* | [**getUsers**](Apis/docs/BlueOceanApi.md#getusers) | **Get** /blue/rest/organizations/{organization}/users/ | 
    *BlueOceanApi* | [**postPipelineRun**](Apis/docs/BlueOceanApi.md#postpipelinerun) | **Post** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
    *BlueOceanApi* | [**postPipelineRuns**](Apis/docs/BlueOceanApi.md#postpipelineruns) | **Post** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
    *BlueOceanApi* | [**putPipelineFavorite**](Apis/docs/BlueOceanApi.md#putpipelinefavorite) | **Put** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
    *BlueOceanApi* | [**putPipelineRun**](Apis/docs/BlueOceanApi.md#putpipelinerun) | **Put** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
    *BlueOceanApi* | [**search**](Apis/docs/BlueOceanApi.md#search) | **Get** /blue/rest/search/ | 
    *BlueOceanApi* | [**searchClasses**](Apis/docs/BlueOceanApi.md#searchclasses) | **Get** /blue/rest/classes/ | 
    *RemoteAccessApi* | [**getComputer**](Apis/docs/RemoteAccessApi.md#getcomputer) | **Get** /computer/api/json | 
    *RemoteAccessApi* | [**getJenkins**](Apis/docs/RemoteAccessApi.md#getjenkins) | **Get** /api/json | 
    *RemoteAccessApi* | [**getJob**](Apis/docs/RemoteAccessApi.md#getjob) | **Get** /job/{name}/api/json | 
    *RemoteAccessApi* | [**getJobConfig**](Apis/docs/RemoteAccessApi.md#getjobconfig) | **Get** /job/{name}/config.xml | 
    *RemoteAccessApi* | [**getJobLastBuild**](Apis/docs/RemoteAccessApi.md#getjoblastbuild) | **Get** /job/{name}/lastBuild/api/json | 
    *RemoteAccessApi* | [**getJobProgressiveText**](Apis/docs/RemoteAccessApi.md#getjobprogressivetext) | **Get** /job/{name}/{number}/logText/progressiveText | 
    *RemoteAccessApi* | [**getQueue**](Apis/docs/RemoteAccessApi.md#getqueue) | **Get** /queue/api/json | 
    *RemoteAccessApi* | [**getQueueItem**](Apis/docs/RemoteAccessApi.md#getqueueitem) | **Get** /queue/item/{number}/api/json | 
    *RemoteAccessApi* | [**getView**](Apis/docs/RemoteAccessApi.md#getview) | **Get** /view/{name}/api/json | 
    *RemoteAccessApi* | [**getViewConfig**](Apis/docs/RemoteAccessApi.md#getviewconfig) | **Get** /view/{name}/config.xml | 
    *RemoteAccessApi* | [**headJenkins**](Apis/docs/RemoteAccessApi.md#headjenkins) | **Head** /api/json | 
    *RemoteAccessApi* | [**postCreateItem**](Apis/docs/RemoteAccessApi.md#postcreateitem) | **Post** /createItem | 
    *RemoteAccessApi* | [**postCreateView**](Apis/docs/RemoteAccessApi.md#postcreateview) | **Post** /createView | 
    *RemoteAccessApi* | [**postJobBuild**](Apis/docs/RemoteAccessApi.md#postjobbuild) | **Post** /job/{name}/build | 
    *RemoteAccessApi* | [**postJobConfig**](Apis/docs/RemoteAccessApi.md#postjobconfig) | **Post** /job/{name}/config.xml | 
    *RemoteAccessApi* | [**postJobDelete**](Apis/docs/RemoteAccessApi.md#postjobdelete) | **Post** /job/{name}/doDelete | 
    *RemoteAccessApi* | [**postJobDisable**](Apis/docs/RemoteAccessApi.md#postjobdisable) | **Post** /job/{name}/disable | 
    *RemoteAccessApi* | [**postJobEnable**](Apis/docs/RemoteAccessApi.md#postjobenable) | **Post** /job/{name}/enable | 
    *RemoteAccessApi* | [**postJobLastBuildStop**](Apis/docs/RemoteAccessApi.md#postjoblastbuildstop) | **Post** /job/{name}/lastBuild/stop | 
    *RemoteAccessApi* | [**postViewConfig**](Apis/docs/RemoteAccessApi.md#postviewconfig) | **Post** /view/{name}/config.xml | 
    

    <a id="documentation-for-models"></a>
    ## Documentation for Models

         - [org.openapitools.server.api.model.AllView](Models/docs/AllView.md)
         - [org.openapitools.server.api.model.BranchImpl](Models/docs/BranchImpl.md)
         - [org.openapitools.server.api.model.BranchImpllinks](Models/docs/BranchImpllinks.md)
         - [org.openapitools.server.api.model.BranchImplpermissions](Models/docs/BranchImplpermissions.md)
         - [org.openapitools.server.api.model.CauseAction](Models/docs/CauseAction.md)
         - [org.openapitools.server.api.model.CauseUserIdCause](Models/docs/CauseUserIdCause.md)
         - [org.openapitools.server.api.model.ClassesByClass](Models/docs/ClassesByClass.md)
         - [org.openapitools.server.api.model.ClockDifference](Models/docs/ClockDifference.md)
         - [org.openapitools.server.api.model.ComputerSet](Models/docs/ComputerSet.md)
         - [org.openapitools.server.api.model.DefaultCrumbIssuer](Models/docs/DefaultCrumbIssuer.md)
         - [org.openapitools.server.api.model.DiskSpaceMonitorDescriptorDiskSpace](Models/docs/DiskSpaceMonitorDescriptorDiskSpace.md)
         - [org.openapitools.server.api.model.EmptyChangeLogSet](Models/docs/EmptyChangeLogSet.md)
         - [org.openapitools.server.api.model.ExtensionClassContainerImpl1](Models/docs/ExtensionClassContainerImpl1.md)
         - [org.openapitools.server.api.model.ExtensionClassContainerImpl1links](Models/docs/ExtensionClassContainerImpl1links.md)
         - [org.openapitools.server.api.model.ExtensionClassContainerImpl1map](Models/docs/ExtensionClassContainerImpl1map.md)
         - [org.openapitools.server.api.model.ExtensionClassImpl](Models/docs/ExtensionClassImpl.md)
         - [org.openapitools.server.api.model.ExtensionClassImpllinks](Models/docs/ExtensionClassImpllinks.md)
         - [org.openapitools.server.api.model.FavoriteImpl](Models/docs/FavoriteImpl.md)
         - [org.openapitools.server.api.model.FavoriteImpllinks](Models/docs/FavoriteImpllinks.md)
         - [org.openapitools.server.api.model.FreeStyleBuild](Models/docs/FreeStyleBuild.md)
         - [org.openapitools.server.api.model.FreeStyleProject](Models/docs/FreeStyleProject.md)
         - [org.openapitools.server.api.model.FreeStyleProjectactions](Models/docs/FreeStyleProjectactions.md)
         - [org.openapitools.server.api.model.FreeStyleProjecthealthReport](Models/docs/FreeStyleProjecthealthReport.md)
         - [org.openapitools.server.api.model.GenericResource](Models/docs/GenericResource.md)
         - [org.openapitools.server.api.model.GithubContent](Models/docs/GithubContent.md)
         - [org.openapitools.server.api.model.GithubFile](Models/docs/GithubFile.md)
         - [org.openapitools.server.api.model.GithubOrganization](Models/docs/GithubOrganization.md)
         - [org.openapitools.server.api.model.GithubOrganizationlinks](Models/docs/GithubOrganizationlinks.md)
         - [org.openapitools.server.api.model.GithubRepositories](Models/docs/GithubRepositories.md)
         - [org.openapitools.server.api.model.GithubRepositorieslinks](Models/docs/GithubRepositorieslinks.md)
         - [org.openapitools.server.api.model.GithubRepository](Models/docs/GithubRepository.md)
         - [org.openapitools.server.api.model.GithubRepositorylinks](Models/docs/GithubRepositorylinks.md)
         - [org.openapitools.server.api.model.GithubRepositorypermissions](Models/docs/GithubRepositorypermissions.md)
         - [org.openapitools.server.api.model.GithubRespositoryContainer](Models/docs/GithubRespositoryContainer.md)
         - [org.openapitools.server.api.model.GithubRespositoryContainerlinks](Models/docs/GithubRespositoryContainerlinks.md)
         - [org.openapitools.server.api.model.GithubScm](Models/docs/GithubScm.md)
         - [org.openapitools.server.api.model.GithubScmlinks](Models/docs/GithubScmlinks.md)
         - [org.openapitools.server.api.model.Hudson](Models/docs/Hudson.md)
         - [org.openapitools.server.api.model.HudsonMasterComputer](Models/docs/HudsonMasterComputer.md)
         - [org.openapitools.server.api.model.HudsonMasterComputerexecutors](Models/docs/HudsonMasterComputerexecutors.md)
         - [org.openapitools.server.api.model.HudsonMasterComputermonitorData](Models/docs/HudsonMasterComputermonitorData.md)
         - [org.openapitools.server.api.model.HudsonassignedLabels](Models/docs/HudsonassignedLabels.md)
         - [org.openapitools.server.api.model.InputStepImpl](Models/docs/InputStepImpl.md)
         - [org.openapitools.server.api.model.InputStepImpllinks](Models/docs/InputStepImpllinks.md)
         - [org.openapitools.server.api.model.Label1](Models/docs/Label1.md)
         - [org.openapitools.server.api.model.Link](Models/docs/Link.md)
         - [org.openapitools.server.api.model.ListView](Models/docs/ListView.md)
         - [org.openapitools.server.api.model.MultibranchPipeline](Models/docs/MultibranchPipeline.md)
         - [org.openapitools.server.api.model.NullSCM](Models/docs/NullSCM.md)
         - [org.openapitools.server.api.model.Organisation](Models/docs/Organisation.md)
         - [org.openapitools.server.api.model.Pipeline](Models/docs/Pipeline.md)
         - [org.openapitools.server.api.model.PipelineActivity](Models/docs/PipelineActivity.md)
         - [org.openapitools.server.api.model.PipelineActivityartifacts](Models/docs/PipelineActivityartifacts.md)
         - [org.openapitools.server.api.model.PipelineBranchesitem](Models/docs/PipelineBranchesitem.md)
         - [org.openapitools.server.api.model.PipelineBranchesitemlatestRun](Models/docs/PipelineBranchesitemlatestRun.md)
         - [org.openapitools.server.api.model.PipelineBranchesitempullRequest](Models/docs/PipelineBranchesitempullRequest.md)
         - [org.openapitools.server.api.model.PipelineBranchesitempullRequestlinks](Models/docs/PipelineBranchesitempullRequestlinks.md)
         - [org.openapitools.server.api.model.PipelineFolderImpl](Models/docs/PipelineFolderImpl.md)
         - [org.openapitools.server.api.model.PipelineImpl](Models/docs/PipelineImpl.md)
         - [org.openapitools.server.api.model.PipelineImpllinks](Models/docs/PipelineImpllinks.md)
         - [org.openapitools.server.api.model.PipelineRun](Models/docs/PipelineRun.md)
         - [org.openapitools.server.api.model.PipelineRunImpl](Models/docs/PipelineRunImpl.md)
         - [org.openapitools.server.api.model.PipelineRunImpllinks](Models/docs/PipelineRunImpllinks.md)
         - [org.openapitools.server.api.model.PipelineRunNode](Models/docs/PipelineRunNode.md)
         - [org.openapitools.server.api.model.PipelineRunNodeedges](Models/docs/PipelineRunNodeedges.md)
         - [org.openapitools.server.api.model.PipelineRunartifacts](Models/docs/PipelineRunartifacts.md)
         - [org.openapitools.server.api.model.PipelineStepImpl](Models/docs/PipelineStepImpl.md)
         - [org.openapitools.server.api.model.PipelineStepImpllinks](Models/docs/PipelineStepImpllinks.md)
         - [org.openapitools.server.api.model.PipelinelatestRun](Models/docs/PipelinelatestRun.md)
         - [org.openapitools.server.api.model.PipelinelatestRunartifacts](Models/docs/PipelinelatestRunartifacts.md)
         - [org.openapitools.server.api.model.Queue](Models/docs/Queue.md)
         - [org.openapitools.server.api.model.QueueBlockedItem](Models/docs/QueueBlockedItem.md)
         - [org.openapitools.server.api.model.QueueItemImpl](Models/docs/QueueItemImpl.md)
         - [org.openapitools.server.api.model.QueueLeftItem](Models/docs/QueueLeftItem.md)
         - [org.openapitools.server.api.model.ResponseTimeMonitorData](Models/docs/ResponseTimeMonitorData.md)
         - [org.openapitools.server.api.model.StringParameterDefinition](Models/docs/StringParameterDefinition.md)
         - [org.openapitools.server.api.model.StringParameterValue](Models/docs/StringParameterValue.md)
         - [org.openapitools.server.api.model.SwapSpaceMonitorMemoryUsage2](Models/docs/SwapSpaceMonitorMemoryUsage2.md)
         - [org.openapitools.server.api.model.UnlabeledLoadStatistics](Models/docs/UnlabeledLoadStatistics.md)
         - [org.openapitools.server.api.model.User](Models/docs/User.md)
        

<a id="documentation-for-authorization"></a>
## Documentation for Authorization


Authentication schemes defined for the API:
    <a id="jenkins_auth"></a>
    ### jenkins_auth

        - **Type**: HTTP basic authentication
                
    <a id="jwt_auth"></a>
    ### jwt_auth

    - **Type**: API key
    - **API key parameter name**: Authorization
    - **Location**: HTTP header
                    
