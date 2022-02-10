namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.CauseAction
open OpenAPI.Model.EmptyChangeLogSet

module FreeStyleBuild =

  //#region FreeStyleBuild

  [<CLIMutable>]
  type FreeStyleBuild = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "number")>]
    Number : int;
    [<JsonProperty(PropertyName = "url")>]
    Url : string;
    [<JsonProperty(PropertyName = "actions")>]
    Actions : CauseAction[];
    [<JsonProperty(PropertyName = "building")>]
    Building : bool;
    [<JsonProperty(PropertyName = "description")>]
    Description : string;
    [<JsonProperty(PropertyName = "displayName")>]
    DisplayName : string;
    [<JsonProperty(PropertyName = "duration")>]
    Duration : int;
    [<JsonProperty(PropertyName = "estimatedDuration")>]
    EstimatedDuration : int;
    [<JsonProperty(PropertyName = "executor")>]
    Executor : string;
    [<JsonProperty(PropertyName = "fullDisplayName")>]
    FullDisplayName : string;
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "keepLog")>]
    KeepLog : bool;
    [<JsonProperty(PropertyName = "queueId")>]
    QueueId : int;
    [<JsonProperty(PropertyName = "result")>]
    Result : string;
    [<JsonProperty(PropertyName = "timestamp")>]
    Timestamp : int;
    [<JsonProperty(PropertyName = "builtOn")>]
    BuiltOn : string;
    [<JsonProperty(PropertyName = "changeSet")>]
    ChangeSet : EmptyChangeLogSet;
  }

  //#endregion
