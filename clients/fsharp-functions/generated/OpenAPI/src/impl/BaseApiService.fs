namespace OpenAPI
open OpenAPI.Model.DefaultCrumbIssuer
open BaseApiHandlerParams
open BaseApiServiceInterface
open System.Collections.Generic
open System

module BaseApiServiceImplementation =

    //#region Service implementation
    type BaseApiServiceImpl() =
      interface IBaseApiService with

        member this.GetCrumb () =
          if true then
            let content = "Successfully retrieved CSRF protection token" :> obj :?> DefaultCrumbIssuer // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetCrumbStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetCrumbStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetCrumbStatusCode403 { content = content }

      //#endregion

    let BaseApiService = BaseApiServiceImpl() :> IBaseApiService