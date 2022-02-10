namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.Link

module ExtensionClassContainerImpl1links =

  //#region ExtensionClassContainerImpl1links

  [<CLIMutable>]
  type ExtensionClassContainerImpl1links = {
    [<JsonProperty(PropertyName = "self")>]
    Self : Link;
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
