namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.Link

module BranchImpllinks =

  //#region BranchImpllinks


  type BranchImpllinks = {
    Self : Link;
    Actions : Link;
    Runs : Link;
    Queue : Link;
    Class : string;
  }
  //#endregion
