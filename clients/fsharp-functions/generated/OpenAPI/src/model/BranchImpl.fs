namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.BranchImpllinks
open OpenAPI.Model.BranchImplpermissions
open OpenAPI.Model.PipelineRunImpl
open OpenAPI.Model.StringParameterDefinition

module BranchImpl =

  //#region BranchImpl

  [<CLIMutable>]
  type BranchImpl = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "displayName")>]
    DisplayName : string;
    [<JsonProperty(PropertyName = "estimatedDurationInMillis")>]
    EstimatedDurationInMillis : int;
    [<JsonProperty(PropertyName = "fullDisplayName")>]
    FullDisplayName : string;
    [<JsonProperty(PropertyName = "fullName")>]
    FullName : string;
    [<JsonProperty(PropertyName = "name")>]
    Name : string;
    [<JsonProperty(PropertyName = "organization")>]
    Organization : string;
    [<JsonProperty(PropertyName = "parameters")>]
    Parameters : StringParameterDefinition[];
    [<JsonProperty(PropertyName = "permissions")>]
    Permissions : BranchImplpermissions;
    [<JsonProperty(PropertyName = "weatherScore")>]
    WeatherScore : int;
    [<JsonProperty(PropertyName = "pullRequest")>]
    PullRequest : string;
    [<JsonProperty(PropertyName = "_links")>]
    Links : BranchImpllinks;
    [<JsonProperty(PropertyName = "latestRun")>]
    LatestRun : PipelineRunImpl;
  }

  //#endregion
