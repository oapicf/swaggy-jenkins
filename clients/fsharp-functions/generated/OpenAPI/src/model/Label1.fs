namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module Label1 =

  //#region Label1

  [<CLIMutable>]
  type Label1 = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
