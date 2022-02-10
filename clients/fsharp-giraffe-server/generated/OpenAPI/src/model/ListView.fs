namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.FreeStyleProject

module ListView =

  //#region ListView


  type ListView = {
    Class : string;
    Description : string;
    Jobs : FreeStyleProject[];
    Name : string;
    Url : string;
  }
  //#endregion
