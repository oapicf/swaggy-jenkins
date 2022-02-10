namespace OpenAPI.Model

open System
open System.Collections.Generic

module GithubContent =

  //#region GithubContent


  type GithubContent = {
    Name : string;
    Sha : string;
    Class : string;
    Repo : string;
    Size : int;
    Owner : string;
    Path : string;
    Base64Data : string;
  }
  //#endregion
