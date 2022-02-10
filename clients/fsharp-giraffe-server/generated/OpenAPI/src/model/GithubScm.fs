namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.GithubScmlinks

module GithubScm =

  //#region GithubScm


  type GithubScm = {
    Class : string;
    Links : GithubScmlinks;
    CredentialId : string;
    Id : string;
    Uri : string;
  }
  //#endregion
