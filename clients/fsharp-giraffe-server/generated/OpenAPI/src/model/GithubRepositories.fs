namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.GithubRepositorieslinks
open OpenAPI.Model.GithubRepository

module GithubRepositories =

  //#region GithubRepositories


  type GithubRepositories = {
    Class : string;
    Links : GithubRepositorieslinks;
    Items : GithubRepository[];
    LastPage : int;
    NextPage : int;
    PageSize : int;
  }
  //#endregion
