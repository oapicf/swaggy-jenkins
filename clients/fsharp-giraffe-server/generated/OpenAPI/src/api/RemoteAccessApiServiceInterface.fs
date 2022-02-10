namespace OpenAPI
open RemoteAccessApiHandlerParams
open System
open Giraffe
open Microsoft.AspNetCore.Http


module RemoteAccessApiServiceInterface =

    //#region Service interface
    type IRemoteAccessApiService =
      abstract member GetComputer:HttpContext -> GetComputerArgs->GetComputerResult
      abstract member GetJenkins:HttpContext ->GetJenkinsResult
      abstract member GetJob:HttpContext -> GetJobArgs->GetJobResult
      abstract member GetJobConfig:HttpContext -> GetJobConfigArgs->GetJobConfigResult
      abstract member GetJobLastBuild:HttpContext -> GetJobLastBuildArgs->GetJobLastBuildResult
      abstract member GetJobProgressiveText:HttpContext -> GetJobProgressiveTextArgs->GetJobProgressiveTextResult
      abstract member GetQueue:HttpContext ->GetQueueResult
      abstract member GetQueueItem:HttpContext -> GetQueueItemArgs->GetQueueItemResult
      abstract member GetView:HttpContext -> GetViewArgs->GetViewResult
      abstract member GetViewConfig:HttpContext -> GetViewConfigArgs->GetViewConfigResult
      abstract member HeadJenkins:HttpContext ->HeadJenkinsResult
      abstract member PostCreateItem:HttpContext -> PostCreateItemArgs->PostCreateItemResult
      abstract member PostCreateView:HttpContext -> PostCreateViewArgs->PostCreateViewResult
      abstract member PostJobBuild:HttpContext -> PostJobBuildArgs->PostJobBuildResult
      abstract member PostJobConfig:HttpContext -> PostJobConfigArgs->PostJobConfigResult
      abstract member PostJobDelete:HttpContext -> PostJobDeleteArgs->PostJobDeleteResult
      abstract member PostJobDisable:HttpContext -> PostJobDisableArgs->PostJobDisableResult
      abstract member PostJobEnable:HttpContext -> PostJobEnableArgs->PostJobEnableResult
      abstract member PostJobLastBuildStop:HttpContext -> PostJobLastBuildStopArgs->PostJobLastBuildStopResult
      abstract member PostViewConfig:HttpContext -> PostViewConfigArgs->PostViewConfigResult
    //#endregion