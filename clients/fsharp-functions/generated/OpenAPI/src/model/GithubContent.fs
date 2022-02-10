namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module GithubContent =

  //#region GithubContent

  [<CLIMutable>]
  type GithubContent = {
    [<JsonProperty(PropertyName = "name")>]
    Name : string;
    [<JsonProperty(PropertyName = "sha")>]
    Sha : string;
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "repo")>]
    Repo : string;
    [<JsonProperty(PropertyName = "size")>]
    Size : int;
    [<JsonProperty(PropertyName = "owner")>]
    Owner : string;
    [<JsonProperty(PropertyName = "path")>]
    Path : string;
    [<JsonProperty(PropertyName = "base64Data")>]
    Base64Data : string;
  }

  //#endregion
