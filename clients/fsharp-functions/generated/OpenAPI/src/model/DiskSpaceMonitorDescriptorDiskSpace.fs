namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module DiskSpaceMonitorDescriptorDiskSpace =

  //#region DiskSpaceMonitorDescriptorDiskSpace

  [<CLIMutable>]
  type DiskSpaceMonitorDescriptorDiskSpace = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "timestamp")>]
    Timestamp : int;
    [<JsonProperty(PropertyName = "path")>]
    Path : string;
    [<JsonProperty(PropertyName = "size")>]
    Size : int;
  }

  //#endregion
