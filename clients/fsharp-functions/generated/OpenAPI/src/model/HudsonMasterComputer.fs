namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.HudsonMasterComputerexecutors
open OpenAPI.Model.HudsonMasterComputermonitorData
open OpenAPI.Model.Label1

module HudsonMasterComputer =

  //#region HudsonMasterComputer

  [<CLIMutable>]
  type HudsonMasterComputer = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "displayName")>]
    DisplayName : string;
    [<JsonProperty(PropertyName = "executors")>]
    Executors : HudsonMasterComputerexecutors[];
    [<JsonProperty(PropertyName = "icon")>]
    Icon : string;
    [<JsonProperty(PropertyName = "iconClassName")>]
    IconClassName : string;
    [<JsonProperty(PropertyName = "idle")>]
    Idle : bool;
    [<JsonProperty(PropertyName = "jnlpAgent")>]
    JnlpAgent : bool;
    [<JsonProperty(PropertyName = "launchSupported")>]
    LaunchSupported : bool;
    [<JsonProperty(PropertyName = "loadStatistics")>]
    LoadStatistics : Label1;
    [<JsonProperty(PropertyName = "manualLaunchAllowed")>]
    ManualLaunchAllowed : bool;
    [<JsonProperty(PropertyName = "monitorData")>]
    MonitorData : HudsonMasterComputermonitorData;
    [<JsonProperty(PropertyName = "numExecutors")>]
    NumExecutors : int;
    [<JsonProperty(PropertyName = "offline")>]
    Offline : bool;
    [<JsonProperty(PropertyName = "offlineCause")>]
    OfflineCause : string;
    [<JsonProperty(PropertyName = "offlineCauseReason")>]
    OfflineCauseReason : string;
    [<JsonProperty(PropertyName = "temporarilyOffline")>]
    TemporarilyOffline : bool;
  }

  //#endregion
