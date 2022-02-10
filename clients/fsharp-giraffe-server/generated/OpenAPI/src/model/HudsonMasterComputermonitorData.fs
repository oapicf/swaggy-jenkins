namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.ClockDifference
open OpenAPI.Model.DiskSpaceMonitorDescriptorDiskSpace
open OpenAPI.Model.ResponseTimeMonitorData
open OpenAPI.Model.SwapSpaceMonitorMemoryUsage2

module HudsonMasterComputermonitorData =

  //#region HudsonMasterComputermonitorData


  type HudsonMasterComputermonitorData = {
    HudsonNodeMonitorsSwapSpaceMonitor : SwapSpaceMonitorMemoryUsage2;
    HudsonNodeMonitorsTemporarySpaceMonitor : DiskSpaceMonitorDescriptorDiskSpace;
    HudsonNodeMonitorsDiskSpaceMonitor : DiskSpaceMonitorDescriptorDiskSpace;
    HudsonNodeMonitorsArchitectureMonitor : string;
    HudsonNodeMonitorsResponseTimeMonitor : ResponseTimeMonitorData;
    HudsonNodeMonitorsClockMonitor : ClockDifference;
    Class : string;
  }
  //#endregion
