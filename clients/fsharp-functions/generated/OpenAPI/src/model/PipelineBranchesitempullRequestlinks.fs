namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module PipelineBranchesitempullRequestlinks =

  //#region PipelineBranchesitempullRequestlinks

  [<CLIMutable>]
  type PipelineBranchesitempullRequestlinks = {
    [<JsonProperty(PropertyName = "self")>]
    Self : string;
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
