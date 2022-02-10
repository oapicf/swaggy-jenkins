namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ClockDifference
open OpenAPI.Model.DiskSpaceMonitorDescriptorDiskSpace
open OpenAPI.Model.ResponseTimeMonitorData
open OpenAPI.Model.SwapSpaceMonitorMemoryUsage2

module HudsonMasterComputermonitorData =

  //#region HudsonMasterComputermonitorData

  [<CLIMutable>]
  type HudsonMasterComputermonitorData = {
    [<JsonProperty(PropertyName = "hudson.node_monitors.SwapSpaceMonitor")>]
    HudsonNodeMonitorsSwapSpaceMonitor : SwapSpaceMonitorMemoryUsage2;
    [<JsonProperty(PropertyName = "hudson.node_monitors.TemporarySpaceMonitor")>]
    HudsonNodeMonitorsTemporarySpaceMonitor : DiskSpaceMonitorDescriptorDiskSpace;
    [<JsonProperty(PropertyName = "hudson.node_monitors.DiskSpaceMonitor")>]
    HudsonNodeMonitorsDiskSpaceMonitor : DiskSpaceMonitorDescriptorDiskSpace;
    [<JsonProperty(PropertyName = "hudson.node_monitors.ArchitectureMonitor")>]
    HudsonNodeMonitorsArchitectureMonitor : string;
    [<JsonProperty(PropertyName = "hudson.node_monitors.ResponseTimeMonitor")>]
    HudsonNodeMonitorsResponseTimeMonitor : ResponseTimeMonitorData;
    [<JsonProperty(PropertyName = "hudson.node_monitors.ClockMonitor")>]
    HudsonNodeMonitorsClockMonitor : ClockDifference;
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
