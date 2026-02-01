# Documentation for Swaggy Jenkins

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *http://localhost*

| Class | Method | HTTP request | Description |
|------------ | ------------- | ------------- | -------------|
| *BaseApi* | [**getCrumb**](Apis/BaseApi.md#getCrumb) | **GET** /crumbIssuer/api/json | Retrieve CSRF protection token |
| *BlueOceanApi* | [**deletePipelineQueueItem**](Apis/BlueOceanApi.md#deletePipelineQueueItem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | Delete queue item from an organization pipeline queue |
*BlueOceanApi* | [**getAuthenticatedUser**](Apis/BlueOceanApi.md#getAuthenticatedUser) | **GET** /blue/rest/organizations/{organization}/user/ | Retrieve authenticated user details for an organization |
*BlueOceanApi* | [**getClasses**](Apis/BlueOceanApi.md#getClasses) | **GET** /blue/rest/classes/{class} | Get a list of class names supported by a given class |
*BlueOceanApi* | [**getJsonWebKey**](Apis/BlueOceanApi.md#getJsonWebKey) | **GET** /jwt-auth/jwks/{key} | Retrieve JSON Web Key |
*BlueOceanApi* | [**getJsonWebToken**](Apis/BlueOceanApi.md#getJsonWebToken) | **GET** /jwt-auth/token | Retrieve JSON Web Token |
*BlueOceanApi* | [**getOrganisation**](Apis/BlueOceanApi.md#getOrganisation) | **GET** /blue/rest/organizations/{organization} | Retrieve organization details |
*BlueOceanApi* | [**getOrganisations**](Apis/BlueOceanApi.md#getOrganisations) | **GET** /blue/rest/organizations/ | Retrieve all organizations details |
*BlueOceanApi* | [**getPipeline**](Apis/BlueOceanApi.md#getPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | Retrieve pipeline details for an organization |
*BlueOceanApi* | [**getPipelineActivities**](Apis/BlueOceanApi.md#getPipelineActivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | Retrieve all activities details for an organization pipeline |
*BlueOceanApi* | [**getPipelineBranch**](Apis/BlueOceanApi.md#getPipelineBranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | Retrieve branch details for an organization pipeline |
*BlueOceanApi* | [**getPipelineBranchRun**](Apis/BlueOceanApi.md#getPipelineBranchRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | Retrieve branch run details for an organization pipeline |
*BlueOceanApi* | [**getPipelineBranches**](Apis/BlueOceanApi.md#getPipelineBranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | Retrieve all branches details for an organization pipeline |
*BlueOceanApi* | [**getPipelineFolder**](Apis/BlueOceanApi.md#getPipelineFolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | Retrieve pipeline folder for an organization |
*BlueOceanApi* | [**getPipelineFolderPipeline**](Apis/BlueOceanApi.md#getPipelineFolderPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | Retrieve pipeline details for an organization folder |
*BlueOceanApi* | [**getPipelineQueue**](Apis/BlueOceanApi.md#getPipelineQueue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | Retrieve queue details for an organization pipeline |
*BlueOceanApi* | [**getPipelineRun**](Apis/BlueOceanApi.md#getPipelineRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | Retrieve run details for an organization pipeline |
*BlueOceanApi* | [**getPipelineRunLog**](Apis/BlueOceanApi.md#getPipelineRunLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | Get log for a pipeline run |
*BlueOceanApi* | [**getPipelineRunNode**](Apis/BlueOceanApi.md#getPipelineRunNode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | Retrieve run node details for an organization pipeline |
*BlueOceanApi* | [**getPipelineRunNodeStep**](Apis/BlueOceanApi.md#getPipelineRunNodeStep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | Retrieve run node details for an organization pipeline |
*BlueOceanApi* | [**getPipelineRunNodeStepLog**](Apis/BlueOceanApi.md#getPipelineRunNodeStepLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | Get log for a pipeline run node step |
*BlueOceanApi* | [**getPipelineRunNodeSteps**](Apis/BlueOceanApi.md#getPipelineRunNodeSteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | Retrieve run node steps details for an organization pipeline |
*BlueOceanApi* | [**getPipelineRunNodes**](Apis/BlueOceanApi.md#getPipelineRunNodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | Retrieve run nodes details for an organization pipeline |
*BlueOceanApi* | [**getPipelineRuns**](Apis/BlueOceanApi.md#getPipelineRuns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | Retrieve all runs details for an organization pipeline |
*BlueOceanApi* | [**getPipelines**](Apis/BlueOceanApi.md#getPipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | Retrieve all pipelines details for an organization |
*BlueOceanApi* | [**getSCM**](Apis/BlueOceanApi.md#getSCM) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | Retrieve SCM details for an organization |
*BlueOceanApi* | [**getSCMOrganisationRepositories**](Apis/BlueOceanApi.md#getSCMOrganisationRepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | Retrieve SCM organization repositories details for an organization |
*BlueOceanApi* | [**getSCMOrganisationRepository**](Apis/BlueOceanApi.md#getSCMOrganisationRepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | Retrieve SCM organization repository details for an organization |
*BlueOceanApi* | [**getSCMOrganisations**](Apis/BlueOceanApi.md#getSCMOrganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | Retrieve SCM organizations details for an organization |
*BlueOceanApi* | [**getUser**](Apis/BlueOceanApi.md#getUser) | **GET** /blue/rest/organizations/{organization}/users/{user} | Retrieve user details for an organization |
*BlueOceanApi* | [**getUserFavorites**](Apis/BlueOceanApi.md#getUserFavorites) | **GET** /blue/rest/users/{user}/favorites | Retrieve user favorites details for an organization |
*BlueOceanApi* | [**getUsers**](Apis/BlueOceanApi.md#getUsers) | **GET** /blue/rest/organizations/{organization}/users/ | Retrieve users details for an organization |
*BlueOceanApi* | [**postPipelineRun**](Apis/BlueOceanApi.md#postPipelineRun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | Replay an organization pipeline run |
*BlueOceanApi* | [**postPipelineRuns**](Apis/BlueOceanApi.md#postPipelineRuns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | Start a build for an organization pipeline |
*BlueOceanApi* | [**putPipelineFavorite**](Apis/BlueOceanApi.md#putPipelineFavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | Favorite/unfavorite a pipeline |
*BlueOceanApi* | [**putPipelineRun**](Apis/BlueOceanApi.md#putPipelineRun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | Stop a build of an organization pipeline |
*BlueOceanApi* | [**search**](Apis/BlueOceanApi.md#search) | **GET** /blue/rest/search/ | Search for any resource details |
*BlueOceanApi* | [**searchClasses**](Apis/BlueOceanApi.md#searchClasses) | **GET** /blue/rest/classes/ | Get classes details |
| *RemoteAccessApi* | [**getComputer**](Apis/RemoteAccessApi.md#getComputer) | **GET** /computer/api/json | Retrieve computer details |
*RemoteAccessApi* | [**getJenkins**](Apis/RemoteAccessApi.md#getJenkins) | **GET** /api/json | Retrieve Jenkins details |
*RemoteAccessApi* | [**getJob**](Apis/RemoteAccessApi.md#getJob) | **GET** /job/{name}/api/json | Retrieve job details |
*RemoteAccessApi* | [**getJobConfig**](Apis/RemoteAccessApi.md#getJobConfig) | **GET** /job/{name}/config.xml | Retrieve job configuration |
*RemoteAccessApi* | [**getJobLastBuild**](Apis/RemoteAccessApi.md#getJobLastBuild) | **GET** /job/{name}/lastBuild/api/json | Retrieve job's last build details |
*RemoteAccessApi* | [**getJobProgressiveText**](Apis/RemoteAccessApi.md#getJobProgressiveText) | **GET** /job/{name}/{number}/logText/progressiveText | Retrieve job's build progressive text output |
*RemoteAccessApi* | [**getQueue**](Apis/RemoteAccessApi.md#getQueue) | **GET** /queue/api/json | Retrieve queue details |
*RemoteAccessApi* | [**getQueueItem**](Apis/RemoteAccessApi.md#getQueueItem) | **GET** /queue/item/{number}/api/json | Retrieve queued item details |
*RemoteAccessApi* | [**getView**](Apis/RemoteAccessApi.md#getView) | **GET** /view/{name}/api/json | Retrieve view details |
*RemoteAccessApi* | [**getViewConfig**](Apis/RemoteAccessApi.md#getViewConfig) | **GET** /view/{name}/config.xml | Retrieve view configuration |
*RemoteAccessApi* | [**headJenkins**](Apis/RemoteAccessApi.md#headJenkins) | **HEAD** /api/json | Retrieve Jenkins headers |
*RemoteAccessApi* | [**postCreateItem**](Apis/RemoteAccessApi.md#postCreateItem) | **POST** /createItem | Create a new job using job configuration, or copied from an existing job |
*RemoteAccessApi* | [**postCreateView**](Apis/RemoteAccessApi.md#postCreateView) | **POST** /createView | Create a new view using view configuration |
*RemoteAccessApi* | [**postJobBuild**](Apis/RemoteAccessApi.md#postJobBuild) | **POST** /job/{name}/build | Build a job |
*RemoteAccessApi* | [**postJobConfig**](Apis/RemoteAccessApi.md#postJobConfig) | **POST** /job/{name}/config.xml | Update job configuration |
*RemoteAccessApi* | [**postJobDelete**](Apis/RemoteAccessApi.md#postJobDelete) | **POST** /job/{name}/doDelete | Delete a job |
*RemoteAccessApi* | [**postJobDisable**](Apis/RemoteAccessApi.md#postJobDisable) | **POST** /job/{name}/disable | Disable a job |
*RemoteAccessApi* | [**postJobEnable**](Apis/RemoteAccessApi.md#postJobEnable) | **POST** /job/{name}/enable | Enable a job |
*RemoteAccessApi* | [**postJobLastBuildStop**](Apis/RemoteAccessApi.md#postJobLastBuildStop) | **POST** /job/{name}/lastBuild/stop | Stop a job |
*RemoteAccessApi* | [**postViewConfig**](Apis/RemoteAccessApi.md#postViewConfig) | **POST** /view/{name}/config.xml | Update view configuration |


<a name="documentation-for-models"></a>
## Documentation for Models

 - [AllView](./Models/AllView.md)
 - [BranchImpl](./Models/BranchImpl.md)
 - [BranchImpllinks](./Models/BranchImpllinks.md)
 - [BranchImplpermissions](./Models/BranchImplpermissions.md)
 - [CauseAction](./Models/CauseAction.md)
 - [CauseUserIdCause](./Models/CauseUserIdCause.md)
 - [ClassesByClass](./Models/ClassesByClass.md)
 - [ClockDifference](./Models/ClockDifference.md)
 - [ComputerSet](./Models/ComputerSet.md)
 - [DefaultCrumbIssuer](./Models/DefaultCrumbIssuer.md)
 - [DiskSpaceMonitorDescriptorDiskSpace](./Models/DiskSpaceMonitorDescriptorDiskSpace.md)
 - [EmptyChangeLogSet](./Models/EmptyChangeLogSet.md)
 - [ExtensionClassContainerImpl1](./Models/ExtensionClassContainerImpl1.md)
 - [ExtensionClassContainerImpl1links](./Models/ExtensionClassContainerImpl1links.md)
 - [ExtensionClassContainerImpl1map](./Models/ExtensionClassContainerImpl1map.md)
 - [ExtensionClassImpl](./Models/ExtensionClassImpl.md)
 - [ExtensionClassImpllinks](./Models/ExtensionClassImpllinks.md)
 - [FavoriteImpl](./Models/FavoriteImpl.md)
 - [FavoriteImpllinks](./Models/FavoriteImpllinks.md)
 - [FreeStyleBuild](./Models/FreeStyleBuild.md)
 - [FreeStyleProject](./Models/FreeStyleProject.md)
 - [FreeStyleProjectactions](./Models/FreeStyleProjectactions.md)
 - [FreeStyleProjecthealthReport](./Models/FreeStyleProjecthealthReport.md)
 - [GenericResource](./Models/GenericResource.md)
 - [GithubContent](./Models/GithubContent.md)
 - [GithubFile](./Models/GithubFile.md)
 - [GithubOrganization](./Models/GithubOrganization.md)
 - [GithubOrganizationlinks](./Models/GithubOrganizationlinks.md)
 - [GithubRepositories](./Models/GithubRepositories.md)
 - [GithubRepositorieslinks](./Models/GithubRepositorieslinks.md)
 - [GithubRepository](./Models/GithubRepository.md)
 - [GithubRepositorylinks](./Models/GithubRepositorylinks.md)
 - [GithubRepositorypermissions](./Models/GithubRepositorypermissions.md)
 - [GithubRespositoryContainer](./Models/GithubRespositoryContainer.md)
 - [GithubRespositoryContainerlinks](./Models/GithubRespositoryContainerlinks.md)
 - [GithubScm](./Models/GithubScm.md)
 - [GithubScmlinks](./Models/GithubScmlinks.md)
 - [Hudson](./Models/Hudson.md)
 - [HudsonMasterComputer](./Models/HudsonMasterComputer.md)
 - [HudsonMasterComputerexecutors](./Models/HudsonMasterComputerexecutors.md)
 - [HudsonMasterComputermonitorData](./Models/HudsonMasterComputermonitorData.md)
 - [HudsonassignedLabels](./Models/HudsonassignedLabels.md)
 - [InputStepImpl](./Models/InputStepImpl.md)
 - [InputStepImpllinks](./Models/InputStepImpllinks.md)
 - [Label1](./Models/Label1.md)
 - [Link](./Models/Link.md)
 - [ListView](./Models/ListView.md)
 - [MultibranchPipeline](./Models/MultibranchPipeline.md)
 - [NullSCM](./Models/NullSCM.md)
 - [Organisation](./Models/Organisation.md)
 - [Pipeline](./Models/Pipeline.md)
 - [PipelineActivity](./Models/PipelineActivity.md)
 - [PipelineActivityartifacts](./Models/PipelineActivityartifacts.md)
 - [PipelineBranchesitem](./Models/PipelineBranchesitem.md)
 - [PipelineBranchesitemlatestRun](./Models/PipelineBranchesitemlatestRun.md)
 - [PipelineBranchesitempullRequest](./Models/PipelineBranchesitempullRequest.md)
 - [PipelineBranchesitempullRequestlinks](./Models/PipelineBranchesitempullRequestlinks.md)
 - [PipelineFolderImpl](./Models/PipelineFolderImpl.md)
 - [PipelineImpl](./Models/PipelineImpl.md)
 - [PipelineImpllinks](./Models/PipelineImpllinks.md)
 - [PipelineRun](./Models/PipelineRun.md)
 - [PipelineRunImpl](./Models/PipelineRunImpl.md)
 - [PipelineRunImpllinks](./Models/PipelineRunImpllinks.md)
 - [PipelineRunNode](./Models/PipelineRunNode.md)
 - [PipelineRunNodeedges](./Models/PipelineRunNodeedges.md)
 - [PipelineRunartifacts](./Models/PipelineRunartifacts.md)
 - [PipelineStepImpl](./Models/PipelineStepImpl.md)
 - [PipelineStepImpllinks](./Models/PipelineStepImpllinks.md)
 - [PipelinelatestRun](./Models/PipelinelatestRun.md)
 - [PipelinelatestRunartifacts](./Models/PipelinelatestRunartifacts.md)
 - [Queue](./Models/Queue.md)
 - [QueueBlockedItem](./Models/QueueBlockedItem.md)
 - [QueueItemImpl](./Models/QueueItemImpl.md)
 - [QueueLeftItem](./Models/QueueLeftItem.md)
 - [ResponseTimeMonitorData](./Models/ResponseTimeMonitorData.md)
 - [StringParameterDefinition](./Models/StringParameterDefinition.md)
 - [StringParameterValue](./Models/StringParameterValue.md)
 - [SwapSpaceMonitorMemoryUsage2](./Models/SwapSpaceMonitorMemoryUsage2.md)
 - [UnlabeledLoadStatistics](./Models/UnlabeledLoadStatistics.md)
 - [User](./Models/User.md)


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

