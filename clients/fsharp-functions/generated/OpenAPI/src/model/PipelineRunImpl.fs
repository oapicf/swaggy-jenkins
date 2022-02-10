namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.PipelineRunImpllinks

module PipelineRunImpl =

  //#region PipelineRunImpl

  [<CLIMutable>]
  type PipelineRunImpl = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "_links")>]
    Links : PipelineRunImpllinks;
    [<JsonProperty(PropertyName = "durationInMillis")>]
    DurationInMillis : int;
    [<JsonProperty(PropertyName = "enQueueTime")>]
    EnQueueTime : string;
    [<JsonProperty(PropertyName = "endTime")>]
    EndTime : string;
    [<JsonProperty(PropertyName = "estimatedDurationInMillis")>]
    EstimatedDurationInMillis : int;
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "organization")>]
    Organization : string;
    [<JsonProperty(PropertyName = "pipeline")>]
    Pipeline : string;
    [<JsonProperty(PropertyName = "result")>]
    Result : string;
    [<JsonProperty(PropertyName = "runSummary")>]
    RunSummary : string;
    [<JsonProperty(PropertyName = "startTime")>]
    StartTime : string;
    [<JsonProperty(PropertyName = "state")>]
    State : string;
    [<JsonProperty(PropertyName = "type")>]
    Type : string;
    [<JsonProperty(PropertyName = "commitId")>]
    CommitId : string;
  }

  //#endregion
