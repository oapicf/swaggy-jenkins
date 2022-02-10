namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.CauseUserIdCause

module CauseAction =

  //#region CauseAction


  type CauseAction = {
    Class : string;
    Causes : CauseUserIdCause[];
  }
  //#endregion
