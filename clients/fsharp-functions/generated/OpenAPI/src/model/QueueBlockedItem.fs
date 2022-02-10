namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.CauseAction
open OpenAPI.Model.FreeStyleProject

module QueueBlockedItem =

  //#region QueueBlockedItem

  [<CLIMutable>]
  type QueueBlockedItem = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "actions")>]
    Actions : CauseAction[];
    [<JsonProperty(PropertyName = "blocked")>]
    Blocked : bool;
    [<JsonProperty(PropertyName = "buildable")>]
    Buildable : bool;
    [<JsonProperty(PropertyName = "id")>]
    Id : int;
    [<JsonProperty(PropertyName = "inQueueSince")>]
    InQueueSince : int;
    [<JsonProperty(PropertyName = "params")>]
    Params : string;
    [<JsonProperty(PropertyName = "stuck")>]
    Stuck : bool;
    [<JsonProperty(PropertyName = "task")>]
    Task : FreeStyleProject;
    [<JsonProperty(PropertyName = "url")>]
    Url : string;
    [<JsonProperty(PropertyName = "why")>]
    Why : string;
    [<JsonProperty(PropertyName = "buildableStartMilliseconds")>]
    BuildableStartMilliseconds : int;
  }

  //#endregion
