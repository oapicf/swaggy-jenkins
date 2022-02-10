namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.Link

module GithubRespositoryContainerlinks =

  //#region GithubRespositoryContainerlinks

  [<CLIMutable>]
  type GithubRespositoryContainerlinks = {
    [<JsonProperty(PropertyName = "self")>]
    Self : Link;
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
