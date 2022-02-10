namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.Link

module PipelineRunImpllinks =

  //#region PipelineRunImpllinks


  type PipelineRunImpllinks = {
    Nodes : Link;
    Log : Link;
    Self : Link;
    Actions : Link;
    Steps : Link;
    Class : string;
  }
  //#endregion
