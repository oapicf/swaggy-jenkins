namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.Link

module PipelineImpllinks =

  //#region PipelineImpllinks


  type PipelineImpllinks = {
    Self : Link;
    Actions : Link;
    Runs : Link;
    Queue : Link;
    Class : string;
  }
  //#endregion
