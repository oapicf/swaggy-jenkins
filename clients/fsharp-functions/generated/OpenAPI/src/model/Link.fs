namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module Link =

  //#region Link

  [<CLIMutable>]
  type Link = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "href")>]
    Href : string;
  }

  //#endregion
