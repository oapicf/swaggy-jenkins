namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module ClockDifference =

  //#region ClockDifference

  [<CLIMutable>]
  type ClockDifference = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "diff")>]
    Diff : int;
  }

  //#endregion
