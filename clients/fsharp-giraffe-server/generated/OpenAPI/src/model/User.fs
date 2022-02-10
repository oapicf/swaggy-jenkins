namespace OpenAPI.Model

open System
open System.Collections.Generic

module User =

  //#region User


  type User = {
    Class : string;
    Id : string;
    FullName : string;
    Email : string;
    Name : string;
  }
  //#endregion
