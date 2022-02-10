namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.HudsonMasterComputer

module ComputerSet =

  //#region ComputerSet

  [<CLIMutable>]
  type ComputerSet = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "busyExecutors")>]
    BusyExecutors : int;
    [<JsonProperty(PropertyName = "computer")>]
    Computer : HudsonMasterComputer[];
    [<JsonProperty(PropertyName = "displayName")>]
    DisplayName : string;
    [<JsonProperty(PropertyName = "totalExecutors")>]
    TotalExecutors : int;
  }

  //#endregion
