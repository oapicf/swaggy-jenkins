namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.FreeStyleBuild

module HudsonMasterComputerexecutors =

  //#region HudsonMasterComputerexecutors

  [<CLIMutable>]
  type HudsonMasterComputerexecutors = {
    [<JsonProperty(PropertyName = "currentExecutable")>]
    CurrentExecutable : FreeStyleBuild;
    [<JsonProperty(PropertyName = "idle")>]
    Idle : bool;
    [<JsonProperty(PropertyName = "likelyStuck")>]
    LikelyStuck : bool;
    [<JsonProperty(PropertyName = "number")>]
    Number : int;
    [<JsonProperty(PropertyName = "progress")>]
    Progress : int;
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
