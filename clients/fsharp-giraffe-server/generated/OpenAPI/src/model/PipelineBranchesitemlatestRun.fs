namespace OpenAPI.Model

open System
open System.Collections.Generic

module PipelineBranchesitemlatestRun =

  //#region PipelineBranchesitemlatestRun


  type PipelineBranchesitemlatestRun = {
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
