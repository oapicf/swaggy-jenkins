namespace OpenAPI

open OpenAPI.Model.ComputerSet
open OpenAPI.Model.FreeStyleBuild
open OpenAPI.Model.FreeStyleProject
open OpenAPI.Model.Hudson
open OpenAPI.Model.ListView
open OpenAPI.Model.Queue
open System.Collections.Generic
open System

module RemoteAccessApiHandlerParams =


    //#region Query parameters
    [<CLIMutable>]
    type GetComputerQueryParams = {
      depth : int ;

    }
    //#endregion


    type GetComputerStatusCode200Response = {
      content:ComputerSet;
      
    }

    type GetComputerStatusCode401Response = {
      content:string;
      
    }

    type GetComputerStatusCode403Response = {
      content:string;
      
    }
    type GetComputerResult = GetComputerStatusCode200 of GetComputerStatusCode200Response|GetComputerStatusCode401 of GetComputerStatusCode401Response|GetComputerStatusCode403 of GetComputerStatusCode403Response

    type GetComputerArgs = {
      queryParams:Result<GetComputerQueryParams,string>;
    }


    type GetJenkinsStatusCode200Response = {
      content:Hudson;
      
    }

    type GetJenkinsStatusCode401Response = {
      content:string;
      
    }

    type GetJenkinsStatusCode403Response = {
      content:string;
      
    }
    type GetJenkinsResult = GetJenkinsStatusCode200 of GetJenkinsStatusCode200Response|GetJenkinsStatusCode401 of GetJenkinsStatusCode401Response|GetJenkinsStatusCode403 of GetJenkinsStatusCode403Response

    //#region Path parameters
    [<CLIMutable>]
    type GetJobPathParams = {
      name : string ;
    }
    //#endregion


    type GetJobStatusCode200Response = {
      content:FreeStyleProject;
      
    }

    type GetJobStatusCode401Response = {
      content:string;
      
    }

    type GetJobStatusCode403Response = {
      content:string;
      
    }

    type GetJobStatusCode404Response = {
      content:string;
      
    }
    type GetJobResult = GetJobStatusCode200 of GetJobStatusCode200Response|GetJobStatusCode401 of GetJobStatusCode401Response|GetJobStatusCode403 of GetJobStatusCode403Response|GetJobStatusCode404 of GetJobStatusCode404Response

    type GetJobArgs = {
      pathParams:GetJobPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetJobConfigPathParams = {
      name : string ;
    }
    //#endregion


    type GetJobConfigStatusCode200Response = {
      content:string;
      
    }

    type GetJobConfigStatusCode401Response = {
      content:string;
      
    }

    type GetJobConfigStatusCode403Response = {
      content:string;
      
    }

    type GetJobConfigStatusCode404Response = {
      content:string;
      
    }
    type GetJobConfigResult = GetJobConfigStatusCode200 of GetJobConfigStatusCode200Response|GetJobConfigStatusCode401 of GetJobConfigStatusCode401Response|GetJobConfigStatusCode403 of GetJobConfigStatusCode403Response|GetJobConfigStatusCode404 of GetJobConfigStatusCode404Response

    type GetJobConfigArgs = {
      pathParams:GetJobConfigPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetJobLastBuildPathParams = {
      name : string ;
    }
    //#endregion


    type GetJobLastBuildStatusCode200Response = {
      content:FreeStyleBuild;
      
    }

    type GetJobLastBuildStatusCode401Response = {
      content:string;
      
    }

    type GetJobLastBuildStatusCode403Response = {
      content:string;
      
    }

    type GetJobLastBuildStatusCode404Response = {
      content:string;
      
    }
    type GetJobLastBuildResult = GetJobLastBuildStatusCode200 of GetJobLastBuildStatusCode200Response|GetJobLastBuildStatusCode401 of GetJobLastBuildStatusCode401Response|GetJobLastBuildStatusCode403 of GetJobLastBuildStatusCode403Response|GetJobLastBuildStatusCode404 of GetJobLastBuildStatusCode404Response

    type GetJobLastBuildArgs = {
      pathParams:GetJobLastBuildPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetJobProgressiveTextPathParams = {
      name : string ;
    //#endregion
      number : string ;
    }
    //#endregion

    //#region Query parameters
    [<CLIMutable>]
    type GetJobProgressiveTextQueryParams = {
      start : string ;

    }
    //#endregion


    type GetJobProgressiveTextStatusCode200Response = {
      content:string;
      
    }

    type GetJobProgressiveTextStatusCode401Response = {
      content:string;
      
    }

    type GetJobProgressiveTextStatusCode403Response = {
      content:string;
      
    }

    type GetJobProgressiveTextStatusCode404Response = {
      content:string;
      
    }
    type GetJobProgressiveTextResult = GetJobProgressiveTextStatusCode200 of GetJobProgressiveTextStatusCode200Response|GetJobProgressiveTextStatusCode401 of GetJobProgressiveTextStatusCode401Response|GetJobProgressiveTextStatusCode403 of GetJobProgressiveTextStatusCode403Response|GetJobProgressiveTextStatusCode404 of GetJobProgressiveTextStatusCode404Response

    type GetJobProgressiveTextArgs = {
      pathParams:GetJobProgressiveTextPathParams;
      queryParams:Result<GetJobProgressiveTextQueryParams,string>;
    }


    type GetQueueStatusCode200Response = {
      content:Queue;
      
    }

    type GetQueueStatusCode401Response = {
      content:string;
      
    }

    type GetQueueStatusCode403Response = {
      content:string;
      
    }
    type GetQueueResult = GetQueueStatusCode200 of GetQueueStatusCode200Response|GetQueueStatusCode401 of GetQueueStatusCode401Response|GetQueueStatusCode403 of GetQueueStatusCode403Response

    //#region Path parameters
    [<CLIMutable>]
    type GetQueueItemPathParams = {
      number : string ;
    }
    //#endregion


    type GetQueueItemStatusCode200Response = {
      content:Queue;
      
    }

    type GetQueueItemStatusCode401Response = {
      content:string;
      
    }

    type GetQueueItemStatusCode403Response = {
      content:string;
      
    }
    type GetQueueItemResult = GetQueueItemStatusCode200 of GetQueueItemStatusCode200Response|GetQueueItemStatusCode401 of GetQueueItemStatusCode401Response|GetQueueItemStatusCode403 of GetQueueItemStatusCode403Response

    type GetQueueItemArgs = {
      pathParams:GetQueueItemPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetViewPathParams = {
      name : string ;
    }
    //#endregion


    type GetViewStatusCode200Response = {
      content:ListView;
      
    }

    type GetViewStatusCode401Response = {
      content:string;
      
    }

    type GetViewStatusCode403Response = {
      content:string;
      
    }

    type GetViewStatusCode404Response = {
      content:string;
      
    }
    type GetViewResult = GetViewStatusCode200 of GetViewStatusCode200Response|GetViewStatusCode401 of GetViewStatusCode401Response|GetViewStatusCode403 of GetViewStatusCode403Response|GetViewStatusCode404 of GetViewStatusCode404Response

    type GetViewArgs = {
      pathParams:GetViewPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetViewConfigPathParams = {
      name : string ;
    }
    //#endregion


    type GetViewConfigStatusCode200Response = {
      content:string;
      
    }

    type GetViewConfigStatusCode401Response = {
      content:string;
      
    }

    type GetViewConfigStatusCode403Response = {
      content:string;
      
    }

    type GetViewConfigStatusCode404Response = {
      content:string;
      
    }
    type GetViewConfigResult = GetViewConfigStatusCode200 of GetViewConfigStatusCode200Response|GetViewConfigStatusCode401 of GetViewConfigStatusCode401Response|GetViewConfigStatusCode403 of GetViewConfigStatusCode403Response|GetViewConfigStatusCode404 of GetViewConfigStatusCode404Response

    type GetViewConfigArgs = {
      pathParams:GetViewConfigPathParams;
    }


    type HeadJenkinsStatusCode200Response = {
      content:string;
      
    }

    type HeadJenkinsStatusCode401Response = {
      content:string;
      
    }

    type HeadJenkinsStatusCode403Response = {
      content:string;
      
    }
    type HeadJenkinsResult = HeadJenkinsStatusCode200 of HeadJenkinsStatusCode200Response|HeadJenkinsStatusCode401 of HeadJenkinsStatusCode401Response|HeadJenkinsStatusCode403 of HeadJenkinsStatusCode403Response


    //#region Query parameters
    [<CLIMutable>]
    type PostCreateItemQueryParams = {
      name : string ;


      from : string option;


      mode : string option;

    }
    //#endregion

    //#region Body parameters
    [<CLIMutable>]
    type PostCreateItemBodyParams = string
    //#endregion

    //#region Header parameters
    [<CLIMutable>]
    type PostCreateItemHeaderParams = {
      jenkinsCrumb : string option;
    //#endregion

    //#region Header parameters
      contentType : string option;
    }
    //#endregion


    type PostCreateItemStatusCode200Response = {
      content:string;
      
    }

    type PostCreateItemStatusCode400Response = {
      content:string;
      
    }

    type PostCreateItemStatusCode401Response = {
      content:string;
      
    }

    type PostCreateItemStatusCode403Response = {
      content:string;
      
    }
    type PostCreateItemResult = PostCreateItemStatusCode200 of PostCreateItemStatusCode200Response|PostCreateItemStatusCode400 of PostCreateItemStatusCode400Response|PostCreateItemStatusCode401 of PostCreateItemStatusCode401Response|PostCreateItemStatusCode403 of PostCreateItemStatusCode403Response

    type PostCreateItemArgs = {
      headerParams:PostCreateItemHeaderParams;
      queryParams:Result<PostCreateItemQueryParams,string>;
      bodyParams:PostCreateItemBodyParams
    }

    //#region Query parameters
    [<CLIMutable>]
    type PostCreateViewQueryParams = {
      name : string ;

    }
    //#endregion

    //#region Body parameters
    [<CLIMutable>]
    type PostCreateViewBodyParams = string
    //#endregion

    //#region Header parameters
    [<CLIMutable>]
    type PostCreateViewHeaderParams = {
      jenkinsCrumb : string option;
    //#endregion

    //#region Header parameters
      contentType : string option;
    }
    //#endregion


    type PostCreateViewStatusCode200Response = {
      content:string;
      
    }

    type PostCreateViewStatusCode400Response = {
      content:string;
      
    }

    type PostCreateViewStatusCode401Response = {
      content:string;
      
    }

    type PostCreateViewStatusCode403Response = {
      content:string;
      
    }
    type PostCreateViewResult = PostCreateViewStatusCode200 of PostCreateViewStatusCode200Response|PostCreateViewStatusCode400 of PostCreateViewStatusCode400Response|PostCreateViewStatusCode401 of PostCreateViewStatusCode401Response|PostCreateViewStatusCode403 of PostCreateViewStatusCode403Response

    type PostCreateViewArgs = {
      headerParams:PostCreateViewHeaderParams;
      queryParams:Result<PostCreateViewQueryParams,string>;
      bodyParams:PostCreateViewBodyParams
    }
    //#region Path parameters
    [<CLIMutable>]
    type PostJobBuildPathParams = {
      name : string ;
    }
    //#endregion

    //#region Query parameters
    [<CLIMutable>]
    type PostJobBuildQueryParams = {
      json : string ;


      token : string option;

    }
    //#endregion

    //#region Header parameters
    [<CLIMutable>]
    type PostJobBuildHeaderParams = {
      jenkinsCrumb : string option;
    }
    //#endregion


    type PostJobBuildStatusCode200Response = {
      content:string;
      
    }

    type PostJobBuildStatusCode201Response = {
      content:string;
      
    }

    type PostJobBuildStatusCode401Response = {
      content:string;
      
    }

    type PostJobBuildStatusCode403Response = {
      content:string;
      
    }

    type PostJobBuildStatusCode404Response = {
      content:string;
      
    }
    type PostJobBuildResult = PostJobBuildStatusCode200 of PostJobBuildStatusCode200Response|PostJobBuildStatusCode201 of PostJobBuildStatusCode201Response|PostJobBuildStatusCode401 of PostJobBuildStatusCode401Response|PostJobBuildStatusCode403 of PostJobBuildStatusCode403Response|PostJobBuildStatusCode404 of PostJobBuildStatusCode404Response

    type PostJobBuildArgs = {
      headerParams:PostJobBuildHeaderParams;
      pathParams:PostJobBuildPathParams;
      queryParams:Result<PostJobBuildQueryParams,string>;
    }
    //#region Path parameters
    [<CLIMutable>]
    type PostJobConfigPathParams = {
      name : string ;
    }
    //#endregion

    //#region Body parameters
    [<CLIMutable>]
    type PostJobConfigBodyParams = string
    //#endregion

    //#region Header parameters
    [<CLIMutable>]
    type PostJobConfigHeaderParams = {
      jenkinsCrumb : string option;
    }
    //#endregion


    type PostJobConfigStatusCode200Response = {
      content:string;
      
    }

    type PostJobConfigStatusCode400Response = {
      content:string;
      
    }

    type PostJobConfigStatusCode401Response = {
      content:string;
      
    }

    type PostJobConfigStatusCode403Response = {
      content:string;
      
    }

    type PostJobConfigStatusCode404Response = {
      content:string;
      
    }
    type PostJobConfigResult = PostJobConfigStatusCode200 of PostJobConfigStatusCode200Response|PostJobConfigStatusCode400 of PostJobConfigStatusCode400Response|PostJobConfigStatusCode401 of PostJobConfigStatusCode401Response|PostJobConfigStatusCode403 of PostJobConfigStatusCode403Response|PostJobConfigStatusCode404 of PostJobConfigStatusCode404Response

    type PostJobConfigArgs = {
      headerParams:PostJobConfigHeaderParams;
      pathParams:PostJobConfigPathParams;
      bodyParams:PostJobConfigBodyParams
    }
    //#region Path parameters
    [<CLIMutable>]
    type PostJobDeletePathParams = {
      name : string ;
    }
    //#endregion

    //#region Header parameters
    [<CLIMutable>]
    type PostJobDeleteHeaderParams = {
      jenkinsCrumb : string option;
    }
    //#endregion


    type PostJobDeleteStatusCode200Response = {
      content:string;
      
    }

    type PostJobDeleteStatusCode401Response = {
      content:string;
      
    }

    type PostJobDeleteStatusCode403Response = {
      content:string;
      
    }

    type PostJobDeleteStatusCode404Response = {
      content:string;
      
    }
    type PostJobDeleteResult = PostJobDeleteStatusCode200 of PostJobDeleteStatusCode200Response|PostJobDeleteStatusCode401 of PostJobDeleteStatusCode401Response|PostJobDeleteStatusCode403 of PostJobDeleteStatusCode403Response|PostJobDeleteStatusCode404 of PostJobDeleteStatusCode404Response

    type PostJobDeleteArgs = {
      headerParams:PostJobDeleteHeaderParams;
      pathParams:PostJobDeletePathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type PostJobDisablePathParams = {
      name : string ;
    }
    //#endregion

    //#region Header parameters
    [<CLIMutable>]
    type PostJobDisableHeaderParams = {
      jenkinsCrumb : string option;
    }
    //#endregion


    type PostJobDisableStatusCode200Response = {
      content:string;
      
    }

    type PostJobDisableStatusCode401Response = {
      content:string;
      
    }

    type PostJobDisableStatusCode403Response = {
      content:string;
      
    }

    type PostJobDisableStatusCode404Response = {
      content:string;
      
    }
    type PostJobDisableResult = PostJobDisableStatusCode200 of PostJobDisableStatusCode200Response|PostJobDisableStatusCode401 of PostJobDisableStatusCode401Response|PostJobDisableStatusCode403 of PostJobDisableStatusCode403Response|PostJobDisableStatusCode404 of PostJobDisableStatusCode404Response

    type PostJobDisableArgs = {
      headerParams:PostJobDisableHeaderParams;
      pathParams:PostJobDisablePathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type PostJobEnablePathParams = {
      name : string ;
    }
    //#endregion

    //#region Header parameters
    [<CLIMutable>]
    type PostJobEnableHeaderParams = {
      jenkinsCrumb : string option;
    }
    //#endregion


    type PostJobEnableStatusCode200Response = {
      content:string;
      
    }

    type PostJobEnableStatusCode401Response = {
      content:string;
      
    }

    type PostJobEnableStatusCode403Response = {
      content:string;
      
    }

    type PostJobEnableStatusCode404Response = {
      content:string;
      
    }
    type PostJobEnableResult = PostJobEnableStatusCode200 of PostJobEnableStatusCode200Response|PostJobEnableStatusCode401 of PostJobEnableStatusCode401Response|PostJobEnableStatusCode403 of PostJobEnableStatusCode403Response|PostJobEnableStatusCode404 of PostJobEnableStatusCode404Response

    type PostJobEnableArgs = {
      headerParams:PostJobEnableHeaderParams;
      pathParams:PostJobEnablePathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type PostJobLastBuildStopPathParams = {
      name : string ;
    }
    //#endregion

    //#region Header parameters
    [<CLIMutable>]
    type PostJobLastBuildStopHeaderParams = {
      jenkinsCrumb : string option;
    }
    //#endregion


    type PostJobLastBuildStopStatusCode200Response = {
      content:string;
      
    }

    type PostJobLastBuildStopStatusCode401Response = {
      content:string;
      
    }

    type PostJobLastBuildStopStatusCode403Response = {
      content:string;
      
    }

    type PostJobLastBuildStopStatusCode404Response = {
      content:string;
      
    }
    type PostJobLastBuildStopResult = PostJobLastBuildStopStatusCode200 of PostJobLastBuildStopStatusCode200Response|PostJobLastBuildStopStatusCode401 of PostJobLastBuildStopStatusCode401Response|PostJobLastBuildStopStatusCode403 of PostJobLastBuildStopStatusCode403Response|PostJobLastBuildStopStatusCode404 of PostJobLastBuildStopStatusCode404Response

    type PostJobLastBuildStopArgs = {
      headerParams:PostJobLastBuildStopHeaderParams;
      pathParams:PostJobLastBuildStopPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type PostViewConfigPathParams = {
      name : string ;
    }
    //#endregion

    //#region Body parameters
    [<CLIMutable>]
    type PostViewConfigBodyParams = string
    //#endregion

    //#region Header parameters
    [<CLIMutable>]
    type PostViewConfigHeaderParams = {
      jenkinsCrumb : string option;
    }
    //#endregion


    type PostViewConfigStatusCode200Response = {
      content:string;
      
    }

    type PostViewConfigStatusCode400Response = {
      content:string;
      
    }

    type PostViewConfigStatusCode401Response = {
      content:string;
      
    }

    type PostViewConfigStatusCode403Response = {
      content:string;
      
    }

    type PostViewConfigStatusCode404Response = {
      content:string;
      
    }
    type PostViewConfigResult = PostViewConfigStatusCode200 of PostViewConfigStatusCode200Response|PostViewConfigStatusCode400 of PostViewConfigStatusCode400Response|PostViewConfigStatusCode401 of PostViewConfigStatusCode401Response|PostViewConfigStatusCode403 of PostViewConfigStatusCode403Response|PostViewConfigStatusCode404 of PostViewConfigStatusCode404Response

    type PostViewConfigArgs = {
      headerParams:PostViewConfigHeaderParams;
      pathParams:PostViewConfigPathParams;
      bodyParams:PostViewConfigBodyParams
    }
