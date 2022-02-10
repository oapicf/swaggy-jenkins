namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.PipelineRunImpllinks

module PipelineRunImpl =

  //#region PipelineRunImpl


  type PipelineRunImpl = {
    Class : string;
    Links : PipelineRunImpllinks;
    DurationInMillis : int;
    EnQueueTime : string;
    EndTime : string;
    EstimatedDurationInMillis : int;
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
