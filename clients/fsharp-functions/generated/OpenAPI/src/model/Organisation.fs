namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module Organisation =

  //#region Organisation

  [<CLIMutable>]
  type Organisation = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "name")>]
    Name : string;
  }

  //#endregion
