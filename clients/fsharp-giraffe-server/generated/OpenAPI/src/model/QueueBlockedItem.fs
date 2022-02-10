namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.CauseAction
open OpenAPI.Model.FreeStyleProject

module QueueBlockedItem =

  //#region QueueBlockedItem


  type QueueBlockedItem = {
    Class : string;
    Actions : CauseAction[];
    Blocked : bool;
    Buildable : bool;
    Id : int;
    InQueueSince : int;
    Params : string;
    Stuck : bool;
    Task : FreeStyleProject;
    Url : string;
    Why : string;
    BuildableStartMilliseconds : int;
  }
  //#endregion
