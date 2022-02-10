namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.HudsonMasterComputerexecutors
open OpenAPI.Model.HudsonMasterComputermonitorData
open OpenAPI.Model.Label1

module HudsonMasterComputer =

  //#region HudsonMasterComputer


  type HudsonMasterComputer = {
    Class : string;
    DisplayName : string;
    Executors : HudsonMasterComputerexecutors[];
    Icon : string;
    IconClassName : string;
    Idle : bool;
    JnlpAgent : bool;
    LaunchSupported : bool;
    LoadStatistics : Label1;
    ManualLaunchAllowed : bool;
    MonitorData : HudsonMasterComputermonitorData;
    NumExecutors : int;
    Offline : bool;
    OfflineCause : string;
    OfflineCauseReason : string;
    TemporarilyOffline : bool;
  }
  //#endregion
