namespace OpenAPI
open RemoteAccessApiHandlerParams
open System
open Microsoft.AspNetCore.Http


module RemoteAccessApiServiceInterface =

    //#region Service interface
    type IRemoteAccessApiService =
      abstract member GetComputer : unit -> GetComputerResult
      abstract member GetJenkins : unit -> GetJenkinsResult
      abstract member GetJob : unit -> GetJobResult
      abstract member GetJobConfig : unit -> GetJobConfigResult
      abstract member GetJobLastBuild : unit -> GetJobLastBuildResult
      abstract member GetJobProgressiveText : unit -> GetJobProgressiveTextResult
      abstract member GetQueue : unit -> GetQueueResult
      abstract member GetQueueItem : unit -> GetQueueItemResult
      abstract member GetView : unit -> GetViewResult
      abstract member GetViewConfig : unit -> GetViewConfigResult
      abstract member HeadJenkins : unit -> HeadJenkinsResult
      abstract member PostCreateItem : PostCreateItemBodyParams -> PostCreateItemResult
      abstract member PostCreateView : PostCreateViewBodyParams -> PostCreateViewResult
      abstract member PostJobBuild : unit -> PostJobBuildResult
      abstract member PostJobConfig : PostJobConfigBodyParams -> PostJobConfigResult
      abstract member PostJobDelete : unit -> PostJobDeleteResult
      abstract member PostJobDisable : unit -> PostJobDisableResult
      abstract member PostJobEnable : unit -> PostJobEnableResult
      abstract member PostJobLastBuildStop : unit -> PostJobLastBuildStopResult
      abstract member PostViewConfig : PostViewConfigBodyParams -> PostViewConfigResult
    //#endregion