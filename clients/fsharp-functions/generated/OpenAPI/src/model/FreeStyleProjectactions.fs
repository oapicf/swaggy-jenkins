namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module FreeStyleProjectactions =

  //#region FreeStyleProjectactions

  [<CLIMutable>]
  type FreeStyleProjectactions = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
