namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.PipelinelatestRunartifacts

module PipelinelatestRun =

  //#region PipelinelatestRun


  type PipelinelatestRun = {
    Artifacts : PipelinelatestRunartifacts[];
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
    Class : string;
  }
  //#endregion
