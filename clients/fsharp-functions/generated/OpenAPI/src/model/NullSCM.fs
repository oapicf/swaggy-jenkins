namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module NullSCM =

  //#region NullSCM

  [<CLIMutable>]
  type NullSCM = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
