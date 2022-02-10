namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.GithubRepositories
open OpenAPI.Model.GithubRespositoryContainerlinks

module GithubRespositoryContainer =

  //#region GithubRespositoryContainer

  [<CLIMutable>]
  type GithubRespositoryContainer = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "_links")>]
    Links : GithubRespositoryContainerlinks;
    [<JsonProperty(PropertyName = "repositories")>]
    Repositories : GithubRepositories;
  }

  //#endregion
