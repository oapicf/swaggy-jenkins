namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.PipelineBranchesitempullRequestlinks

module PipelineBranchesitempullRequest =

  //#region PipelineBranchesitempullRequest

  [<CLIMutable>]
  type PipelineBranchesitempullRequest = {
    [<JsonProperty(PropertyName = "_links")>]
    Links : PipelineBranchesitempullRequestlinks;
    [<JsonProperty(PropertyName = "author")>]
    Author : string;
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "title")>]
    Title : string;
    [<JsonProperty(PropertyName = "url")>]
    Url : string;
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
