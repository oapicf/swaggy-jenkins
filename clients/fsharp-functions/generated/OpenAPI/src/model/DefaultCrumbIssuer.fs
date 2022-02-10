namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module DefaultCrumbIssuer =

  //#region DefaultCrumbIssuer

  [<CLIMutable>]
  type DefaultCrumbIssuer = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "crumb")>]
    Crumb : string;
    [<JsonProperty(PropertyName = "crumbRequestField")>]
    CrumbRequestField : string;
  }

  //#endregion
