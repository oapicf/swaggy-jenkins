namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.Link

module PipelineStepImpllinks =

  //#region PipelineStepImpllinks

  [<CLIMutable>]
  type PipelineStepImpllinks = {
    [<JsonProperty(PropertyName = "self")>]
    Self : Link;
    [<JsonProperty(PropertyName = "actions")>]
    Actions : Link;
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
