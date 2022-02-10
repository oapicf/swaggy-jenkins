namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.HudsonMasterComputer

module ComputerSet =

  //#region ComputerSet


  type ComputerSet = {
    Class : string;
    BusyExecutors : int;
    Computer : HudsonMasterComputer[];
    DisplayName : string;
    TotalExecutors : int;
  }
  //#endregion
