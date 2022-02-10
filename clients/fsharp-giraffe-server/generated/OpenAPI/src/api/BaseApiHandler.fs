namespace OpenAPI

open System.Collections.Generic
open Giraffe
open Microsoft.AspNetCore.Http
open FSharp.Control.Tasks.V2.ContextInsensitive
open BaseApiHandlerParams
open BaseApiServiceInterface
open BaseApiServiceImplementation
open OpenAPI.Model.DefaultCrumbIssuer

module BaseApiHandler =

    /// <summary>
    /// 
    /// </summary>

    //#region GetCrumb
    /// <summary>
    /// 
    /// </summary>

    let GetCrumb  : HttpHandler =
      fun (next : HttpFunc) (ctx : HttpContext) ->
        task {
          let result = BaseApiService.GetCrumb ctx 
          return! (match result with
                      | GetCrumbStatusCode200 resolved ->
                            setStatusCode 200 >=> json resolved.content
                      | GetCrumbStatusCode401 resolved ->
                            setStatusCode 401 >=> text resolved.content
                      | GetCrumbStatusCode403 resolved ->
                            setStatusCode 403 >=> text resolved.content
          ) next ctx
        }
    //#endregion

