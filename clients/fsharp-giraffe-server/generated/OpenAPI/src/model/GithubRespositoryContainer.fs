namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.GithubRepositories
open OpenAPI.Model.GithubRespositoryContainerlinks

module GithubRespositoryContainer =

  //#region GithubRespositoryContainer


  type GithubRespositoryContainer = {
    Class : string;
    Links : GithubRespositoryContainerlinks;
    Repositories : GithubRepositories;
  }
  //#endregion
