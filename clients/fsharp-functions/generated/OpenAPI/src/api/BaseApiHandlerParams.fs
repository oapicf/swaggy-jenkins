namespace OpenAPI

open OpenAPI.Model.DefaultCrumbIssuer
open System.Collections.Generic
open System

module BaseApiHandlerParams =



    type GetCrumbStatusCode200Response = {
      content:DefaultCrumbIssuer;
      
    }

    type GetCrumbStatusCode401Response = {
      content:string;
      
    }

    type GetCrumbStatusCode403Response = {
      content:string;
      
    }
    type GetCrumbResult = GetCrumbStatusCode200 of GetCrumbStatusCode200Response|GetCrumbStatusCode401 of GetCrumbStatusCode401Response|GetCrumbStatusCode403 of GetCrumbStatusCode403Response

