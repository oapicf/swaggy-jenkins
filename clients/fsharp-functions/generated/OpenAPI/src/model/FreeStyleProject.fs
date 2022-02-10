namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.FreeStyleBuild
open OpenAPI.Model.FreeStyleProjectactions
open OpenAPI.Model.FreeStyleProjecthealthReport
open OpenAPI.Model.NullSCM

module FreeStyleProject =

  //#region FreeStyleProject

  [<CLIMutable>]
  type FreeStyleProject = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "name")>]
    Name : string;
    [<JsonProperty(PropertyName = "url")>]
    Url : string;
    [<JsonProperty(PropertyName = "color")>]
    Color : string;
    [<JsonProperty(PropertyName = "actions")>]
    Actions : FreeStyleProjectactions[];
    [<JsonProperty(PropertyName = "description")>]
    Description : string;
    [<JsonProperty(PropertyName = "displayName")>]
    DisplayName : string;
    [<JsonProperty(PropertyName = "displayNameOrNull")>]
    DisplayNameOrNull : string;
    [<JsonProperty(PropertyName = "fullDisplayName")>]
    FullDisplayName : string;
    [<JsonProperty(PropertyName = "fullName")>]
    FullName : string;
    [<JsonProperty(PropertyName = "buildable")>]
    Buildable : bool;
    [<JsonProperty(PropertyName = "builds")>]
    Builds : FreeStyleBuild[];
    [<JsonProperty(PropertyName = "firstBuild")>]
    FirstBuild : FreeStyleBuild;
    [<JsonProperty(PropertyName = "healthReport")>]
    HealthReport : FreeStyleProjecthealthReport[];
    [<JsonProperty(PropertyName = "inQueue")>]
    InQueue : bool;
    [<JsonProperty(PropertyName = "keepDependencies")>]
    KeepDependencies : bool;
    [<JsonProperty(PropertyName = "lastBuild")>]
    LastBuild : FreeStyleBuild;
    [<JsonProperty(PropertyName = "lastCompletedBuild")>]
    LastCompletedBuild : FreeStyleBuild;
    [<JsonProperty(PropertyName = "lastFailedBuild")>]
    LastFailedBuild : string;
    [<JsonProperty(PropertyName = "lastStableBuild")>]
    LastStableBuild : FreeStyleBuild;
    [<JsonProperty(PropertyName = "lastSuccessfulBuild")>]
    LastSuccessfulBuild : FreeStyleBuild;
    [<JsonProperty(PropertyName = "lastUnstableBuild")>]
    LastUnstableBuild : string;
    [<JsonProperty(PropertyName = "lastUnsuccessfulBuild")>]
    LastUnsuccessfulBuild : string;
    [<JsonProperty(PropertyName = "nextBuildNumber")>]
    NextBuildNumber : int;
    [<JsonProperty(PropertyName = "queueItem")>]
    QueueItem : string;
    [<JsonProperty(PropertyName = "concurrentBuild")>]
    ConcurrentBuild : bool;
    [<JsonProperty(PropertyName = "scm")>]
    Scm : NullSCM;
  }

  //#endregion
