namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module UnlabeledLoadStatistics =

  //#region UnlabeledLoadStatistics

  [<CLIMutable>]
  type UnlabeledLoadStatistics = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
