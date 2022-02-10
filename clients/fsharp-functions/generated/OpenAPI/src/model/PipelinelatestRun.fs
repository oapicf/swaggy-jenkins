namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.PipelinelatestRunartifacts

module PipelinelatestRun =

  //#region PipelinelatestRun

  [<CLIMutable>]
  type PipelinelatestRun = {
    [<JsonProperty(PropertyName = "artifacts")>]
    Artifacts : PipelinelatestRunartifacts[];
    [<JsonProperty(PropertyName = "durationInMillis")>]
    DurationInMillis : int;
    [<JsonProperty(PropertyName = "estimatedDurationInMillis")>]
    EstimatedDurationInMillis : int;
    [<JsonProperty(PropertyName = "enQueueTime")>]
    EnQueueTime : string;
    [<JsonProperty(PropertyName = "endTime")>]
    EndTime : string;
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
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
