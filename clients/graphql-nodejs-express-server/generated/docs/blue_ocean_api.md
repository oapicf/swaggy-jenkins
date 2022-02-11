# blue_ocean_api

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeletePipelineQueueItem**](blue_ocean_api.md#DeletePipelineQueueItem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**GetAuthenticatedUser**](blue_ocean_api.md#GetAuthenticatedUser) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**GetClasses**](blue_ocean_api.md#GetClasses) | **GET** /blue/rest/classes/{class} | 
[**GetJsonWebKey**](blue_ocean_api.md#GetJsonWebKey) | **GET** /jwt-auth/jwks/{key} | 
[**GetJsonWebToken**](blue_ocean_api.md#GetJsonWebToken) | **GET** /jwt-auth/token | 
[**GetOrganisation**](blue_ocean_api.md#GetOrganisation) | **GET** /blue/rest/organizations/{organization} | 
[**GetOrganisations**](blue_ocean_api.md#GetOrganisations) | **GET** /blue/rest/organizations/ | 
[**GetPipeline**](blue_ocean_api.md#GetPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**GetPipelineActivities**](blue_ocean_api.md#GetPipelineActivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**GetPipelineBranch**](blue_ocean_api.md#GetPipelineBranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**GetPipelineBranchRun**](blue_ocean_api.md#GetPipelineBranchRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**GetPipelineBranches**](blue_ocean_api.md#GetPipelineBranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**GetPipelineFolder**](blue_ocean_api.md#GetPipelineFolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**GetPipelineFolderPipeline**](blue_ocean_api.md#GetPipelineFolderPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**GetPipelineQueue**](blue_ocean_api.md#GetPipelineQueue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**GetPipelineRun**](blue_ocean_api.md#GetPipelineRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**GetPipelineRunLog**](blue_ocean_api.md#GetPipelineRunLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**GetPipelineRunNode**](blue_ocean_api.md#GetPipelineRunNode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**GetPipelineRunNodeStep**](blue_ocean_api.md#GetPipelineRunNodeStep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**GetPipelineRunNodeStepLog**](blue_ocean_api.md#GetPipelineRunNodeStepLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**GetPipelineRunNodeSteps**](blue_ocean_api.md#GetPipelineRunNodeSteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**GetPipelineRunNodes**](blue_ocean_api.md#GetPipelineRunNodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**GetPipelineRuns**](blue_ocean_api.md#GetPipelineRuns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**GetPipelines**](blue_ocean_api.md#GetPipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
[**GetSCM**](blue_ocean_api.md#GetSCM) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
[**GetSCMOrganisationRepositories**](blue_ocean_api.md#GetSCMOrganisationRepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**GetSCMOrganisationRepository**](blue_ocean_api.md#GetSCMOrganisationRepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**GetSCMOrganisations**](blue_ocean_api.md#GetSCMOrganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**GetUser**](blue_ocean_api.md#GetUser) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
[**GetUserFavorites**](blue_ocean_api.md#GetUserFavorites) | **GET** /blue/rest/users/{user}/favorites | 
[**GetUsers**](blue_ocean_api.md#GetUsers) | **GET** /blue/rest/organizations/{organization}/users/ | 
[**PostPipelineRun**](blue_ocean_api.md#PostPipelineRun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**PostPipelineRuns**](blue_ocean_api.md#PostPipelineRuns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**PutPipelineFavorite**](blue_ocean_api.md#PutPipelineFavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**PutPipelineRun**](blue_ocean_api.md#PutPipelineRun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**Search**](blue_ocean_api.md#Search) | **GET** /blue/rest/search/ | 
[**SearchClasses**](blue_ocean_api.md#SearchClasses) | **GET** /blue/rest/classes/ | 


<a name="DeletePipelineQueueItem"></a>
# **DeletePipelineQueueItem**
> DeletePipelineQueueItem(organization, pipeline, queue)



Delete queue item from an organization pipeline queue
<a name="GetAuthenticatedUser"></a>
# **GetAuthenticatedUser**
> User GetAuthenticatedUser(organization)



Retrieve authenticated user details for an organization
<a name="GetClasses"></a>
# **GetClasses**
> String! GetClasses(class)



Get a list of class names supported by a given class
<a name="GetJsonWebKey"></a>
# **GetJsonWebKey**
> String! GetJsonWebKey(key)



Retrieve JSON Web Key
<a name="GetJsonWebToken"></a>
# **GetJsonWebToken**
> String! GetJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins)



Retrieve JSON Web Token
<a name="GetOrganisation"></a>
# **GetOrganisation**
> Organisation GetOrganisation(organization)



Retrieve organization details
<a name="GetOrganisations"></a>
# **GetOrganisations**
> Organisation GetOrganisations()



Retrieve all organizations details
<a name="GetPipeline"></a>
# **GetPipeline**
> Pipeline GetPipeline(organization, pipeline)



Retrieve pipeline details for an organization
<a name="GetPipelineActivities"></a>
# **GetPipelineActivities**
> PipelineActivity GetPipelineActivities(organization, pipeline)



Retrieve all activities details for an organization pipeline
<a name="GetPipelineBranch"></a>
# **GetPipelineBranch**
> BranchImpl GetPipelineBranch(organization, pipeline, branch)



Retrieve branch details for an organization pipeline
<a name="GetPipelineBranchRun"></a>
# **GetPipelineBranchRun**
> PipelineRun GetPipelineBranchRun(organization, pipeline, branch, run)



Retrieve branch run details for an organization pipeline
<a name="GetPipelineBranches"></a>
# **GetPipelineBranches**
> MultibranchPipeline GetPipelineBranches(organization, pipeline)



Retrieve all branches details for an organization pipeline
<a name="GetPipelineFolder"></a>
# **GetPipelineFolder**
> PipelineFolderImpl GetPipelineFolder(organization, folder)



Retrieve pipeline folder for an organization
<a name="GetPipelineFolderPipeline"></a>
# **GetPipelineFolderPipeline**
> PipelineImpl GetPipelineFolderPipeline(organization, pipeline, folder)



Retrieve pipeline details for an organization folder
<a name="GetPipelineQueue"></a>
# **GetPipelineQueue**
> QueueItemImpl GetPipelineQueue(organization, pipeline)



Retrieve queue details for an organization pipeline
<a name="GetPipelineRun"></a>
# **GetPipelineRun**
> PipelineRun GetPipelineRun(organization, pipeline, run)



Retrieve run details for an organization pipeline
<a name="GetPipelineRunLog"></a>
# **GetPipelineRunLog**
> String! GetPipelineRunLog(organization, pipeline, run, start, download)



Get log for a pipeline run
<a name="GetPipelineRunNode"></a>
# **GetPipelineRunNode**
> PipelineRunNode GetPipelineRunNode(organization, pipeline, run, node)



Retrieve run node details for an organization pipeline
<a name="GetPipelineRunNodeStep"></a>
# **GetPipelineRunNodeStep**
> PipelineStepImpl GetPipelineRunNodeStep(organization, pipeline, run, node, step)



Retrieve run node details for an organization pipeline
<a name="GetPipelineRunNodeStepLog"></a>
# **GetPipelineRunNodeStepLog**
> String! GetPipelineRunNodeStepLog(organization, pipeline, run, node, step)



Get log for a pipeline run node step
<a name="GetPipelineRunNodeSteps"></a>
# **GetPipelineRunNodeSteps**
> PipelineStepImpl GetPipelineRunNodeSteps(organization, pipeline, run, node)



Retrieve run node steps details for an organization pipeline
<a name="GetPipelineRunNodes"></a>
# **GetPipelineRunNodes**
> PipelineRunNode GetPipelineRunNodes(organization, pipeline, run)



Retrieve run nodes details for an organization pipeline
<a name="GetPipelineRuns"></a>
# **GetPipelineRuns**
> PipelineRun GetPipelineRuns(organization, pipeline)



Retrieve all runs details for an organization pipeline
<a name="GetPipelines"></a>
# **GetPipelines**
> Pipeline GetPipelines(organization)



Retrieve all pipelines details for an organization
<a name="GetSCM"></a>
# **GetSCM**
> GithubScm GetSCM(organization, scm)



Retrieve SCM details for an organization
<a name="GetSCMOrganisationRepositories"></a>
# **GetSCMOrganisationRepositories**
> GithubOrganization GetSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber)



Retrieve SCM organization repositories details for an organization
<a name="GetSCMOrganisationRepository"></a>
# **GetSCMOrganisationRepository**
> GithubOrganization GetSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId)



Retrieve SCM organization repository details for an organization
<a name="GetSCMOrganisations"></a>
# **GetSCMOrganisations**
> GithubOrganization GetSCMOrganisations(organization, scm, credentialId)



Retrieve SCM organizations details for an organization
<a name="GetUser"></a>
# **GetUser**
> User GetUser(organization, user)



Retrieve user details for an organization
<a name="GetUserFavorites"></a>
# **GetUserFavorites**
> FavoriteImpl GetUserFavorites(user)



Retrieve user favorites details for an organization
<a name="GetUsers"></a>
# **GetUsers**
> User GetUsers(organization)



Retrieve users details for an organization
<a name="PostPipelineRun"></a>
# **PostPipelineRun**
> QueueItemImpl PostPipelineRun(organization, pipeline, run)



Replay an organization pipeline run
<a name="PostPipelineRuns"></a>
# **PostPipelineRuns**
> QueueItemImpl PostPipelineRuns(organization, pipeline)



Start a build for an organization pipeline
<a name="PutPipelineFavorite"></a>
# **PutPipelineFavorite**
> FavoriteImpl PutPipelineFavorite(organization, pipeline, body)



Favorite/unfavorite a pipeline
<a name="PutPipelineRun"></a>
# **PutPipelineRun**
> PipelineRun PutPipelineRun(organization, pipeline, run, blocking, timeOutInSecs)



Stop a build of an organization pipeline
<a name="Search"></a>
# **Search**
> String! Search(q)



Search for any resource details
<a name="SearchClasses"></a>
# **SearchClasses**
> String! SearchClasses(q)



Get classes details
