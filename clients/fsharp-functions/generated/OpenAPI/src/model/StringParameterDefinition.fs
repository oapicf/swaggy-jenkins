namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.StringParameterValue

module StringParameterDefinition =

  //#region StringParameterDefinition

  [<CLIMutable>]
  type StringParameterDefinition = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "defaultParameterValue")>]
    DefaultParameterValue : StringParameterValue;
    [<JsonProperty(PropertyName = "description")>]
    Description : string;
    [<JsonProperty(PropertyName = "name")>]
    Name : string;
    [<JsonProperty(PropertyName = "type")>]
    Type : string;
  }

  //#endregion
