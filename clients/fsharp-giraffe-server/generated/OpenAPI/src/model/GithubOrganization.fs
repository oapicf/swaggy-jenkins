namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.GithubOrganizationlinks

module GithubOrganization =

  //#region GithubOrganization


  type GithubOrganization = {
    Class : string;
    Links : GithubOrganizationlinks;
    JenkinsOrganizationPipeline : bool;
    Name : string;
  }
  //#endregion
