namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.PipelinelatestRun

module Pipeline =

  //#region Pipeline

  [<CLIMutable>]
  type Pipeline = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "organization")>]
    Organization : string;
    [<JsonProperty(PropertyName = "name")>]
    Name : string;
    [<JsonProperty(PropertyName = "displayName")>]
    DisplayName : string;
    [<JsonProperty(PropertyName = "fullName")>]
    FullName : string;
    [<JsonProperty(PropertyName = "weatherScore")>]
    WeatherScore : int;
    [<JsonProperty(PropertyName = "estimatedDurationInMillis")>]
    EstimatedDurationInMillis : int;
    [<JsonProperty(PropertyName = "latestRun")>]
    LatestRun : PipelinelatestRun;
  }

  //#endregion
