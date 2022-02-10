namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.FavoriteImpllinks
open OpenAPI.Model.PipelineImpl

module FavoriteImpl =

  //#region FavoriteImpl


  type FavoriteImpl = {
    Class : string;
    Links : FavoriteImpllinks;
    Item : PipelineImpl;
  }
  //#endregion
