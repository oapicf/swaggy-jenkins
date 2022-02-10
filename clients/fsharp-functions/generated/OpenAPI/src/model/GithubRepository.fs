namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.GithubRepositorylinks
open OpenAPI.Model.GithubRepositorypermissions

module GithubRepository =

  //#region GithubRepository

  [<CLIMutable>]
  type GithubRepository = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "_links")>]
    Links : GithubRepositorylinks;
    [<JsonProperty(PropertyName = "defaultBranch")>]
    DefaultBranch : string;
    [<JsonProperty(PropertyName = "description")>]
    Description : string;
    [<JsonProperty(PropertyName = "name")>]
    Name : string;
    [<JsonProperty(PropertyName = "permissions")>]
    Permissions : GithubRepositorypermissions;
    [<JsonProperty(PropertyName = "private")>]
    Private : bool;
    [<JsonProperty(PropertyName = "fullName")>]
    FullName : string;
  }

  //#endregion
