namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.PipelineBranchesitemlatestRun
open OpenAPI.Model.PipelineBranchesitempullRequest

module PipelineBranchesitem =

  //#region PipelineBranchesitem


  type PipelineBranchesitem = {
    DisplayName : string;
    EstimatedDurationInMillis : int;
    Name : string;
    WeatherScore : int;
    LatestRun : PipelineBranchesitemlatestRun;
    Organization : string;
    PullRequest : PipelineBranchesitempullRequest;
    TotalNumberOfPullRequests : int;
    Class : string;
  }
  //#endregion
