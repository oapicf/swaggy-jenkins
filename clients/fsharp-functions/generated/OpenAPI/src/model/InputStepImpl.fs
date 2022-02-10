namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.InputStepImpllinks
open OpenAPI.Model.StringParameterDefinition

module InputStepImpl =

  //#region InputStepImpl

  [<CLIMutable>]
  type InputStepImpl = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "_links")>]
    Links : InputStepImpllinks;
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "message")>]
    Message : string;
    [<JsonProperty(PropertyName = "ok")>]
    Ok : string;
    [<JsonProperty(PropertyName = "parameters")>]
    Parameters : StringParameterDefinition[];
    [<JsonProperty(PropertyName = "submitter")>]
    Submitter : string;
  }

  //#endregion
