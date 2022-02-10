namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.FavoriteImpllinks
open OpenAPI.Model.PipelineImpl

module FavoriteImpl =

  //#region FavoriteImpl

  [<CLIMutable>]
  type FavoriteImpl = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "_links")>]
    Links : FavoriteImpllinks;
    [<JsonProperty(PropertyName = "item")>]
    Item : PipelineImpl;
  }

  //#endregion
