namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.CauseAction
open OpenAPI.Model.EmptyChangeLogSet

module FreeStyleBuild =

  //#region FreeStyleBuild


  type FreeStyleBuild = {
    Class : string;
    Number : int;
    Url : string;
    Actions : CauseAction[];
    Building : bool;
    Description : string;
    DisplayName : string;
    Duration : int;
    EstimatedDuration : int;
    Executor : string;
    FullDisplayName : string;
    Id : string;
    KeepLog : bool;
    QueueId : int;
    Result : string;
    Timestamp : int;
    BuiltOn : string;
    ChangeSet : EmptyChangeLogSet;
  }
  //#endregion
