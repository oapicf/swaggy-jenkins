namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.QueueBlockedItem

module Queue =

  //#region Queue

  [<CLIMutable>]
  type Queue = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "items")>]
    Items : QueueBlockedItem[];
  }

  //#endregion
