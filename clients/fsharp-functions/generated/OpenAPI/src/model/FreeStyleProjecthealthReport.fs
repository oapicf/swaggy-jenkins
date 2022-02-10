namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module FreeStyleProjecthealthReport =

  //#region FreeStyleProjecthealthReport

  [<CLIMutable>]
  type FreeStyleProjecthealthReport = {
    [<JsonProperty(PropertyName = "description")>]
    Description : string;
    [<JsonProperty(PropertyName = "iconClassName")>]
    IconClassName : string;
    [<JsonProperty(PropertyName = "iconUrl")>]
    IconUrl : string;
    [<JsonProperty(PropertyName = "score")>]
    Score : int;
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
