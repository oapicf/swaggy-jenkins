namespace OpenAPI

open RemoteAccessApiHandlerParams
open RemoteAccessApiServiceImplementation
open Microsoft.AspNetCore.Mvc
open Microsoft.AspNetCore.Http
open Newtonsoft.Json
open Microsoft.Azure.WebJobs
open System.IO

module RemoteAccessApiHandlers =

    /// <summary>
    /// 
    /// </summary>

    //#region GetComputer
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetComputer")>]
    let GetComputer
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/computer/api/json")>]
        req:HttpRequest ) =

      let result = RemoteAccessApiService.GetComputer ()
      match result with
      | GetComputerStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetComputerStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetComputerStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetJenkins
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetJenkins")>]
    let GetJenkins
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/api/json")>]
        req:HttpRequest ) =

      let result = RemoteAccessApiService.GetJenkins ()
      match result with
      | GetJenkinsStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetJenkinsStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetJenkinsStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetJob
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetJob")>]
    let GetJob
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/job/{name}/api/json")>]
        req:HttpRequest ) =

      let result = RemoteAccessApiService.GetJob ()
      match result with
      | GetJobStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetJobStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetJobStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))
      | GetJobStatusCode404 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(404))

    //#region GetJobConfig
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetJobConfig")>]
    let GetJobConfig
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/job/{name}/config.xml")>]
        req:HttpRequest ) =

      let result = RemoteAccessApiService.GetJobConfig ()
      match result with
      | GetJobConfigStatusCode200 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetJobConfigStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetJobConfigStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))
      | GetJobConfigStatusCode404 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(404))

    //#region GetJobLastBuild
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetJobLastBuild")>]
    let GetJobLastBuild
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/job/{name}/lastBuild/api/json")>]
        req:HttpRequest ) =

      let result = RemoteAccessApiService.GetJobLastBuild ()
      match result with
      | GetJobLastBuildStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetJobLastBuildStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetJobLastBuildStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))
      | GetJobLastBuildStatusCode404 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(404))

    //#region GetJobProgressiveText
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetJobProgressiveText")>]
    let GetJobProgressiveText
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/job/{name}/{number}/logText/progressiveText")>]
        req:HttpRequest ) =

      let result = RemoteAccessApiService.GetJobProgressiveText ()
      match result with
      | GetJobProgressiveTextStatusCode200 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetJobProgressiveTextStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetJobProgressiveTextStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))
      | GetJobProgressiveTextStatusCode404 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(404))

    //#region GetQueue
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetQueue")>]
    let GetQueue
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/queue/api/json")>]
        req:HttpRequest ) =

      let result = RemoteAccessApiService.GetQueue ()
      match result with
      | GetQueueStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetQueueStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetQueueStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetQueueItem
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetQueueItem")>]
    let GetQueueItem
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/queue/item/{number}/api/json")>]
        req:HttpRequest ) =

      let result = RemoteAccessApiService.GetQueueItem ()
      match result with
      | GetQueueItemStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetQueueItemStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetQueueItemStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region GetView
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetView")>]
    let GetView
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/view/{name}/api/json")>]
        req:HttpRequest ) =

      let result = RemoteAccessApiService.GetView ()
      match result with
      | GetViewStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetViewStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetViewStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))
      | GetViewStatusCode404 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(404))

    //#region GetViewConfig
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetViewConfig")>]
    let GetViewConfig
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/view/{name}/config.xml")>]
        req:HttpRequest ) =

      let result = RemoteAccessApiService.GetViewConfig ()
      match result with
      | GetViewConfigStatusCode200 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetViewConfigStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetViewConfigStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))
      | GetViewConfigStatusCode404 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(404))

    //#region HeadJenkins
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("HeadJenkins")>]
    let HeadJenkins
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "HEAD", Route = "/api/json")>]
        req:HttpRequest ) =

      let result = RemoteAccessApiService.HeadJenkins ()
      match result with
      | HeadJenkinsStatusCode200 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | HeadJenkinsStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | HeadJenkinsStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region PostCreateItem
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("PostCreateItem")>]
    let PostCreateItem
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "POST", Route = "/createItem")>]
        req:HttpRequest ) =

      use reader = StreamReader(req.Body)

      let mediaTypes = ["application/json";] // currently unused

      let bind (contentType:string) body  =
        match (contentType.ToLower()) with
        | "application/json" ->
          body |> JsonConvert.DeserializeObject<PostCreateItemBodyParams>
        | _ -> failwith (sprintf "TODO - ContentType %s not currently supported" contentType)

      let bodyParams = reader.ReadToEnd() |> bind req.ContentType
      let result = RemoteAccessApiService.PostCreateItem bodyParams
      match result with
      | PostCreateItemStatusCode200 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | PostCreateItemStatusCode400 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(400))
      | PostCreateItemStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | PostCreateItemStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region PostCreateView
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("PostCreateView")>]
    let PostCreateView
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "POST", Route = "/createView")>]
        req:HttpRequest ) =

      use reader = StreamReader(req.Body)

      let mediaTypes = ["application/json";] // currently unused

      let bind (contentType:string) body  =
        match (contentType.ToLower()) with
        | "application/json" ->
          body |> JsonConvert.DeserializeObject<PostCreateViewBodyParams>
        | _ -> failwith (sprintf "TODO - ContentType %s not currently supported" contentType)

      let bodyParams = reader.ReadToEnd() |> bind req.ContentType
      let result = RemoteAccessApiService.PostCreateView bodyParams
      match result with
      | PostCreateViewStatusCode200 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | PostCreateViewStatusCode400 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(400))
      | PostCreateViewStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | PostCreateViewStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

    //#region PostJobBuild
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("PostJobBuild")>]
    let PostJobBuild
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "POST", Route = "/job/{name}/build")>]
        req:HttpRequest ) =

      let result = RemoteAccessApiService.PostJobBuild ()
      match result with
      | PostJobBuildStatusCode200 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | PostJobBuildStatusCode201 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(201))
      | PostJobBuildStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | PostJobBuildStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))
      | PostJobBuildStatusCode404 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(404))

    //#region PostJobConfig
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("PostJobConfig")>]
    let PostJobConfig
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "POST", Route = "/job/{name}/config.xml")>]
        req:HttpRequest ) =

      use reader = StreamReader(req.Body)

      let mediaTypes = ["application/json";] // currently unused

      let bind (contentType:string) body  =
        match (contentType.ToLower()) with
        | "application/json" ->
          body |> JsonConvert.DeserializeObject<PostJobConfigBodyParams>
        | _ -> failwith (sprintf "TODO - ContentType %s not currently supported" contentType)

      let bodyParams = reader.ReadToEnd() |> bind req.ContentType
      let result = RemoteAccessApiService.PostJobConfig bodyParams
      match result with
      | PostJobConfigStatusCode200 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | PostJobConfigStatusCode400 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(400))
      | PostJobConfigStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | PostJobConfigStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))
      | PostJobConfigStatusCode404 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(404))

    //#region PostJobDelete
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("PostJobDelete")>]
    let PostJobDelete
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "POST", Route = "/job/{name}/doDelete")>]
        req:HttpRequest ) =

      let result = RemoteAccessApiService.PostJobDelete ()
      match result with
      | PostJobDeleteStatusCode200 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | PostJobDeleteStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | PostJobDeleteStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))
      | PostJobDeleteStatusCode404 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(404))

    //#region PostJobDisable
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("PostJobDisable")>]
    let PostJobDisable
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "POST", Route = "/job/{name}/disable")>]
        req:HttpRequest ) =

      let result = RemoteAccessApiService.PostJobDisable ()
      match result with
      | PostJobDisableStatusCode200 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | PostJobDisableStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | PostJobDisableStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))
      | PostJobDisableStatusCode404 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(404))

    //#region PostJobEnable
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("PostJobEnable")>]
    let PostJobEnable
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "POST", Route = "/job/{name}/enable")>]
        req:HttpRequest ) =

      let result = RemoteAccessApiService.PostJobEnable ()
      match result with
      | PostJobEnableStatusCode200 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | PostJobEnableStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | PostJobEnableStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))
      | PostJobEnableStatusCode404 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(404))

    //#region PostJobLastBuildStop
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("PostJobLastBuildStop")>]
    let PostJobLastBuildStop
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "POST", Route = "/job/{name}/lastBuild/stop")>]
        req:HttpRequest ) =

      let result = RemoteAccessApiService.PostJobLastBuildStop ()
      match result with
      | PostJobLastBuildStopStatusCode200 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | PostJobLastBuildStopStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | PostJobLastBuildStopStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))
      | PostJobLastBuildStopStatusCode404 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(404))

    //#region PostViewConfig
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("PostViewConfig")>]
    let PostViewConfig
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "POST", Route = "/view/{name}/config.xml")>]
        req:HttpRequest ) =

      use reader = StreamReader(req.Body)

      let mediaTypes = ["application/json";] // currently unused

      let bind (contentType:string) body  =
        match (contentType.ToLower()) with
        | "application/json" ->
          body |> JsonConvert.DeserializeObject<PostViewConfigBodyParams>
        | _ -> failwith (sprintf "TODO - ContentType %s not currently supported" contentType)

      let bodyParams = reader.ReadToEnd() |> bind req.ContentType
      let result = RemoteAccessApiService.PostViewConfig bodyParams
      match result with
      | PostViewConfigStatusCode200 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | PostViewConfigStatusCode400 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(400))
      | PostViewConfigStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | PostViewConfigStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))
      | PostViewConfigStatusCode404 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(404))

