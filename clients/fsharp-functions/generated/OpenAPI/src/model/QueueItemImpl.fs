namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module QueueItemImpl =

  //#region QueueItemImpl

  [<CLIMutable>]
  type QueueItemImpl = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "expectedBuildNumber")>]
    ExpectedBuildNumber : int;
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "pipeline")>]
    Pipeline : string;
    [<JsonProperty(PropertyName = "queuedTime")>]
    QueuedTime : int;
  }

  //#endregion
