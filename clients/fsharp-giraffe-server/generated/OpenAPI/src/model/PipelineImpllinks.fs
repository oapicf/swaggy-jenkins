namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.Link

module PipelineImpllinks =

  //#region PipelineImpllinks


  type PipelineImpllinks = {
    Runs : Link;
    Self : Link;
    Queue : Link;
    Actions : Link;
    Class : string;
  }
  //#endregion
