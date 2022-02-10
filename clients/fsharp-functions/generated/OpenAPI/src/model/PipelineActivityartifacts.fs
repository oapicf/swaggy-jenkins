namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module PipelineActivityartifacts =

  //#region PipelineActivityartifacts

  [<CLIMutable>]
  type PipelineActivityartifacts = {
    [<JsonProperty(PropertyName = "name")>]
    Name : string;
    [<JsonProperty(PropertyName = "size")>]
    Size : int;
    [<JsonProperty(PropertyName = "url")>]
    Url : string;
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
