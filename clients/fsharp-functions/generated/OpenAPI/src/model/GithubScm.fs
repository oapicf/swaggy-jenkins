namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.GithubScmlinks

module GithubScm =

  //#region GithubScm

  [<CLIMutable>]
  type GithubScm = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "_links")>]
    Links : GithubScmlinks;
    [<JsonProperty(PropertyName = "credentialId")>]
    CredentialId : string;
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "uri")>]
    Uri : string;
  }

  //#endregion
