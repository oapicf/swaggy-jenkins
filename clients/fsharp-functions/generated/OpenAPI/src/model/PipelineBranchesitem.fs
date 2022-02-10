namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.PipelineBranchesitemlatestRun
open OpenAPI.Model.PipelineBranchesitempullRequest

module PipelineBranchesitem =

  //#region PipelineBranchesitem

  [<CLIMutable>]
  type PipelineBranchesitem = {
    [<JsonProperty(PropertyName = "displayName")>]
    DisplayName : string;
    [<JsonProperty(PropertyName = "estimatedDurationInMillis")>]
    EstimatedDurationInMillis : int;
    [<JsonProperty(PropertyName = "name")>]
    Name : string;
    [<JsonProperty(PropertyName = "weatherScore")>]
    WeatherScore : int;
    [<JsonProperty(PropertyName = "latestRun")>]
    LatestRun : PipelineBranchesitemlatestRun;
    [<JsonProperty(PropertyName = "organization")>]
    Organization : string;
    [<JsonProperty(PropertyName = "pullRequest")>]
    PullRequest : PipelineBranchesitempullRequest;
    [<JsonProperty(PropertyName = "totalNumberOfPullRequests")>]
    TotalNumberOfPullRequests : int;
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
