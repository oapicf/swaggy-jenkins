namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module StringParameterValue =

  //#region StringParameterValue

  [<CLIMutable>]
  type StringParameterValue = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "name")>]
    Name : string;
    [<JsonProperty(PropertyName = "value")>]
    Value : string;
  }

  //#endregion
