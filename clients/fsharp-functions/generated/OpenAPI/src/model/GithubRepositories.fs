namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.GithubRepositorieslinks
open OpenAPI.Model.GithubRepository

module GithubRepositories =

  //#region GithubRepositories

  [<CLIMutable>]
  type GithubRepositories = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "_links")>]
    Links : GithubRepositorieslinks;
    [<JsonProperty(PropertyName = "items")>]
    Items : GithubRepository[];
    [<JsonProperty(PropertyName = "lastPage")>]
    LastPage : int;
    [<JsonProperty(PropertyName = "nextPage")>]
    NextPage : int;
    [<JsonProperty(PropertyName = "pageSize")>]
    PageSize : int;
  }

  //#endregion
