namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module ClassesByClass =

  //#region ClassesByClass

  [<CLIMutable>]
  type ClassesByClass = {
    [<JsonProperty(PropertyName = "classes")>]
    Classes : string[];
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
