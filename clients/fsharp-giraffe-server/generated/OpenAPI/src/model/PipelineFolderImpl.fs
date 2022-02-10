namespace OpenAPI.Model

open System
open System.Collections.Generic

module PipelineFolderImpl =

  //#region PipelineFolderImpl


  type PipelineFolderImpl = {
    Class : string;
    DisplayName : string;
    FullName : string;
    Name : string;
    Organization : string;
    NumberOfFolders : int;
    NumberOfPipelines : int;
  }
  //#endregion
