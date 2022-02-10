namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module MultibranchPipeline =

  //#region MultibranchPipeline

  [<CLIMutable>]
  type MultibranchPipeline = {
    [<JsonProperty(PropertyName = "displayName")>]
    DisplayName : string;
    [<JsonProperty(PropertyName = "estimatedDurationInMillis")>]
    EstimatedDurationInMillis : int;
    [<JsonProperty(PropertyName = "latestRun")>]
    LatestRun : string;
    [<JsonProperty(PropertyName = "name")>]
    Name : string;
    [<JsonProperty(PropertyName = "organization")>]
    Organization : string;
    [<JsonProperty(PropertyName = "weatherScore")>]
    WeatherScore : int;
    [<JsonProperty(PropertyName = "branchNames")>]
    BranchNames : string[];
    [<JsonProperty(PropertyName = "numberOfFailingBranches")>]
    NumberOfFailingBranches : int;
    [<JsonProperty(PropertyName = "numberOfFailingPullRequests")>]
    NumberOfFailingPullRequests : int;
    [<JsonProperty(PropertyName = "numberOfSuccessfulBranches")>]
    NumberOfSuccessfulBranches : int;
    [<JsonProperty(PropertyName = "numberOfSuccessfulPullRequests")>]
    NumberOfSuccessfulPullRequests : int;
    [<JsonProperty(PropertyName = "totalNumberOfBranches")>]
    TotalNumberOfBranches : int;
    [<JsonProperty(PropertyName = "totalNumberOfPullRequests")>]
    TotalNumberOfPullRequests : int;
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
