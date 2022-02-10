namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.GithubRepositorylinks
open OpenAPI.Model.GithubRepositorypermissions

module GithubRepository =

  //#region GithubRepository


  type GithubRepository = {
    Class : string;
    Links : GithubRepositorylinks;
    DefaultBranch : string;
    Description : string;
    Name : string;
    Permissions : GithubRepositorypermissions;
    Private : bool;
    FullName : string;
  }
  //#endregion
