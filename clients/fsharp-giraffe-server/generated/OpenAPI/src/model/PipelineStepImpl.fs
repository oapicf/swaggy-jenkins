namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.InputStepImpl
open OpenAPI.Model.PipelineStepImpllinks

module PipelineStepImpl =

  //#region PipelineStepImpl


  type PipelineStepImpl = {
    Class : string;
    Links : PipelineStepImpllinks;
    DisplayName : string;
    DurationInMillis : int;
    Id : string;
    Input : InputStepImpl;
    Result : string;
    StartTime : string;
    State : string;
  }
  //#endregion
