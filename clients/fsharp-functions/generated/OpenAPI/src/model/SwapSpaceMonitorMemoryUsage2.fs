namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module SwapSpaceMonitorMemoryUsage2 =

  //#region SwapSpaceMonitorMemoryUsage2

  [<CLIMutable>]
  type SwapSpaceMonitorMemoryUsage2 = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "availablePhysicalMemory")>]
    AvailablePhysicalMemory : int;
    [<JsonProperty(PropertyName = "availableSwapSpace")>]
    AvailableSwapSpace : int;
    [<JsonProperty(PropertyName = "totalPhysicalMemory")>]
    TotalPhysicalMemory : int;
    [<JsonProperty(PropertyName = "totalSwapSpace")>]
    TotalSwapSpace : int;
  }

  //#endregion
