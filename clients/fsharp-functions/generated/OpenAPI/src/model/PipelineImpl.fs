namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.PipelineImpllinks

module PipelineImpl =

  //#region PipelineImpl

  [<CLIMutable>]
  type PipelineImpl = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "displayName")>]
    DisplayName : string;
    [<JsonProperty(PropertyName = "estimatedDurationInMillis")>]
    EstimatedDurationInMillis : int;
    [<JsonProperty(PropertyName = "fullName")>]
    FullName : string;
    [<JsonProperty(PropertyName = "latestRun")>]
    LatestRun : string;
    [<JsonProperty(PropertyName = "name")>]
    Name : string;
    [<JsonProperty(PropertyName = "organization")>]
    Organization : string;
    [<JsonProperty(PropertyName = "weatherScore")>]
    WeatherScore : int;
    [<JsonProperty(PropertyName = "_links")>]
    Links : PipelineImpllinks;
  }

  //#endregion
