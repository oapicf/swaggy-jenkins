namespace OpenAPI.Model

open System
open System.Collections.Generic

module GenericResource =

  //#region GenericResource


  type GenericResource = {
    Class : string;
    DisplayName : string;
    DurationInMillis : int;
    Id : string;
    Result : string;
    StartTime : string;
  }
  //#endregion
