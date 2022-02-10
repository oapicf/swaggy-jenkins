namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module EmptyChangeLogSet =

  //#region EmptyChangeLogSet

  [<CLIMutable>]
  type EmptyChangeLogSet = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "kind")>]
    Kind : string;
  }

  //#endregion
