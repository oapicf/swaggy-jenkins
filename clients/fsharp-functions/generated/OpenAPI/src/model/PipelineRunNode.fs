namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.PipelineRunNodeedges

module PipelineRunNode =

  //#region PipelineRunNode

  [<CLIMutable>]
  type PipelineRunNode = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "displayName")>]
    DisplayName : string;
    [<JsonProperty(PropertyName = "durationInMillis")>]
    DurationInMillis : int;
    [<JsonProperty(PropertyName = "edges")>]
    Edges : PipelineRunNodeedges[];
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "result")>]
    Result : string;
    [<JsonProperty(PropertyName = "startTime")>]
    StartTime : string;
    [<JsonProperty(PropertyName = "state")>]
    State : string;
  }

  //#endregion
