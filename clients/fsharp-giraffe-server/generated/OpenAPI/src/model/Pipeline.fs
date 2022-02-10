namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.PipelinelatestRun

module Pipeline =

  //#region Pipeline


  type Pipeline = {
    Class : string;
    Organization : string;
    Name : string;
    DisplayName : string;
    FullName : string;
    WeatherScore : int;
    EstimatedDurationInMillis : int;
    LatestRun : PipelinelatestRun;
  }
  //#endregion
