namespace OpenAPI

open BlueOceanApiHandlerParams
open BlueOceanApiServiceImplementation
open Microsoft.AspNetCore.Mvc
open Microsoft.AspNetCore.Http
open Newtonsoft.Json
open Microsoft.Azure.WebJobs
open System.IO

module BlueOceanApiHandlers =

    /// <summary>
    /// 
    /// </summary>

    //#region DeletePipelineQueueItem
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("DeletePipelineQueueItem")>]
    let DeletePipelineQueueItem
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "DELETE", Route = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.DeletePipelineQueueItem ()
      match result with
      | DeletePipelineQueueItemStatusCode200 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | DeletePipelineQueueItemStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | DeletePipelineQueueItemStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetAuthenticatedUser
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetAuthenticatedUser")>]
    let GetAuthenticatedUser
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/user/")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetAuthenticatedUser ()
      match result with
      | GetAuthenticatedUserStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetAuthenticatedUserStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetAuthenticatedUserStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetClasses
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetClasses")>]
    let GetClasses
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/classes/{class}")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetClasses ()
      match result with
      | GetClassesStatusCode200 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetClassesStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetClassesStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetJsonWebKey
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetJsonWebKey")>]
    let GetJsonWebKey
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/jwt-auth/jwks/{key}")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetJsonWebKey ()
      match result with
      | GetJsonWebKeyStatusCode200 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetJsonWebKeyStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetJsonWebKeyStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetJsonWebToken
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetJsonWebToken")>]
    let GetJsonWebToken
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/jwt-auth/token")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetJsonWebToken ()
      match result with
      | GetJsonWebTokenStatusCode200 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetJsonWebTokenStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetJsonWebTokenStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetOrganisation
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetOrganisation")>]
    let GetOrganisation
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetOrganisation ()
      match result with
      | GetOrganisationStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetOrganisationStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetOrganisationStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))
      | GetOrganisationStatusCode404 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(404))

    //#region GetOrganisations
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetOrganisations")>]
    let GetOrganisations
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetOrganisations ()
      match result with
      | GetOrganisationsStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetOrganisationsStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetOrganisationsStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetPipeline
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetPipeline")>]
    let GetPipeline
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/pipelines/{pipeline}")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetPipeline ()
      match result with
      | GetPipelineStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetPipelineStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetPipelineStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))
      | GetPipelineStatusCode404 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(404))

    //#region GetPipelineActivities
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetPipelineActivities")>]
    let GetPipelineActivities
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetPipelineActivities ()
      match result with
      | GetPipelineActivitiesStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetPipelineActivitiesStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetPipelineActivitiesStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetPipelineBranch
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetPipelineBranch")>]
    let GetPipelineBranch
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetPipelineBranch ()
      match result with
      | GetPipelineBranchStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetPipelineBranchStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetPipelineBranchStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetPipelineBranchRun
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetPipelineBranchRun")>]
    let GetPipelineBranchRun
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetPipelineBranchRun ()
      match result with
      | GetPipelineBranchRunStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetPipelineBranchRunStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetPipelineBranchRunStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetPipelineBranches
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetPipelineBranches")>]
    let GetPipelineBranches
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetPipelineBranches ()
      match result with
      | GetPipelineBranchesStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetPipelineBranchesStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetPipelineBranchesStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetPipelineFolder
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetPipelineFolder")>]
    let GetPipelineFolder
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/pipelines/{folder}/")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetPipelineFolder ()
      match result with
      | GetPipelineFolderStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetPipelineFolderStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetPipelineFolderStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetPipelineFolderPipeline
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetPipelineFolderPipeline")>]
    let GetPipelineFolderPipeline
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetPipelineFolderPipeline ()
      match result with
      | GetPipelineFolderPipelineStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetPipelineFolderPipelineStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetPipelineFolderPipelineStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetPipelineQueue
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetPipelineQueue")>]
    let GetPipelineQueue
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetPipelineQueue ()
      match result with
      | GetPipelineQueueStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetPipelineQueueStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetPipelineQueueStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetPipelineRun
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetPipelineRun")>]
    let GetPipelineRun
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetPipelineRun ()
      match result with
      | GetPipelineRunStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetPipelineRunStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetPipelineRunStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetPipelineRunLog
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetPipelineRunLog")>]
    let GetPipelineRunLog
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetPipelineRunLog ()
      match result with
      | GetPipelineRunLogStatusCode200 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetPipelineRunLogStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetPipelineRunLogStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetPipelineRunNode
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetPipelineRunNode")>]
    let GetPipelineRunNode
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetPipelineRunNode ()
      match result with
      | GetPipelineRunNodeStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetPipelineRunNodeStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetPipelineRunNodeStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetPipelineRunNodeStep
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetPipelineRunNodeStep")>]
    let GetPipelineRunNodeStep
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetPipelineRunNodeStep ()
      match result with
      | GetPipelineRunNodeStepStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetPipelineRunNodeStepStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetPipelineRunNodeStepStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetPipelineRunNodeStepLog
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetPipelineRunNodeStepLog")>]
    let GetPipelineRunNodeStepLog
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetPipelineRunNodeStepLog ()
      match result with
      | GetPipelineRunNodeStepLogStatusCode200 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetPipelineRunNodeStepLogStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetPipelineRunNodeStepLogStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetPipelineRunNodeSteps
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetPipelineRunNodeSteps")>]
    let GetPipelineRunNodeSteps
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetPipelineRunNodeSteps ()
      match result with
      | GetPipelineRunNodeStepsStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetPipelineRunNodeStepsStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetPipelineRunNodeStepsStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetPipelineRunNodes
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetPipelineRunNodes")>]
    let GetPipelineRunNodes
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetPipelineRunNodes ()
      match result with
      | GetPipelineRunNodesStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetPipelineRunNodesStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetPipelineRunNodesStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetPipelineRuns
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetPipelineRuns")>]
    let GetPipelineRuns
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetPipelineRuns ()
      match result with
      | GetPipelineRunsStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetPipelineRunsStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetPipelineRunsStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetPipelines
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetPipelines")>]
    let GetPipelines
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/pipelines/")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetPipelines ()
      match result with
      | GetPipelinesStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetPipelinesStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetPipelinesStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetSCM
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetSCM")>]
    let GetSCM
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/scm/{scm}")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetSCM ()
      match result with
      | GetSCMStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetSCMStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetSCMStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetSCMOrganisationRepositories
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetSCMOrganisationRepositories")>]
    let GetSCMOrganisationRepositories
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetSCMOrganisationRepositories ()
      match result with
      | GetSCMOrganisationRepositoriesStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetSCMOrganisationRepositoriesStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetSCMOrganisationRepositoriesStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetSCMOrganisationRepository
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetSCMOrganisationRepository")>]
    let GetSCMOrganisationRepository
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetSCMOrganisationRepository ()
      match result with
      | GetSCMOrganisationRepositoryStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetSCMOrganisationRepositoryStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetSCMOrganisationRepositoryStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetSCMOrganisations
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetSCMOrganisations")>]
    let GetSCMOrganisations
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/scm/{scm}/organizations")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetSCMOrganisations ()
      match result with
      | GetSCMOrganisationsStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetSCMOrganisationsStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetSCMOrganisationsStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetUser
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetUser")>]
    let GetUser
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/users/{user}")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetUser ()
      match result with
      | GetUserStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetUserStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetUserStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetUserFavorites
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetUserFavorites")>]
    let GetUserFavorites
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/users/{user}/favorites")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetUserFavorites ()
      match result with
      | GetUserFavoritesStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetUserFavoritesStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetUserFavoritesStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetUsers
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetUsers")>]
    let GetUsers
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/organizations/{organization}/users/")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.GetUsers ()
      match result with
      | GetUsersStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetUsersStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetUsersStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region PostPipelineRun
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("PostPipelineRun")>]
    let PostPipelineRun
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "POST", Route = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.PostPipelineRun ()
      match result with
      | PostPipelineRunStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | PostPipelineRunStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | PostPipelineRunStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region PostPipelineRuns
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("PostPipelineRuns")>]
    let PostPipelineRuns
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "POST", Route = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.PostPipelineRuns ()
      match result with
      | PostPipelineRunsStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | PostPipelineRunsStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | PostPipelineRunsStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region PutPipelineFavorite
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("PutPipelineFavorite")>]
    let PutPipelineFavorite
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "PUT", Route = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite")>]
        req:HttpRequest ) =

      use reader = StreamReader(req.Body)

      let mediaTypes = ["application/json";] // currently unused

      let bind (contentType:string) body  =
        match (contentType.ToLower()) with
        | "application/json" ->
          body |> JsonConvert.DeserializeObject<PutPipelineFavoriteBodyParams>
        | _ -> failwith (sprintf "TODO - ContentType %s not currently supported" contentType)

      let bodyParams = reader.ReadToEnd() |> bind req.ContentType
      let result = BlueOceanApiService.PutPipelineFavorite bodyParams
      match result with
      | PutPipelineFavoriteStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | PutPipelineFavoriteStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | PutPipelineFavoriteStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region PutPipelineRun
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("PutPipelineRun")>]
    let PutPipelineRun
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "PUT", Route = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.PutPipelineRun ()
      match result with
      | PutPipelineRunStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | PutPipelineRunStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | PutPipelineRunStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region Search
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("Search")>]
    let Search
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/search/")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.Search ()
      match result with
      | SearchStatusCode200 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | SearchStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | SearchStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region SearchClasses
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("SearchClasses")>]
    let SearchClasses
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/blue/rest/classes/")>]
        req:HttpRequest ) =

      let result = BlueOceanApiService.SearchClasses ()
      match result with
      | SearchClassesStatusCode200 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | SearchClassesStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | SearchClassesStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

