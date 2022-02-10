namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.Link

module InputStepImpllinks =

  //#region InputStepImpllinks

  [<CLIMutable>]
  type InputStepImpllinks = {
    [<JsonProperty(PropertyName = "self")>]
    Self : Link;
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
