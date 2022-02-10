namespace OpenAPI.Model

open System
open System.Collections.Generic

module DefaultCrumbIssuer =

  //#region DefaultCrumbIssuer


  type DefaultCrumbIssuer = {
    Class : string;
    Crumb : string;
    CrumbRequestField : string;
  }
  //#endregion
