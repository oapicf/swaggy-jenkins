namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.BranchImpllinks
open OpenAPI.Model.BranchImplpermissions
open OpenAPI.Model.PipelineRunImpl
open OpenAPI.Model.StringParameterDefinition

module BranchImpl =

  //#region BranchImpl


  type BranchImpl = {
    Class : string;
    DisplayName : string;
    EstimatedDurationInMillis : int;
    FullDisplayName : string;
    FullName : string;
    Name : string;
    Organization : string;
    Parameters : StringParameterDefinition[];
    Permissions : BranchImplpermissions;
    WeatherScore : int;
    PullRequest : string;
    Links : BranchImpllinks;
    LatestRun : PipelineRunImpl;
  }
  //#endregion
