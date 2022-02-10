namespace OpenAPI
open OpenAPI.Model.ComputerSet
open OpenAPI.Model.FreeStyleBuild
open OpenAPI.Model.FreeStyleProject
open OpenAPI.Model.Hudson
open OpenAPI.Model.ListView
open OpenAPI.Model.Queue
open RemoteAccessApiHandlerParams
open RemoteAccessApiServiceInterface
open System.Collections.Generic
open System
open Giraffe

module RemoteAccessApiServiceImplementation =

    //#region Service implementation
    type RemoteAccessApiServiceImpl() =
      interface IRemoteAccessApiService with

        member this.GetComputer ctx args =
          if true then
            let content = "Successfully retrieved computer details" :> obj :?> ComputerSet // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetComputerStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetComputerStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetComputerStatusCode403 { content = content }

        member this.GetJenkins ctx  =
          if true then
            let content = "Successfully retrieved Jenkins details" :> obj :?> Hudson // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetJenkinsStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetJenkinsStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetJenkinsStatusCode403 { content = content }

        member this.GetJob ctx args =
          if true then
            let content = "Successfully retrieved job details" :> obj :?> FreeStyleProject // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetJobStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetJobStatusCode401 { content = content }
          else if true then
            let content = "Jenkins requires authentication - please set username and password" 
            GetJobStatusCode403 { content = content }
          else
            let content = "Job cannot be found on Jenkins instance" 
            GetJobStatusCode404 { content = content }

        member this.GetJobConfig ctx args =
          if true then
            let content = "Successfully retrieved job configuration in config.xml format" :> obj :?> string // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetJobConfigStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetJobConfigStatusCode401 { content = content }
          else if true then
            let content = "Jenkins requires authentication - please set username and password" 
            GetJobConfigStatusCode403 { content = content }
          else
            let content = "Job cannot be found on Jenkins instance" 
            GetJobConfigStatusCode404 { content = content }

        member this.GetJobLastBuild ctx args =
          if true then
            let content = "Successfully retrieved job&#39;s last build details" :> obj :?> FreeStyleBuild // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetJobLastBuildStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetJobLastBuildStatusCode401 { content = content }
          else if true then
            let content = "Jenkins requires authentication - please set username and password" 
            GetJobLastBuildStatusCode403 { content = content }
          else
            let content = "Job cannot be found on Jenkins instance" 
            GetJobLastBuildStatusCode404 { content = content }

        member this.GetJobProgressiveText ctx args =
          if true then
            let content = "Successfully retrieved job&#39;s build progressive text output" 
            GetJobProgressiveTextStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetJobProgressiveTextStatusCode401 { content = content }
          else if true then
            let content = "Jenkins requires authentication - please set username and password" 
            GetJobProgressiveTextStatusCode403 { content = content }
          else
            let content = "Job cannot be found on Jenkins instance" 
            GetJobProgressiveTextStatusCode404 { content = content }

        member this.GetQueue ctx  =
          if true then
            let content = "Successfully retrieved queue details" :> obj :?> Queue // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetQueueStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetQueueStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetQueueStatusCode403 { content = content }

        member this.GetQueueItem ctx args =
          if true then
            let content = "Successfully retrieved queued item details" :> obj :?> Queue // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetQueueItemStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetQueueItemStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetQueueItemStatusCode403 { content = content }

        member this.GetView ctx args =
          if true then
            let content = "Successfully retrieved view details" :> obj :?> ListView // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetViewStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetViewStatusCode401 { content = content }
          else if true then
            let content = "Jenkins requires authentication - please set username and password" 
            GetViewStatusCode403 { content = content }
          else
            let content = "View cannot be found on Jenkins instance" 
            GetViewStatusCode404 { content = content }

        member this.GetViewConfig ctx args =
          if true then
            let content = "Successfully retrieved view configuration in config.xml format" :> obj :?> string // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetViewConfigStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetViewConfigStatusCode401 { content = content }
          else if true then
            let content = "Jenkins requires authentication - please set username and password" 
            GetViewConfigStatusCode403 { content = content }
          else
            let content = "View cannot be found on Jenkins instance" 
            GetViewConfigStatusCode404 { content = content }

        member this.HeadJenkins ctx  =
          if true then
            let content = "Successfully retrieved Jenkins headers" 
            HeadJenkinsStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            HeadJenkinsStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            HeadJenkinsStatusCode403 { content = content }

        member this.PostCreateItem ctx args =
          if true then
            let content = "Successfully created a new job" 
            PostCreateItemStatusCode200 { content = content }
          else if true then
            let content = "An error has occurred - error message is embedded inside the HTML response" :> obj :?> string // this cast is obviously wrong, and is only intended to allow generated project to compile   
            PostCreateItemStatusCode400 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            PostCreateItemStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            PostCreateItemStatusCode403 { content = content }

        member this.PostCreateView ctx args =
          if true then
            let content = "Successfully created the view" 
            PostCreateViewStatusCode200 { content = content }
          else if true then
            let content = "An error has occurred - error message is embedded inside the HTML response" :> obj :?> string // this cast is obviously wrong, and is only intended to allow generated project to compile   
            PostCreateViewStatusCode400 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            PostCreateViewStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            PostCreateViewStatusCode403 { content = content }

        member this.PostJobBuild ctx args =
          if true then
            let content = "Successfully built the job (backward compatibility for older versions of Jenkins)" 
            PostJobBuildStatusCode200 { content = content }
          else if true then
            let content = "Successfully built the job" 
            PostJobBuildStatusCode201 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            PostJobBuildStatusCode401 { content = content }
          else if true then
            let content = "Jenkins requires authentication - please set username and password" 
            PostJobBuildStatusCode403 { content = content }
          else
            let content = "Job cannot be found on Jenkins instance" 
            PostJobBuildStatusCode404 { content = content }

        member this.PostJobConfig ctx args =
          if true then
            let content = "Successfully retrieved job configuration in config.xml format" 
            PostJobConfigStatusCode200 { content = content }
          else if true then
            let content = "An error has occurred - error message is embedded inside the HTML response" :> obj :?> string // this cast is obviously wrong, and is only intended to allow generated project to compile   
            PostJobConfigStatusCode400 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            PostJobConfigStatusCode401 { content = content }
          else if true then
            let content = "Jenkins requires authentication - please set username and password" 
            PostJobConfigStatusCode403 { content = content }
          else
            let content = "Job cannot be found on Jenkins instance" 
            PostJobConfigStatusCode404 { content = content }

        member this.PostJobDelete ctx args =
          if true then
            let content = "Successfully deleted the job" 
            PostJobDeleteStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            PostJobDeleteStatusCode401 { content = content }
          else if true then
            let content = "Jenkins requires authentication - please set username and password" 
            PostJobDeleteStatusCode403 { content = content }
          else
            let content = "Job cannot be found on Jenkins instance" 
            PostJobDeleteStatusCode404 { content = content }

        member this.PostJobDisable ctx args =
          if true then
            let content = "Successfully disabled the job" 
            PostJobDisableStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            PostJobDisableStatusCode401 { content = content }
          else if true then
            let content = "Jenkins requires authentication - please set username and password" 
            PostJobDisableStatusCode403 { content = content }
          else
            let content = "Job cannot be found on Jenkins instance" 
            PostJobDisableStatusCode404 { content = content }

        member this.PostJobEnable ctx args =
          if true then
            let content = "Successfully enabled the job" 
            PostJobEnableStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            PostJobEnableStatusCode401 { content = content }
          else if true then
            let content = "Jenkins requires authentication - please set username and password" 
            PostJobEnableStatusCode403 { content = content }
          else
            let content = "Job cannot be found on Jenkins instance" 
            PostJobEnableStatusCode404 { content = content }

        member this.PostJobLastBuildStop ctx args =
          if true then
            let content = "Successfully stopped the job" 
            PostJobLastBuildStopStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            PostJobLastBuildStopStatusCode401 { content = content }
          else if true then
            let content = "Jenkins requires authentication - please set username and password" 
            PostJobLastBuildStopStatusCode403 { content = content }
          else
            let content = "Job cannot be found on Jenkins instance" 
            PostJobLastBuildStopStatusCode404 { content = content }

        member this.PostViewConfig ctx args =
          if true then
            let content = "Successfully updated view configuration" 
            PostViewConfigStatusCode200 { content = content }
          else if true then
            let content = "An error has occurred - error message is embedded inside the HTML response" :> obj :?> string // this cast is obviously wrong, and is only intended to allow generated project to compile   
            PostViewConfigStatusCode400 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            PostViewConfigStatusCode401 { content = content }
          else if true then
            let content = "Jenkins requires authentication - please set username and password" 
            PostViewConfigStatusCode403 { content = content }
          else
            let content = "View cannot be found on Jenkins instance" 
            PostViewConfigStatusCode404 { content = content }

      //#endregion

    let RemoteAccessApiService = RemoteAccessApiServiceImpl() :> IRemoteAccessApiService