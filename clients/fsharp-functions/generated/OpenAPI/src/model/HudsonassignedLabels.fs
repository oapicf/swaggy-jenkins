namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module HudsonassignedLabels =

  //#region HudsonassignedLabels

  [<CLIMutable>]
  type HudsonassignedLabels = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
