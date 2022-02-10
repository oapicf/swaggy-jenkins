namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.CauseUserIdCause

module CauseAction =

  //#region CauseAction

  [<CLIMutable>]
  type CauseAction = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "causes")>]
    Causes : CauseUserIdCause[];
  }

  //#endregion
