namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.GithubContent

module GithubFile =

  //#region GithubFile

  [<CLIMutable>]
  type GithubFile = {
    [<JsonProperty(PropertyName = "content")>]
    Content : GithubContent;
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
