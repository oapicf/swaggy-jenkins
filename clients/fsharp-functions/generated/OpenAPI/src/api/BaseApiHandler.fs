namespace OpenAPI

open BaseApiHandlerParams
open BaseApiServiceImplementation
open Microsoft.AspNetCore.Mvc
open Microsoft.AspNetCore.Http
open Newtonsoft.Json
open Microsoft.Azure.WebJobs
open System.IO

module BaseApiHandlers =

    /// <summary>
    /// 
    /// </summary>

    //#region GetCrumb
    /// <summary>
    /// 
    /// </summary>
   [<FunctionName("GetCrumb")>]
    let GetCrumb
        ([<HttpTrigger(Extensions.Http.AuthorizationLevel.Anonymous, "GET", Route = "/crumbIssuer/api/json")>]
        req:HttpRequest ) =

      let result = BaseApiService.GetCrumb ()
      match result with
      | GetCrumbStatusCode200 resolved ->
          let content = JsonConvert.SerializeObject resolved.content
          let responseContentType = "application/json"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(200))
      | GetCrumbStatusCode401 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(401))
      | GetCrumbStatusCode403 resolved ->
          let content = resolved.content
          let responseContentType = "text/plain"
          ContentResult(Content = content, ContentType = responseContentType, StatusCode = System.Nullable(403))

