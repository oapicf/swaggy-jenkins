namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.QueueBlockedItem

module Queue =

  //#region Queue


  type Queue = {
    Class : string;
    Items : QueueBlockedItem[];
  }
  //#endregion
