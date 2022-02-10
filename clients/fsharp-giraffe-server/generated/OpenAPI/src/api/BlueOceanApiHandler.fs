namespace OpenAPI

open System.Collections.Generic
open Giraffe
open Microsoft.AspNetCore.Http
open FSharp.Control.Tasks.V2.ContextInsensitive
open BlueOceanApiHandlerParams
open BlueOceanApiServiceInterface
open BlueOceanApiServiceImplementation
open OpenAPI.Model.BranchImpl
open OpenAPI.Model.FavoriteImpl
open OpenAPI.Model.GithubOrganization
open OpenAPI.Model.GithubScm
open OpenAPI.Model.MultibranchPipeline
open OpenAPI.Model.Organisation
open OpenAPI.Model.Pipeline
open OpenAPI.Model.PipelineActivity
open OpenAPI.Model.PipelineFolderImpl
open OpenAPI.Model.PipelineImpl
open OpenAPI.Model.PipelineRun
open OpenAPI.Model.PipelineRunNode
open OpenAPI.Model.PipelineStepImpl
open OpenAPI.Model.QueueItemImpl
open OpenAPI.Model.UNKNOWN_BASE_TYPE
open OpenAPI.Model.User

module BlueOceanApiHandler =

    /// <summary>
    /// 
    /// </summary>

    //#region DeletePipelineQueueItem
    /// <summary>
    /// 
    /// </summary>

    let DeletePipelineQueueItem (pathParams:DeletePipelineQueueItemPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : DeletePipelineQueueItemArgs
          let result = BlueOceanApiService.DeletePipelineQueueItem ctx serviceArgs
          return! (match result with
                      | DeletePipelineQueueItemStatusCode200 resolved ->
                            setStatusCode 200 >=> text resolved.content
                      | DeletePipelineQueueItemStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | DeletePipelineQueueItemStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetAuthenticatedUser
    /// <summary>
    /// 
    /// </summary>

    let GetAuthenticatedUser (pathParams:GetAuthenticatedUserPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetAuthenticatedUserArgs
          let result = BlueOceanApiService.GetAuthenticatedUser ctx serviceArgs
          return! (match result with
                      | GetAuthenticatedUserStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetAuthenticatedUserStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetAuthenticatedUserStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetClasses
    /// <summary>
    /// 
    /// </summary>

    let GetClasses (pathParams:GetClassesPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetClassesArgs
          let result = BlueOceanApiService.GetClasses ctx serviceArgs
          return! (match result with
                      | GetClassesStatusCode200 resolved ->
                            setStatusCode 200 >=> text resolved.content
                      | GetClassesStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetClassesStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetJsonWebKey
    /// <summary>
    /// 
    /// </summary>

    let GetJsonWebKey (pathParams:GetJsonWebKeyPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetJsonWebKeyArgs
          let result = BlueOceanApiService.GetJsonWebKey ctx serviceArgs
          return! (match result with
                      | GetJsonWebKeyStatusCode200 resolved ->
                            setStatusCode 200 >=> text resolved.content
                      | GetJsonWebKeyStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetJsonWebKeyStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetJsonWebToken
    /// <summary>
    /// 
    /// </summary>

    let GetJsonWebToken  : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let queryParams = ctx.TryBindQueryString<GetJsonWebTokenQueryParams>()
          let serviceArgs = {  queryParams=queryParams;    } : GetJsonWebTokenArgs
          let result = BlueOceanApiService.GetJsonWebToken ctx serviceArgs
          return! (match result with
                      | GetJsonWebTokenStatusCode200 resolved ->
                            setStatusCode 200 >=> text resolved.content
                      | GetJsonWebTokenStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetJsonWebTokenStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetOrganisation
    /// <summary>
    /// 
    /// </summary>

    let GetOrganisation (pathParams:GetOrganisationPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetOrganisationArgs
          let result = BlueOceanApiService.GetOrganisation ctx serviceArgs
          return! (match result with
                      | GetOrganisationStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetOrganisationStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetOrganisationStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
                      | GetOrganisationStatusCode404 resolved ->
                            setStatusCode 404 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetOrganisations
    /// <summary>
    /// 
    /// </summary>

    let GetOrganisations  : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let result = BlueOceanApiService.GetOrganisations ctx 
          return! (match result with
                      | GetOrganisationsStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetOrganisationsStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetOrganisationsStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetPipeline
    /// <summary>
    /// 
    /// </summary>

    let GetPipeline (pathParams:GetPipelinePathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetPipelineArgs
          let result = BlueOceanApiService.GetPipeline ctx serviceArgs
          return! (match result with
                      | GetPipelineStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetPipelineStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetPipelineStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
                      | GetPipelineStatusCode404 resolved ->
                            setStatusCode 404 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetPipelineActivities
    /// <summary>
    /// 
    /// </summary>

    let GetPipelineActivities (pathParams:GetPipelineActivitiesPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetPipelineActivitiesArgs
          let result = BlueOceanApiService.GetPipelineActivities ctx serviceArgs
          return! (match result with
                      | GetPipelineActivitiesStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetPipelineActivitiesStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetPipelineActivitiesStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetPipelineBranch
    /// <summary>
    /// 
    /// </summary>

    let GetPipelineBranch (pathParams:GetPipelineBranchPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetPipelineBranchArgs
          let result = BlueOceanApiService.GetPipelineBranch ctx serviceArgs
          return! (match result with
                      | GetPipelineBranchStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetPipelineBranchStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetPipelineBranchStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetPipelineBranchRun
    /// <summary>
    /// 
    /// </summary>

    let GetPipelineBranchRun (pathParams:GetPipelineBranchRunPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetPipelineBranchRunArgs
          let result = BlueOceanApiService.GetPipelineBranchRun ctx serviceArgs
          return! (match result with
                      | GetPipelineBranchRunStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetPipelineBranchRunStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetPipelineBranchRunStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetPipelineBranches
    /// <summary>
    /// 
    /// </summary>

    let GetPipelineBranches (pathParams:GetPipelineBranchesPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetPipelineBranchesArgs
          let result = BlueOceanApiService.GetPipelineBranches ctx serviceArgs
          return! (match result with
                      | GetPipelineBranchesStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetPipelineBranchesStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetPipelineBranchesStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetPipelineFolder
    /// <summary>
    /// 
    /// </summary>

    let GetPipelineFolder (pathParams:GetPipelineFolderPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetPipelineFolderArgs
          let result = BlueOceanApiService.GetPipelineFolder ctx serviceArgs
          return! (match result with
                      | GetPipelineFolderStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetPipelineFolderStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetPipelineFolderStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetPipelineFolderPipeline
    /// <summary>
    /// 
    /// </summary>

    let GetPipelineFolderPipeline (pathParams:GetPipelineFolderPipelinePathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetPipelineFolderPipelineArgs
          let result = BlueOceanApiService.GetPipelineFolderPipeline ctx serviceArgs
          return! (match result with
                      | GetPipelineFolderPipelineStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetPipelineFolderPipelineStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetPipelineFolderPipelineStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetPipelineQueue
    /// <summary>
    /// 
    /// </summary>

    let GetPipelineQueue (pathParams:GetPipelineQueuePathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetPipelineQueueArgs
          let result = BlueOceanApiService.GetPipelineQueue ctx serviceArgs
          return! (match result with
                      | GetPipelineQueueStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetPipelineQueueStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetPipelineQueueStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetPipelineRun
    /// <summary>
    /// 
    /// </summary>

    let GetPipelineRun (pathParams:GetPipelineRunPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetPipelineRunArgs
          let result = BlueOceanApiService.GetPipelineRun ctx serviceArgs
          return! (match result with
                      | GetPipelineRunStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetPipelineRunStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetPipelineRunStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetPipelineRunLog
    /// <summary>
    /// 
    /// </summary>

    let GetPipelineRunLog (pathParams:GetPipelineRunLogPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let queryParams = ctx.TryBindQueryString<GetPipelineRunLogQueryParams>()
          let serviceArgs = {  queryParams=queryParams;  pathParams=pathParams;  } : GetPipelineRunLogArgs
          let result = BlueOceanApiService.GetPipelineRunLog ctx serviceArgs
          return! (match result with
                      | GetPipelineRunLogStatusCode200 resolved ->
                            setStatusCode 200 >=> text resolved.content
                      | GetPipelineRunLogStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetPipelineRunLogStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetPipelineRunNode
    /// <summary>
    /// 
    /// </summary>

    let GetPipelineRunNode (pathParams:GetPipelineRunNodePathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetPipelineRunNodeArgs
          let result = BlueOceanApiService.GetPipelineRunNode ctx serviceArgs
          return! (match result with
                      | GetPipelineRunNodeStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetPipelineRunNodeStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetPipelineRunNodeStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetPipelineRunNodeStep
    /// <summary>
    /// 
    /// </summary>

    let GetPipelineRunNodeStep (pathParams:GetPipelineRunNodeStepPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetPipelineRunNodeStepArgs
          let result = BlueOceanApiService.GetPipelineRunNodeStep ctx serviceArgs
          return! (match result with
                      | GetPipelineRunNodeStepStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetPipelineRunNodeStepStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetPipelineRunNodeStepStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetPipelineRunNodeStepLog
    /// <summary>
    /// 
    /// </summary>

    let GetPipelineRunNodeStepLog (pathParams:GetPipelineRunNodeStepLogPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetPipelineRunNodeStepLogArgs
          let result = BlueOceanApiService.GetPipelineRunNodeStepLog ctx serviceArgs
          return! (match result with
                      | GetPipelineRunNodeStepLogStatusCode200 resolved ->
                            setStatusCode 200 >=> text resolved.content
                      | GetPipelineRunNodeStepLogStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetPipelineRunNodeStepLogStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetPipelineRunNodeSteps
    /// <summary>
    /// 
    /// </summary>

    let GetPipelineRunNodeSteps (pathParams:GetPipelineRunNodeStepsPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetPipelineRunNodeStepsArgs
          let result = BlueOceanApiService.GetPipelineRunNodeSteps ctx serviceArgs
          return! (match result with
                      | GetPipelineRunNodeStepsStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetPipelineRunNodeStepsStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetPipelineRunNodeStepsStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetPipelineRunNodes
    /// <summary>
    /// 
    /// </summary>

    let GetPipelineRunNodes (pathParams:GetPipelineRunNodesPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetPipelineRunNodesArgs
          let result = BlueOceanApiService.GetPipelineRunNodes ctx serviceArgs
          return! (match result with
                      | GetPipelineRunNodesStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetPipelineRunNodesStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetPipelineRunNodesStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetPipelineRuns
    /// <summary>
    /// 
    /// </summary>

    let GetPipelineRuns (pathParams:GetPipelineRunsPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetPipelineRunsArgs
          let result = BlueOceanApiService.GetPipelineRuns ctx serviceArgs
          return! (match result with
                      | GetPipelineRunsStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetPipelineRunsStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetPipelineRunsStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetPipelines
    /// <summary>
    /// 
    /// </summary>

    let GetPipelines (pathParams:GetPipelinesPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetPipelinesArgs
          let result = BlueOceanApiService.GetPipelines ctx serviceArgs
          return! (match result with
                      | GetPipelinesStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetPipelinesStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetPipelinesStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetSCM
    /// <summary>
    /// 
    /// </summary>

    let GetSCM (pathParams:GetSCMPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetSCMArgs
          let result = BlueOceanApiService.GetSCM ctx serviceArgs
          return! (match result with
                      | GetSCMStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetSCMStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetSCMStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetSCMOrganisationRepositories
    /// <summary>
    /// 
    /// </summary>

    let GetSCMOrganisationRepositories (pathParams:GetSCMOrganisationRepositoriesPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let queryParams = ctx.TryBindQueryString<GetSCMOrganisationRepositoriesQueryParams>()
          let serviceArgs = {  queryParams=queryParams;  pathParams=pathParams;  } : GetSCMOrganisationRepositoriesArgs
          let result = BlueOceanApiService.GetSCMOrganisationRepositories ctx serviceArgs
          return! (match result with
                      | GetSCMOrganisationRepositoriesStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetSCMOrganisationRepositoriesStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetSCMOrganisationRepositoriesStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetSCMOrganisationRepository
    /// <summary>
    /// 
    /// </summary>

    let GetSCMOrganisationRepository (pathParams:GetSCMOrganisationRepositoryPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let queryParams = ctx.TryBindQueryString<GetSCMOrganisationRepositoryQueryParams>()
          let serviceArgs = {  queryParams=queryParams;  pathParams=pathParams;  } : GetSCMOrganisationRepositoryArgs
          let result = BlueOceanApiService.GetSCMOrganisationRepository ctx serviceArgs
          return! (match result with
                      | GetSCMOrganisationRepositoryStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetSCMOrganisationRepositoryStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetSCMOrganisationRepositoryStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetSCMOrganisations
    /// <summary>
    /// 
    /// </summary>

    let GetSCMOrganisations (pathParams:GetSCMOrganisationsPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let queryParams = ctx.TryBindQueryString<GetSCMOrganisationsQueryParams>()
          let serviceArgs = {  queryParams=queryParams;  pathParams=pathParams;  } : GetSCMOrganisationsArgs
          let result = BlueOceanApiService.GetSCMOrganisations ctx serviceArgs
          return! (match result with
                      | GetSCMOrganisationsStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetSCMOrganisationsStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetSCMOrganisationsStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetUser
    /// <summary>
    /// 
    /// </summary>

    let GetUser (pathParams:GetUserPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetUserArgs
          let result = BlueOceanApiService.GetUser ctx serviceArgs
          return! (match result with
                      | GetUserStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetUserStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetUserStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetUserFavorites
    /// <summary>
    /// 
    /// </summary>

    let GetUserFavorites (pathParams:GetUserFavoritesPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetUserFavoritesArgs
          let result = BlueOceanApiService.GetUserFavorites ctx serviceArgs
          return! (match result with
                      | GetUserFavoritesStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetUserFavoritesStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetUserFavoritesStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetUsers
    /// <summary>
    /// 
    /// </summary>

    let GetUsers (pathParams:GetUsersPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetUsersArgs
          let result = BlueOceanApiService.GetUsers ctx serviceArgs
          return! (match result with
                      | GetUsersStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetUsersStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetUsersStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region PostPipelineRun
    /// <summary>
    /// 
    /// </summary>

    let PostPipelineRun (pathParams:PostPipelineRunPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : PostPipelineRunArgs
          let result = BlueOceanApiService.PostPipelineRun ctx serviceArgs
          return! (match result with
                      | PostPipelineRunStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | PostPipelineRunStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | PostPipelineRunStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region PostPipelineRuns
    /// <summary>
    /// 
    /// </summary>

    let PostPipelineRuns (pathParams:PostPipelineRunsPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : PostPipelineRunsArgs
          let result = BlueOceanApiService.PostPipelineRuns ctx serviceArgs
          return! (match result with
                      | PostPipelineRunsStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | PostPipelineRunsStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | PostPipelineRunsStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region PutPipelineFavorite
    /// <summary>
    /// 
    /// </summary>

    let PutPipelineFavorite (pathParams:PutPipelineFavoritePathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let! bodyParams =
            ctx.BindJsonAsync<PutPipelineFavoriteBodyParams>()
          let serviceArgs = {    pathParams=pathParams; bodyParams=bodyParams } : PutPipelineFavoriteArgs
          let result = BlueOceanApiService.PutPipelineFavorite ctx serviceArgs
          return! (match result with
                      | PutPipelineFavoriteStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | PutPipelineFavoriteStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | PutPipelineFavoriteStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region PutPipelineRun
    /// <summary>
    /// 
    /// </summary>

    let PutPipelineRun (pathParams:PutPipelineRunPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let queryParams = ctx.TryBindQueryString<PutPipelineRunQueryParams>()
          let serviceArgs = {  queryParams=queryParams;  pathParams=pathParams;  } : PutPipelineRunArgs
          let result = BlueOceanApiService.PutPipelineRun ctx serviceArgs
          return! (match result with
                      | PutPipelineRunStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | PutPipelineRunStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | PutPipelineRunStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region Search
    /// <summary>
    /// 
    /// </summary>

    let Search  : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let queryParams = ctx.TryBindQueryString<SearchQueryParams>()
          let serviceArgs = {  queryParams=queryParams;    } : SearchArgs
          let result = BlueOceanApiService.Search ctx serviceArgs
          return! (match result with
                      | SearchStatusCode200 resolved ->
                            setStatusCode 200 >=> text resolved.content
                      | SearchStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | SearchStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region SearchClasses
    /// <summary>
    /// 
    /// </summary>

    let SearchClasses  : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let queryParams = ctx.TryBindQueryString<SearchClassesQueryParams>()
          let serviceArgs = {  queryParams=queryParams;    } : SearchClassesArgs
          let result = BlueOceanApiService.SearchClasses ctx serviceArgs
          return! (match result with
                      | SearchClassesStatusCode200 resolved ->
                            setStatusCode 200 >=> text resolved.content
                      | SearchClassesStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | SearchClassesStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

