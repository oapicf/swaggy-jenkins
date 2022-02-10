namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module BranchImplpermissions =

  //#region BranchImplpermissions

  [<CLIMutable>]
  type BranchImplpermissions = {
    [<JsonProperty(PropertyName = "create")>]
    Create : bool;
    [<JsonProperty(PropertyName = "read")>]
    Read : bool;
    [<JsonProperty(PropertyName = "start")>]
    Start : bool;
    [<JsonProperty(PropertyName = "stop")>]
    Stop : bool;
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
