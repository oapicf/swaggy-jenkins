namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.GithubOrganizationlinks

module GithubOrganization =

  //#region GithubOrganization

  [<CLIMutable>]
  type GithubOrganization = {
    [<JsonProperty(PropertyName = "_class")>]
    Class : string;
    [<JsonProperty(PropertyName = "_links")>]
    Links : GithubOrganizationlinks;
    [<JsonProperty(PropertyName = "jenkinsOrganizationPipeline")>]
    JenkinsOrganizationPipeline : bool;
    [<JsonProperty(PropertyName = "name")>]
    Name : string;
  }

  //#endregion
