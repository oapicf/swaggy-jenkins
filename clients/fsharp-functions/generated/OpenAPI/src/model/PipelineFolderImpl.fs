namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module PipelineFolderImpl =

  //#region PipelineFolderImpl

  [<CLIMutable>]
  type PipelineFolderImpl = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "displayName")>]
    DisplayName : string;
    [<JsonProperty(PropertyName = "fullName")>]
    FullName : string;
    [<JsonProperty(PropertyName = "name")>]
    Name : string;
    [<JsonProperty(PropertyName = "organization")>]
    Organization : string;
    [<JsonProperty(PropertyName = "numberOfFolders")>]
    NumberOfFolders : int;
    [<JsonProperty(PropertyName = "numberOfPipelines")>]
    NumberOfPipelines : int;
  }

  //#endregion
