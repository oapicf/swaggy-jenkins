namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.ExtensionClassImpllinks

module ExtensionClassImpl =

  //#region ExtensionClassImpl


  type ExtensionClassImpl = {
    Class : string;
    Links : ExtensionClassImpllinks;
    Classes : string[];
  }
  //#endregion
