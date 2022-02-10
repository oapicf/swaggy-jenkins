namespace OpenAPI.Model

open System
open System.Collections.Generic

module GithubRepositorypermissions =

  //#region GithubRepositorypermissions


  type GithubRepositorypermissions = {
    Admin : bool;
    Push : bool;
    Pull : bool;
    Class : string;
  }
  //#endregion
