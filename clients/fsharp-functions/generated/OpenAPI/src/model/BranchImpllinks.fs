namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.Link

module BranchImpllinks =

  //#region BranchImpllinks

  [<CLIMutable>]
  type BranchImpllinks = {
    [<JsonProperty(PropertyName = "self")>]
    Self : Link;
    [<JsonProperty(PropertyName = "actions")>]
    Actions : Link;
    [<JsonProperty(PropertyName = "runs")>]
    Runs : Link;
    [<JsonProperty(PropertyName = "queue")>]
    Queue : Link;
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
