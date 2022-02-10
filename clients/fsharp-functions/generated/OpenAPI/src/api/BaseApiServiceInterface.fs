namespace OpenAPI
open BaseApiHandlerParams
open System
open Microsoft.AspNetCore.Http


module BaseApiServiceInterface =

    //#region Service interface
    type IBaseApiService =
      abstract member GetCrumb : unit -> GetCrumbResult
    //#endregion