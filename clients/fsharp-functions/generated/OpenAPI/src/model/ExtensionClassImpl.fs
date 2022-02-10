namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ExtensionClassImpllinks

module ExtensionClassImpl =

  //#region ExtensionClassImpl

  [<CLIMutable>]
  type ExtensionClassImpl = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "_links")>]
    Links : ExtensionClassImpllinks;
    [<JsonProperty(PropertyName = "classes")>]
    Classes : string[];
  }

  //#endregion
