namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module ResponseTimeMonitorData =

  //#region ResponseTimeMonitorData

  [<CLIMutable>]
  type ResponseTimeMonitorData = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "timestamp")>]
    Timestamp : int;
    [<JsonProperty(PropertyName = "average")>]
    Average : int;
  }

  //#endregion
