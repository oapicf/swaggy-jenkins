namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.Link

module PipelineRunImpllinks =

  //#region PipelineRunImpllinks

  [<CLIMutable>]
  type PipelineRunImpllinks = {
    [<JsonProperty(PropertyName = "nodes")>]
    Nodes : Link;
    [<JsonProperty(PropertyName = "log")>]
    Log : Link;
    [<JsonProperty(PropertyName = "self")>]
    Self : Link;
    [<JsonProperty(PropertyName = "actions")>]
    Actions : Link;
    [<JsonProperty(PropertyName = "steps")>]
    Steps : Link;
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
