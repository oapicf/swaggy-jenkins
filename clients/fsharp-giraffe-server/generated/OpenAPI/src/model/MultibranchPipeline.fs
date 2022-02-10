namespace OpenAPI.Model

open System
open System.Collections.Generic

module MultibranchPipeline =

  //#region MultibranchPipeline


  type MultibranchPipeline = {
    DisplayName : string;
    EstimatedDurationInMillis : int;
    LatestRun : string;
    Name : string;
    Organization : string;
    WeatherScore : int;
    BranchNames : string[];
    NumberOfFailingBranches : int;
    NumberOfFailingPullRequests : int;
    NumberOfSuccessfulBranches : int;
    NumberOfSuccessfulPullRequests : int;
    TotalNumberOfBranches : int;
    TotalNumberOfPullRequests : int;
    Class : string;
  }
  //#endregion
