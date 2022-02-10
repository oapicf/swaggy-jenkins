namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.GithubContent

module GithubFile =

  //#region GithubFile


  type GithubFile = {
    Content : GithubContent;
    Class : string;
  }
  //#endregion
