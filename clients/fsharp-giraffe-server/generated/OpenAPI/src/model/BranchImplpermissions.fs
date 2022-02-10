namespace OpenAPI.Model

open System
open System.Collections.Generic

module BranchImplpermissions =

  //#region BranchImplpermissions


  type BranchImplpermissions = {
    Create : bool;
    Read : bool;
    Start : bool;
    Stop : bool;
    Class : string;
  }
  //#endregion
