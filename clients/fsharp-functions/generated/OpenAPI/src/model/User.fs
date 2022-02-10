namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module User =

  //#region User

  [<CLIMutable>]
  type User = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "fullName")>]
    FullName : string;
    [<JsonProperty(PropertyName = "email")>]
    Email : string;
    [<JsonProperty(PropertyName = "name")>]
    Name : string;
  }

  //#endregion
