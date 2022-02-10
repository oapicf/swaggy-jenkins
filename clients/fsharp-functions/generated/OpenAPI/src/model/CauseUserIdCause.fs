namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module CauseUserIdCause =

  //#region CauseUserIdCause

  [<CLIMutable>]
  type CauseUserIdCause = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "shortDescription")>]
    ShortDescription : string;
    [<JsonProperty(PropertyName = "userId")>]
    UserId : string;
    [<JsonProperty(PropertyName = "userName")>]
    UserName : string;
  }

  //#endregion
