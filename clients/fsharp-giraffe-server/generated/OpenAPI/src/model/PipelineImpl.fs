namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.PipelineImpllinks

module PipelineImpl =

  //#region PipelineImpl


  type PipelineImpl = {
    Class : string;
    DisplayName : string;
    EstimatedDurationInMillis : int;
    FullName : string;
    LatestRun : string;
    Name : string;
    Organization : string;
    WeatherScore : int;
    Links : PipelineImpllinks;
  }
  //#endregion
