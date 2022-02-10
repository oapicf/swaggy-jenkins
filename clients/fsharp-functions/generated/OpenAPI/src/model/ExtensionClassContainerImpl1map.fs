namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ExtensionClassImpl

module ExtensionClassContainerImpl1map =

  //#region ExtensionClassContainerImpl1map

  [<CLIMutable>]
  type ExtensionClassContainerImpl1map = {
    [<JsonProperty(PropertyName = "io.jenkins.blueocean.service.embedded.rest.PipelineImpl")>]
    IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl : ExtensionClassImpl;
    [<JsonProperty(PropertyName = "io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl")>]
    IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl : ExtensionClassImpl;
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
