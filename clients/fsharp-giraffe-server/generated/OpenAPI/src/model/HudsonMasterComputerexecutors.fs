namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.FreeStyleBuild

module HudsonMasterComputerexecutors =

  //#region HudsonMasterComputerexecutors


  type HudsonMasterComputerexecutors = {
    CurrentExecutable : FreeStyleBuild;
    Idle : bool;
    LikelyStuck : bool;
    Number : int;
    Progress : int;
    Class : string;
  }
  //#endregion
