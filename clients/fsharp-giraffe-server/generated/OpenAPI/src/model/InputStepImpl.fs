namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.InputStepImpllinks
open OpenAPI.Model.StringParameterDefinition

module InputStepImpl =

  //#region InputStepImpl


  type InputStepImpl = {
    Class : string;
    Links : InputStepImpllinks;
    Id : string;
    Message : string;
    Ok : string;
    Parameters : StringParameterDefinition[];
    Submitter : string;
  }
  //#endregion
