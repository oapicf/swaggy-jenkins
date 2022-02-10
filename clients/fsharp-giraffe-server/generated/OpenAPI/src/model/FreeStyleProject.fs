namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.FreeStyleBuild
open OpenAPI.Model.FreeStyleProjectactions
open OpenAPI.Model.FreeStyleProjecthealthReport
open OpenAPI.Model.NullSCM

module FreeStyleProject =

  //#region FreeStyleProject


  type FreeStyleProject = {
    Class : string;
    Name : string;
    Url : string;
    Color : string;
    Actions : FreeStyleProjectactions[];
    Description : string;
    DisplayName : string;
    DisplayNameOrNull : string;
    FullDisplayName : string;
    FullName : string;
    Buildable : bool;
    Builds : FreeStyleBuild[];
    FirstBuild : FreeStyleBuild;
    HealthReport : FreeStyleProjecthealthReport[];
    InQueue : bool;
    KeepDependencies : bool;
    LastBuild : FreeStyleBuild;
    LastCompletedBuild : FreeStyleBuild;
    LastFailedBuild : string;
    LastStableBuild : FreeStyleBuild;
    LastSuccessfulBuild : FreeStyleBuild;
    LastUnstableBuild : string;
    LastUnsuccessfulBuild : string;
    NextBuildNumber : int;
    QueueItem : string;
    ConcurrentBuild : bool;
    Scm : NullSCM;
  }
  //#endregion
