namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.AllView
open OpenAPI.Model.FreeStyleProject
open OpenAPI.Model.HudsonassignedLabels
open OpenAPI.Model.UnlabeledLoadStatistics

module Hudson =

  //#region Hudson

  [<CLIMutable>]
  type Hudson = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "assignedLabels")>]
    AssignedLabels : HudsonassignedLabels[];
    [<JsonProperty(PropertyName = "mode")>]
    Mode : string;
    [<JsonProperty(PropertyName = "nodeDescription")>]
    NodeDescription : string;
    [<JsonProperty(PropertyName = "nodeName")>]
    NodeName : string;
    [<JsonProperty(PropertyName = "numExecutors")>]
    NumExecutors : int;
    [<JsonProperty(PropertyName = "description")>]
    Description : string;
    [<JsonProperty(PropertyName = "jobs")>]
    Jobs : FreeStyleProject[];
    [<JsonProperty(PropertyName = "primaryView")>]
    PrimaryView : AllView;
    [<JsonProperty(PropertyName = "quietingDown")>]
    QuietingDown : bool;
    [<JsonProperty(PropertyName = "slaveAgentPort")>]
    SlaveAgentPort : int;
    [<JsonProperty(PropertyName = "unlabeledLoad")>]
    UnlabeledLoad : UnlabeledLoadStatistics;
    [<JsonProperty(PropertyName = "useCrumbs")>]
    UseCrumbs : bool;
    [<JsonProperty(PropertyName = "useSecurity")>]
    UseSecurity : bool;
    [<JsonProperty(PropertyName = "views")>]
    Views : AllView[];
  }

  //#endregion
