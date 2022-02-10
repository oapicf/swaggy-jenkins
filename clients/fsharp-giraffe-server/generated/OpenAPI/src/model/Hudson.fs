namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.AllView
open OpenAPI.Model.FreeStyleProject
open OpenAPI.Model.HudsonassignedLabels
open OpenAPI.Model.UnlabeledLoadStatistics

module Hudson =

  //#region Hudson


  type Hudson = {
    Class : string;
    AssignedLabels : HudsonassignedLabels[];
    Mode : string;
    NodeDescription : string;
    NodeName : string;
    NumExecutors : int;
    Description : string;
    Jobs : FreeStyleProject[];
    PrimaryView : AllView;
    QuietingDown : bool;
    SlaveAgentPort : int;
    UnlabeledLoad : UnlabeledLoadStatistics;
    UseCrumbs : bool;
    UseSecurity : bool;
    Views : AllView[];
  }
  //#endregion
