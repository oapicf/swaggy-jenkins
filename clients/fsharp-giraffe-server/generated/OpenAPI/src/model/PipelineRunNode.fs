namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.PipelineRunNodeedges

module PipelineRunNode =

  //#region PipelineRunNode


  type PipelineRunNode = {
    Class : string;
    DisplayName : string;
    DurationInMillis : int;
    Edges : PipelineRunNodeedges[];
    Id : string;
    Result : string;
    StartTime : string;
    State : string;
  }
  //#endregion
