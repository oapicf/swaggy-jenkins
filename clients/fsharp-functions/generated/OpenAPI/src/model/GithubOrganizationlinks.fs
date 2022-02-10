namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.Link

module GithubOrganizationlinks =

  //#region GithubOrganizationlinks

  [<CLIMutable>]
  type GithubOrganizationlinks = {
    [<JsonProperty(PropertyName = "repositories")>]
    Repositories : Link;
    [<JsonProperty(PropertyName = "self")>]
    Self : Link;
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
  }

  //#endregion
