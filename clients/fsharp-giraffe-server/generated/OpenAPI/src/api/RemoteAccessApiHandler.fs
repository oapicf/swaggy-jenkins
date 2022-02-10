namespace OpenAPI

open System.Collections.Generic
open Giraffe
open Microsoft.AspNetCore.Http
open FSharp.Control.Tasks.V2.ContextInsensitive
open RemoteAccessApiHandlerParams
open RemoteAccessApiServiceInterface
open RemoteAccessApiServiceImplementation
open OpenAPI.Model.ComputerSet
open OpenAPI.Model.FreeStyleBuild
open OpenAPI.Model.FreeStyleProject
open OpenAPI.Model.Hudson
open OpenAPI.Model.ListView
open OpenAPI.Model.Queue

module RemoteAccessApiHandler =

    /// <summary>
    /// 
    /// </summary>

    //#region GetComputer
    /// <summary>
    /// 
    /// </summary>

    let GetComputer  : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let queryParams = ctx.TryBindQueryString<GetComputerQueryParams>()
          let serviceArgs = {  queryParams=queryParams;    } : GetComputerArgs
          let result = RemoteAccessApiService.GetComputer ctx serviceArgs
          return! (match result with
                      | GetComputerStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetComputerStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetComputerStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetJenkins
    /// <summary>
    /// 
    /// </summary>

    let GetJenkins  : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let result = RemoteAccessApiService.GetJenkins ctx 
          return! (match result with
                      | GetJenkinsStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetJenkinsStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetJenkinsStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetJob
    /// <summary>
    /// 
    /// </summary>

    let GetJob (pathParams:GetJobPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetJobArgs
          let result = RemoteAccessApiService.GetJob ctx serviceArgs
          return! (match result with
                      | GetJobStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetJobStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetJobStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
                      | GetJobStatusCode404 resolved ->
                            setStatusCode 404 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetJobConfig
    /// <summary>
    /// 
    /// </summary>

    let GetJobConfig (pathParams:GetJobConfigPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetJobConfigArgs
          let result = RemoteAccessApiService.GetJobConfig ctx serviceArgs
          return! (match result with
                      | GetJobConfigStatusCode200 resolved ->
                            setStatusCode 200 >=> text resolved.content
                      | GetJobConfigStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetJobConfigStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
                      | GetJobConfigStatusCode404 resolved ->
                            setStatusCode 404 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetJobLastBuild
    /// <summary>
    /// 
    /// </summary>

    let GetJobLastBuild (pathParams:GetJobLastBuildPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetJobLastBuildArgs
          let result = RemoteAccessApiService.GetJobLastBuild ctx serviceArgs
          return! (match result with
                      | GetJobLastBuildStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetJobLastBuildStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetJobLastBuildStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
                      | GetJobLastBuildStatusCode404 resolved ->
                            setStatusCode 404 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetJobProgressiveText
    /// <summary>
    /// 
    /// </summary>

    let GetJobProgressiveText (pathParams:GetJobProgressiveTextPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let queryParams = ctx.TryBindQueryString<GetJobProgressiveTextQueryParams>()
          let serviceArgs = {  queryParams=queryParams;  pathParams=pathParams;  } : GetJobProgressiveTextArgs
          let result = RemoteAccessApiService.GetJobProgressiveText ctx serviceArgs
          return! (match result with
                      | GetJobProgressiveTextStatusCode200 resolved ->
                            setStatusCode 200 >=> text resolved.content
                      | GetJobProgressiveTextStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetJobProgressiveTextStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
                      | GetJobProgressiveTextStatusCode404 resolved ->
                            setStatusCode 404 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetQueue
    /// <summary>
    /// 
    /// </summary>

    let GetQueue  : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let result = RemoteAccessApiService.GetQueue ctx 
          return! (match result with
                      | GetQueueStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetQueueStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetQueueStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetQueueItem
    /// <summary>
    /// 
    /// </summary>

    let GetQueueItem (pathParams:GetQueueItemPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetQueueItemArgs
          let result = RemoteAccessApiService.GetQueueItem ctx serviceArgs
          return! (match result with
                      | GetQueueItemStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetQueueItemStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetQueueItemStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetView
    /// <summary>
    /// 
    /// </summary>

    let GetView (pathParams:GetViewPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetViewArgs
          let result = RemoteAccessApiService.GetView ctx serviceArgs
          return! (match result with
                      | GetViewStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetViewStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetViewStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
                      | GetViewStatusCode404 resolved ->
                            setStatusCode 404 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region GetViewConfig
    /// <summary>
    /// 
    /// </summary>

    let GetViewConfig (pathParams:GetViewConfigPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let serviceArgs = {    pathParams=pathParams;  } : GetViewConfigArgs
          let result = RemoteAccessApiService.GetViewConfig ctx serviceArgs
          return! (match result with
                      | GetViewConfigStatusCode200 resolved ->
                            setStatusCode 200 >=> text resolved.content
                      | GetViewConfigStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetViewConfigStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
                      | GetViewConfigStatusCode404 resolved ->
                            setStatusCode 404 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region HeadJenkins
    /// <summary>
    /// 
    /// </summary>

    let HeadJenkins  : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let result = RemoteAccessApiService.HeadJenkins ctx 
          return! (match result with
                      | HeadJenkinsStatusCode200 resolved ->
                            setStatusCode 200 >=> text resolved.content
                      | HeadJenkinsStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | HeadJenkinsStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region PostCreateItem
    /// <summary>
    /// 
    /// </summary>

    let PostCreateItem  : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let queryParams = ctx.TryBindQueryString<PostCreateItemQueryParams>()
          let! bodyParams =
            ctx.BindJsonAsync<PostCreateItemBodyParams>()
          let headerParams = {
              PostCreateItemHeaderParams.jenkinsCrumb=ctx.TryGetRequestHeader "jenkinsCrumb";
              PostCreateItemHeaderParams.contentType=ctx.TryGetRequestHeader "contentType";
          }
          let serviceArgs = { headerParams=headerParams; queryParams=queryParams;   bodyParams=bodyParams } : PostCreateItemArgs
          let result = RemoteAccessApiService.PostCreateItem ctx serviceArgs
          return! (match result with
                      | PostCreateItemStatusCode200 resolved ->
                            setStatusCode 200 >=> text resolved.content
                      | PostCreateItemStatusCode400 resolved ->
                            setStatusCode 400 >=> text resolved.content
                      | PostCreateItemStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | PostCreateItemStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region PostCreateView
    /// <summary>
    /// 
    /// </summary>

    let PostCreateView  : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let queryParams = ctx.TryBindQueryString<PostCreateViewQueryParams>()
          let! bodyParams =
            ctx.BindJsonAsync<PostCreateViewBodyParams>()
          let headerParams = {
              PostCreateViewHeaderParams.jenkinsCrumb=ctx.TryGetRequestHeader "jenkinsCrumb";
              PostCreateViewHeaderParams.contentType=ctx.TryGetRequestHeader "contentType";
          }
          let serviceArgs = { headerParams=headerParams; queryParams=queryParams;   bodyParams=bodyParams } : PostCreateViewArgs
          let result = RemoteAccessApiService.PostCreateView ctx serviceArgs
          return! (match result with
                      | PostCreateViewStatusCode200 resolved ->
                            setStatusCode 200 >=> text resolved.content
                      | PostCreateViewStatusCode400 resolved ->
                            setStatusCode 400 >=> text resolved.content
                      | PostCreateViewStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | PostCreateViewStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region PostJobBuild
    /// <summary>
    /// 
    /// </summary>

    let PostJobBuild (pathParams:PostJobBuildPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let queryParams = ctx.TryBindQueryString<PostJobBuildQueryParams>()
          let headerParams = {
              PostJobBuildHeaderParams.jenkinsCrumb=ctx.TryGetRequestHeader "jenkinsCrumb";
          }
          let serviceArgs = { headerParams=headerParams; queryParams=queryParams;  pathParams=pathParams;  } : PostJobBuildArgs
          let result = RemoteAccessApiService.PostJobBuild ctx serviceArgs
          return! (match result with
                      | PostJobBuildStatusCode200 resolved ->
                            setStatusCode 200 >=> text resolved.content
                      | PostJobBuildStatusCode201 resolved ->
                            setStatusCode 201 >=> text resolved.content
                      | PostJobBuildStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | PostJobBuildStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
                      | PostJobBuildStatusCode404 resolved ->
                            setStatusCode 404 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region PostJobConfig
    /// <summary>
    /// 
    /// </summary>

    let PostJobConfig (pathParams:PostJobConfigPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let! bodyParams =
            ctx.BindJsonAsync<PostJobConfigBodyParams>()
          let headerParams = {
              PostJobConfigHeaderParams.jenkinsCrumb=ctx.TryGetRequestHeader "jenkinsCrumb";
          }
          let serviceArgs = { headerParams=headerParams;   pathParams=pathParams; bodyParams=bodyParams } : PostJobConfigArgs
          let result = RemoteAccessApiService.PostJobConfig ctx serviceArgs
          return! (match result with
                      | PostJobConfigStatusCode200 resolved ->
                            setStatusCode 200 >=> text resolved.content
                      | PostJobConfigStatusCode400 resolved ->
                            setStatusCode 400 >=> text resolved.content
                      | PostJobConfigStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | PostJobConfigStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
                      | PostJobConfigStatusCode404 resolved ->
                            setStatusCode 404 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region PostJobDelete
    /// <summary>
    /// 
    /// </summary>

    let PostJobDelete (pathParams:PostJobDeletePathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let headerParams = {
              PostJobDeleteHeaderParams.jenkinsCrumb=ctx.TryGetRequestHeader "jenkinsCrumb";
          }
          let serviceArgs = { headerParams=headerParams;   pathParams=pathParams;  } : PostJobDeleteArgs
          let result = RemoteAccessApiService.PostJobDelete ctx serviceArgs
          return! (match result with
                      | PostJobDeleteStatusCode200 resolved ->
                            setStatusCode 200 >=> text resolved.content
                      | PostJobDeleteStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | PostJobDeleteStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
                      | PostJobDeleteStatusCode404 resolved ->
                            setStatusCode 404 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region PostJobDisable
    /// <summary>
    /// 
    /// </summary>

    let PostJobDisable (pathParams:PostJobDisablePathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let headerParams = {
              PostJobDisableHeaderParams.jenkinsCrumb=ctx.TryGetRequestHeader "jenkinsCrumb";
          }
          let serviceArgs = { headerParams=headerParams;   pathParams=pathParams;  } : PostJobDisableArgs
          let result = RemoteAccessApiService.PostJobDisable ctx serviceArgs
          return! (match result with
                      | PostJobDisableStatusCode200 resolved ->
                            setStatusCode 200 >=> text resolved.content
                      | PostJobDisableStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | PostJobDisableStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
                      | PostJobDisableStatusCode404 resolved ->
                            setStatusCode 404 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region PostJobEnable
    /// <summary>
    /// 
    /// </summary>

    let PostJobEnable (pathParams:PostJobEnablePathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let headerParams = {
              PostJobEnableHeaderParams.jenkinsCrumb=ctx.TryGetRequestHeader "jenkinsCrumb";
          }
          let serviceArgs = { headerParams=headerParams;   pathParams=pathParams;  } : PostJobEnableArgs
          let result = RemoteAccessApiService.PostJobEnable ctx serviceArgs
          return! (match result with
                      | PostJobEnableStatusCode200 resolved ->
                            setStatusCode 200 >=> text resolved.content
                      | PostJobEnableStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | PostJobEnableStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
                      | PostJobEnableStatusCode404 resolved ->
                            setStatusCode 404 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region PostJobLastBuildStop
    /// <summary>
    /// 
    /// </summary>

    let PostJobLastBuildStop (pathParams:PostJobLastBuildStopPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let headerParams = {
              PostJobLastBuildStopHeaderParams.jenkinsCrumb=ctx.TryGetRequestHeader "jenkinsCrumb";
          }
          let serviceArgs = { headerParams=headerParams;   pathParams=pathParams;  } : PostJobLastBuildStopArgs
          let result = RemoteAccessApiService.PostJobLastBuildStop ctx serviceArgs
          return! (match result with
                      | PostJobLastBuildStopStatusCode200 resolved ->
                            setStatusCode 200 >=> text resolved.content
                      | PostJobLastBuildStopStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | PostJobLastBuildStopStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
                      | PostJobLastBuildStopStatusCode404 resolved ->
                            setStatusCode 404 >=> text resolved.content
          ) next ctx
        }
    //#endregion

    //#region PostViewConfig
    /// <summary>
    /// 
    /// </summary>

    let PostViewConfig (pathParams:PostViewConfigPathParams) : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let! bodyParams =
            ctx.BindJsonAsync<PostViewConfigBodyParams>()
          let headerParams = {
              PostViewConfigHeaderParams.jenkinsCrumb=ctx.TryGetRequestHeader "jenkinsCrumb";
          }
          let serviceArgs = { headerParams=headerParams;   pathParams=pathParams; bodyParams=bodyParams } : PostViewConfigArgs
          let result = RemoteAccessApiService.PostViewConfig ctx serviceArgs
          return! (match result with
                      | PostViewConfigStatusCode200 resolved ->
                            setStatusCode 200 >=> text resolved.content
                      | PostViewConfigStatusCode400 resolved ->
                            setStatusCode 400 >=> text resolved.content
                      | PostViewConfigStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | PostViewConfigStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
                      | PostViewConfigStatusCode404 resolved ->
                            setStatusCode 404 >=> text resolved.content
          ) next ctx
        }
    //#endregion

