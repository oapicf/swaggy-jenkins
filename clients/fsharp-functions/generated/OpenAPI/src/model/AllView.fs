namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module AllView =

  //#region AllView

  [<CLIMutable>]
  type AllView = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "name")>]
    Name : string;
    [<JsonProperty(PropertyName = "url")>]
    Url : string;
  }

  //#endregion
