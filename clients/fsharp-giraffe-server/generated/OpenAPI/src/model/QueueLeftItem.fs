namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.CauseAction
open OpenAPI.Model.FreeStyleBuild
open OpenAPI.Model.FreeStyleProject

module QueueLeftItem =

  //#region QueueLeftItem


  type QueueLeftItem = {
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
    Cancelled : bool;
    Executable : FreeStyleBuild;
  }
  //#endregion
