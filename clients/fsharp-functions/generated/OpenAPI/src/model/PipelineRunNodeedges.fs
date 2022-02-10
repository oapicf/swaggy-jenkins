namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module PipelineRunNodeedges =

  //#region PipelineRunNodeedges

  [<CLIMutable>]
  type PipelineRunNodeedges = {
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
