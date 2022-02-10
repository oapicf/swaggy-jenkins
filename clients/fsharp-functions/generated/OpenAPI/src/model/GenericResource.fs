namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module GenericResource =

  //#region GenericResource

  [<CLIMutable>]
  type GenericResource = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "displayName")>]
    DisplayName : string;
    [<JsonProperty(PropertyName = "durationInMillis")>]
    DurationInMillis : int;
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "result")>]
    Result : string;
    [<JsonProperty(PropertyName = "startTime")>]
    StartTime : string;
  }

  //#endregion
