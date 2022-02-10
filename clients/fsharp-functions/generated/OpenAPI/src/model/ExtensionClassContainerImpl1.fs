namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ExtensionClassContainerImpl1links
open OpenAPI.Model.ExtensionClassContainerImpl1map

module ExtensionClassContainerImpl1 =

  //#region ExtensionClassContainerImpl1

  [<CLIMutable>]
  type ExtensionClassContainerImpl1 = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "_links")>]
    Links : ExtensionClassContainerImpl1links;
    [<JsonProperty(PropertyName = "map")>]
    Map : ExtensionClassContainerImpl1map;
  }

  //#endregion
