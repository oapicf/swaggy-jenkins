namespace OpenAPI
open BaseApiHandlerParams
open System
open Giraffe
open Microsoft.AspNetCore.Http


module BaseApiServiceInterface =

    //#region Service interface
    type IBaseApiService =
      abstract member GetCrumb:HttpContext ->GetCrumbResult
    //#endregion