namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.StringParameterValue

module StringParameterDefinition =

  //#region StringParameterDefinition


  type StringParameterDefinition = {
    Class : string;
    DefaultParameterValue : StringParameterValue;
    Description : string;
    Name : string;
    Type : string;
  }
  //#endregion
