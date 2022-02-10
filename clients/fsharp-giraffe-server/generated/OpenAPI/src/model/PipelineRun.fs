namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.PipelineRunartifacts

module PipelineRun =

  //#region PipelineRun


  type PipelineRun = {
    Class : string;
    Artifacts : PipelineRunartifacts[];
    DurationInMillis : int;
    EstimatedDurationInMillis : int;
    EnQueueTime : string;
    EndTime : string;
    Id : string;
    Organization : string;
    Pipeline : string;
    Result : string;
    RunSummary : string;
    StartTime : string;
    State : string;
    Type : string;
    CommitId : string;
  }
  //#endregion
