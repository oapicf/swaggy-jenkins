namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module GithubRepositorypermissions =

  //#region GithubRepositorypermissions

  [<CLIMutable>]
  type GithubRepositorypermissions = {
    [<JsonProperty(PropertyName = "admin")>]
    Admin : bool;
    [<JsonProperty(PropertyName = "push")>]
    Push : bool;
    [<JsonProperty(PropertyName = "pull")>]
    Pull : bool;
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
