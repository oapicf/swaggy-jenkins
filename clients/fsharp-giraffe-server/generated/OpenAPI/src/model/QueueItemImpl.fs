namespace OpenAPI.Model

open System
open System.Collections.Generic

module QueueItemImpl =

  //#region QueueItemImpl


  type QueueItemImpl = {
    Class : string;
    ExpectedBuildNumber : int;
    Id : string;
    Pipeline : string;
    QueuedTime : int;
  }
  //#endregion
