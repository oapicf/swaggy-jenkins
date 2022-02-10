namespace OpenAPI

open OpenAPI.Model.BranchImpl
open OpenAPI.Model.FavoriteImpl
open OpenAPI.Model.GithubOrganization
open OpenAPI.Model.GithubScm
open OpenAPI.Model.MultibranchPipeline
open OpenAPI.Model.Organisation
open OpenAPI.Model.Pipeline
open OpenAPI.Model.PipelineActivity
open OpenAPI.Model.PipelineFolderImpl
open OpenAPI.Model.PipelineImpl
open OpenAPI.Model.PipelineRun
open OpenAPI.Model.PipelineRunNode
open OpenAPI.Model.PipelineStepImpl
open OpenAPI.Model.QueueItemImpl
open OpenAPI.Model.UNKNOWN_BASE_TYPE
open OpenAPI.Model.User
open System.Collections.Generic
open System

module BlueOceanApiHandlerParams =

    //#region Path parameters
    [<CLIMutable>]
    type DeletePipelineQueueItemPathParams = {
      organization : string ;
    //#endregion
      pipeline : string ;
    //#endregion
      queue : string ;
    }
    //#endregion


    type DeletePipelineQueueItemStatusCode200Response = {
      content:string;
      
    }

    type DeletePipelineQueueItemStatusCode401Response = {
      content:string;
      
    }

    type DeletePipelineQueueItemStatusCode403Response = {
      content:string;
      
    }
    type DeletePipelineQueueItemResult = DeletePipelineQueueItemStatusCode200 of DeletePipelineQueueItemStatusCode200Response|DeletePipelineQueueItemStatusCode401 of DeletePipelineQueueItemStatusCode401Response|DeletePipelineQueueItemStatusCode403 of DeletePipelineQueueItemStatusCode403Response

    type DeletePipelineQueueItemArgs = {
      pathParams:DeletePipelineQueueItemPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetAuthenticatedUserPathParams = {
      organization : string ;
    }
    //#endregion


    type GetAuthenticatedUserStatusCode200Response = {
      content:User;
      
    }

    type GetAuthenticatedUserStatusCode401Response = {
      content:string;
      
    }

    type GetAuthenticatedUserStatusCode403Response = {
      content:string;
      
    }
    type GetAuthenticatedUserResult = GetAuthenticatedUserStatusCode200 of GetAuthenticatedUserStatusCode200Response|GetAuthenticatedUserStatusCode401 of GetAuthenticatedUserStatusCode401Response|GetAuthenticatedUserStatusCode403 of GetAuthenticatedUserStatusCode403Response

    type GetAuthenticatedUserArgs = {
      pathParams:GetAuthenticatedUserPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetClassesPathParams = {
      _class : string ;
    }
    //#endregion


    type GetClassesStatusCode200Response = {
      content:string;
      
    }

    type GetClassesStatusCode401Response = {
      content:string;
      
    }

    type GetClassesStatusCode403Response = {
      content:string;
      
    }
    type GetClassesResult = GetClassesStatusCode200 of GetClassesStatusCode200Response|GetClassesStatusCode401 of GetClassesStatusCode401Response|GetClassesStatusCode403 of GetClassesStatusCode403Response

    type GetClassesArgs = {
      pathParams:GetClassesPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetJsonWebKeyPathParams = {
      key : int ;
    }
    //#endregion


    type GetJsonWebKeyStatusCode200Response = {
      content:string;
      
    }

    type GetJsonWebKeyStatusCode401Response = {
      content:string;
      
    }

    type GetJsonWebKeyStatusCode403Response = {
      content:string;
      
    }
    type GetJsonWebKeyResult = GetJsonWebKeyStatusCode200 of GetJsonWebKeyStatusCode200Response|GetJsonWebKeyStatusCode401 of GetJsonWebKeyStatusCode401Response|GetJsonWebKeyStatusCode403 of GetJsonWebKeyStatusCode403Response

    type GetJsonWebKeyArgs = {
      pathParams:GetJsonWebKeyPathParams;
    }

    //#region Query parameters
    [<CLIMutable>]
    type GetJsonWebTokenQueryParams = {
      expiryTimeInMins : int option;


      maxExpiryTimeInMins : int option;

    }
    //#endregion


    type GetJsonWebTokenStatusCode200Response = {
      content:string;
      
    }

    type GetJsonWebTokenStatusCode401Response = {
      content:string;
      
    }

    type GetJsonWebTokenStatusCode403Response = {
      content:string;
      
    }
    type GetJsonWebTokenResult = GetJsonWebTokenStatusCode200 of GetJsonWebTokenStatusCode200Response|GetJsonWebTokenStatusCode401 of GetJsonWebTokenStatusCode401Response|GetJsonWebTokenStatusCode403 of GetJsonWebTokenStatusCode403Response

    type GetJsonWebTokenArgs = {
      queryParams:Result<GetJsonWebTokenQueryParams,string>;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetOrganisationPathParams = {
      organization : string ;
    }
    //#endregion


    type GetOrganisationStatusCode200Response = {
      content:Organisation;
      
    }

    type GetOrganisationStatusCode401Response = {
      content:string;
      
    }

    type GetOrganisationStatusCode403Response = {
      content:string;
      
    }

    type GetOrganisationStatusCode404Response = {
      content:string;
      
    }
    type GetOrganisationResult = GetOrganisationStatusCode200 of GetOrganisationStatusCode200Response|GetOrganisationStatusCode401 of GetOrganisationStatusCode401Response|GetOrganisationStatusCode403 of GetOrganisationStatusCode403Response|GetOrganisationStatusCode404 of GetOrganisationStatusCode404Response

    type GetOrganisationArgs = {
      pathParams:GetOrganisationPathParams;
    }


    type GetOrganisationsStatusCode200Response = {
      content:Organisation[];
      
    }

    type GetOrganisationsStatusCode401Response = {
      content:string;
      
    }

    type GetOrganisationsStatusCode403Response = {
      content:string;
      
    }
    type GetOrganisationsResult = GetOrganisationsStatusCode200 of GetOrganisationsStatusCode200Response|GetOrganisationsStatusCode401 of GetOrganisationsStatusCode401Response|GetOrganisationsStatusCode403 of GetOrganisationsStatusCode403Response

    //#region Path parameters
    [<CLIMutable>]
    type GetPipelinePathParams = {
      organization : string ;
    //#endregion
      pipeline : string ;
    }
    //#endregion


    type GetPipelineStatusCode200Response = {
      content:Pipeline;
      
    }

    type GetPipelineStatusCode401Response = {
      content:string;
      
    }

    type GetPipelineStatusCode403Response = {
      content:string;
      
    }

    type GetPipelineStatusCode404Response = {
      content:string;
      
    }
    type GetPipelineResult = GetPipelineStatusCode200 of GetPipelineStatusCode200Response|GetPipelineStatusCode401 of GetPipelineStatusCode401Response|GetPipelineStatusCode403 of GetPipelineStatusCode403Response|GetPipelineStatusCode404 of GetPipelineStatusCode404Response

    type GetPipelineArgs = {
      pathParams:GetPipelinePathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetPipelineActivitiesPathParams = {
      organization : string ;
    //#endregion
      pipeline : string ;
    }
    //#endregion


    type GetPipelineActivitiesStatusCode200Response = {
      content:PipelineActivity[];
      
    }

    type GetPipelineActivitiesStatusCode401Response = {
      content:string;
      
    }

    type GetPipelineActivitiesStatusCode403Response = {
      content:string;
      
    }
    type GetPipelineActivitiesResult = GetPipelineActivitiesStatusCode200 of GetPipelineActivitiesStatusCode200Response|GetPipelineActivitiesStatusCode401 of GetPipelineActivitiesStatusCode401Response|GetPipelineActivitiesStatusCode403 of GetPipelineActivitiesStatusCode403Response

    type GetPipelineActivitiesArgs = {
      pathParams:GetPipelineActivitiesPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetPipelineBranchPathParams = {
      organization : string ;
    //#endregion
      pipeline : string ;
    //#endregion
      branch : string ;
    }
    //#endregion


    type GetPipelineBranchStatusCode200Response = {
      content:BranchImpl;
      
    }

    type GetPipelineBranchStatusCode401Response = {
      content:string;
      
    }

    type GetPipelineBranchStatusCode403Response = {
      content:string;
      
    }
    type GetPipelineBranchResult = GetPipelineBranchStatusCode200 of GetPipelineBranchStatusCode200Response|GetPipelineBranchStatusCode401 of GetPipelineBranchStatusCode401Response|GetPipelineBranchStatusCode403 of GetPipelineBranchStatusCode403Response

    type GetPipelineBranchArgs = {
      pathParams:GetPipelineBranchPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetPipelineBranchRunPathParams = {
      organization : string ;
    //#endregion
      pipeline : string ;
    //#endregion
      branch : string ;
    //#endregion
      run : string ;
    }
    //#endregion


    type GetPipelineBranchRunStatusCode200Response = {
      content:PipelineRun;
      
    }

    type GetPipelineBranchRunStatusCode401Response = {
      content:string;
      
    }

    type GetPipelineBranchRunStatusCode403Response = {
      content:string;
      
    }
    type GetPipelineBranchRunResult = GetPipelineBranchRunStatusCode200 of GetPipelineBranchRunStatusCode200Response|GetPipelineBranchRunStatusCode401 of GetPipelineBranchRunStatusCode401Response|GetPipelineBranchRunStatusCode403 of GetPipelineBranchRunStatusCode403Response

    type GetPipelineBranchRunArgs = {
      pathParams:GetPipelineBranchRunPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetPipelineBranchesPathParams = {
      organization : string ;
    //#endregion
      pipeline : string ;
    }
    //#endregion


    type GetPipelineBranchesStatusCode200Response = {
      content:MultibranchPipeline;
      
    }

    type GetPipelineBranchesStatusCode401Response = {
      content:string;
      
    }

    type GetPipelineBranchesStatusCode403Response = {
      content:string;
      
    }
    type GetPipelineBranchesResult = GetPipelineBranchesStatusCode200 of GetPipelineBranchesStatusCode200Response|GetPipelineBranchesStatusCode401 of GetPipelineBranchesStatusCode401Response|GetPipelineBranchesStatusCode403 of GetPipelineBranchesStatusCode403Response

    type GetPipelineBranchesArgs = {
      pathParams:GetPipelineBranchesPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetPipelineFolderPathParams = {
      organization : string ;
    //#endregion
      folder : string ;
    }
    //#endregion


    type GetPipelineFolderStatusCode200Response = {
      content:PipelineFolderImpl;
      
    }

    type GetPipelineFolderStatusCode401Response = {
      content:string;
      
    }

    type GetPipelineFolderStatusCode403Response = {
      content:string;
      
    }
    type GetPipelineFolderResult = GetPipelineFolderStatusCode200 of GetPipelineFolderStatusCode200Response|GetPipelineFolderStatusCode401 of GetPipelineFolderStatusCode401Response|GetPipelineFolderStatusCode403 of GetPipelineFolderStatusCode403Response

    type GetPipelineFolderArgs = {
      pathParams:GetPipelineFolderPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetPipelineFolderPipelinePathParams = {
      organization : string ;
    //#endregion
      pipeline : string ;
    //#endregion
      folder : string ;
    }
    //#endregion


    type GetPipelineFolderPipelineStatusCode200Response = {
      content:PipelineImpl;
      
    }

    type GetPipelineFolderPipelineStatusCode401Response = {
      content:string;
      
    }

    type GetPipelineFolderPipelineStatusCode403Response = {
      content:string;
      
    }
    type GetPipelineFolderPipelineResult = GetPipelineFolderPipelineStatusCode200 of GetPipelineFolderPipelineStatusCode200Response|GetPipelineFolderPipelineStatusCode401 of GetPipelineFolderPipelineStatusCode401Response|GetPipelineFolderPipelineStatusCode403 of GetPipelineFolderPipelineStatusCode403Response

    type GetPipelineFolderPipelineArgs = {
      pathParams:GetPipelineFolderPipelinePathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetPipelineQueuePathParams = {
      organization : string ;
    //#endregion
      pipeline : string ;
    }
    //#endregion


    type GetPipelineQueueStatusCode200Response = {
      content:QueueItemImpl[];
      
    }

    type GetPipelineQueueStatusCode401Response = {
      content:string;
      
    }

    type GetPipelineQueueStatusCode403Response = {
      content:string;
      
    }
    type GetPipelineQueueResult = GetPipelineQueueStatusCode200 of GetPipelineQueueStatusCode200Response|GetPipelineQueueStatusCode401 of GetPipelineQueueStatusCode401Response|GetPipelineQueueStatusCode403 of GetPipelineQueueStatusCode403Response

    type GetPipelineQueueArgs = {
      pathParams:GetPipelineQueuePathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetPipelineRunPathParams = {
      organization : string ;
    //#endregion
      pipeline : string ;
    //#endregion
      run : string ;
    }
    //#endregion


    type GetPipelineRunStatusCode200Response = {
      content:PipelineRun;
      
    }

    type GetPipelineRunStatusCode401Response = {
      content:string;
      
    }

    type GetPipelineRunStatusCode403Response = {
      content:string;
      
    }
    type GetPipelineRunResult = GetPipelineRunStatusCode200 of GetPipelineRunStatusCode200Response|GetPipelineRunStatusCode401 of GetPipelineRunStatusCode401Response|GetPipelineRunStatusCode403 of GetPipelineRunStatusCode403Response

    type GetPipelineRunArgs = {
      pathParams:GetPipelineRunPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetPipelineRunLogPathParams = {
      organization : string ;
    //#endregion
      pipeline : string ;
    //#endregion
      run : string ;
    }
    //#endregion

    //#region Query parameters
    [<CLIMutable>]
    type GetPipelineRunLogQueryParams = {
      start : int option;


      download : bool option;

    }
    //#endregion


    type GetPipelineRunLogStatusCode200Response = {
      content:string;
      
    }

    type GetPipelineRunLogStatusCode401Response = {
      content:string;
      
    }

    type GetPipelineRunLogStatusCode403Response = {
      content:string;
      
    }
    type GetPipelineRunLogResult = GetPipelineRunLogStatusCode200 of GetPipelineRunLogStatusCode200Response|GetPipelineRunLogStatusCode401 of GetPipelineRunLogStatusCode401Response|GetPipelineRunLogStatusCode403 of GetPipelineRunLogStatusCode403Response

    type GetPipelineRunLogArgs = {
      pathParams:GetPipelineRunLogPathParams;
      queryParams:Result<GetPipelineRunLogQueryParams,string>;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetPipelineRunNodePathParams = {
      organization : string ;
    //#endregion
      pipeline : string ;
    //#endregion
      run : string ;
    //#endregion
      node : string ;
    }
    //#endregion


    type GetPipelineRunNodeStatusCode200Response = {
      content:PipelineRunNode;
      
    }

    type GetPipelineRunNodeStatusCode401Response = {
      content:string;
      
    }

    type GetPipelineRunNodeStatusCode403Response = {
      content:string;
      
    }
    type GetPipelineRunNodeResult = GetPipelineRunNodeStatusCode200 of GetPipelineRunNodeStatusCode200Response|GetPipelineRunNodeStatusCode401 of GetPipelineRunNodeStatusCode401Response|GetPipelineRunNodeStatusCode403 of GetPipelineRunNodeStatusCode403Response

    type GetPipelineRunNodeArgs = {
      pathParams:GetPipelineRunNodePathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetPipelineRunNodeStepPathParams = {
      organization : string ;
    //#endregion
      pipeline : string ;
    //#endregion
      run : string ;
    //#endregion
      node : string ;
    //#endregion
      step : string ;
    }
    //#endregion


    type GetPipelineRunNodeStepStatusCode200Response = {
      content:PipelineStepImpl;
      
    }

    type GetPipelineRunNodeStepStatusCode401Response = {
      content:string;
      
    }

    type GetPipelineRunNodeStepStatusCode403Response = {
      content:string;
      
    }
    type GetPipelineRunNodeStepResult = GetPipelineRunNodeStepStatusCode200 of GetPipelineRunNodeStepStatusCode200Response|GetPipelineRunNodeStepStatusCode401 of GetPipelineRunNodeStepStatusCode401Response|GetPipelineRunNodeStepStatusCode403 of GetPipelineRunNodeStepStatusCode403Response

    type GetPipelineRunNodeStepArgs = {
      pathParams:GetPipelineRunNodeStepPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetPipelineRunNodeStepLogPathParams = {
      organization : string ;
    //#endregion
      pipeline : string ;
    //#endregion
      run : string ;
    //#endregion
      node : string ;
    //#endregion
      step : string ;
    }
    //#endregion


    type GetPipelineRunNodeStepLogStatusCode200Response = {
      content:string;
      
    }

    type GetPipelineRunNodeStepLogStatusCode401Response = {
      content:string;
      
    }

    type GetPipelineRunNodeStepLogStatusCode403Response = {
      content:string;
      
    }
    type GetPipelineRunNodeStepLogResult = GetPipelineRunNodeStepLogStatusCode200 of GetPipelineRunNodeStepLogStatusCode200Response|GetPipelineRunNodeStepLogStatusCode401 of GetPipelineRunNodeStepLogStatusCode401Response|GetPipelineRunNodeStepLogStatusCode403 of GetPipelineRunNodeStepLogStatusCode403Response

    type GetPipelineRunNodeStepLogArgs = {
      pathParams:GetPipelineRunNodeStepLogPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetPipelineRunNodeStepsPathParams = {
      organization : string ;
    //#endregion
      pipeline : string ;
    //#endregion
      run : string ;
    //#endregion
      node : string ;
    }
    //#endregion


    type GetPipelineRunNodeStepsStatusCode200Response = {
      content:PipelineStepImpl[];
      
    }

    type GetPipelineRunNodeStepsStatusCode401Response = {
      content:string;
      
    }

    type GetPipelineRunNodeStepsStatusCode403Response = {
      content:string;
      
    }
    type GetPipelineRunNodeStepsResult = GetPipelineRunNodeStepsStatusCode200 of GetPipelineRunNodeStepsStatusCode200Response|GetPipelineRunNodeStepsStatusCode401 of GetPipelineRunNodeStepsStatusCode401Response|GetPipelineRunNodeStepsStatusCode403 of GetPipelineRunNodeStepsStatusCode403Response

    type GetPipelineRunNodeStepsArgs = {
      pathParams:GetPipelineRunNodeStepsPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetPipelineRunNodesPathParams = {
      organization : string ;
    //#endregion
      pipeline : string ;
    //#endregion
      run : string ;
    }
    //#endregion


    type GetPipelineRunNodesStatusCode200Response = {
      content:PipelineRunNode[];
      
    }

    type GetPipelineRunNodesStatusCode401Response = {
      content:string;
      
    }

    type GetPipelineRunNodesStatusCode403Response = {
      content:string;
      
    }
    type GetPipelineRunNodesResult = GetPipelineRunNodesStatusCode200 of GetPipelineRunNodesStatusCode200Response|GetPipelineRunNodesStatusCode401 of GetPipelineRunNodesStatusCode401Response|GetPipelineRunNodesStatusCode403 of GetPipelineRunNodesStatusCode403Response

    type GetPipelineRunNodesArgs = {
      pathParams:GetPipelineRunNodesPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetPipelineRunsPathParams = {
      organization : string ;
    //#endregion
      pipeline : string ;
    }
    //#endregion


    type GetPipelineRunsStatusCode200Response = {
      content:PipelineRun[];
      
    }

    type GetPipelineRunsStatusCode401Response = {
      content:string;
      
    }

    type GetPipelineRunsStatusCode403Response = {
      content:string;
      
    }
    type GetPipelineRunsResult = GetPipelineRunsStatusCode200 of GetPipelineRunsStatusCode200Response|GetPipelineRunsStatusCode401 of GetPipelineRunsStatusCode401Response|GetPipelineRunsStatusCode403 of GetPipelineRunsStatusCode403Response

    type GetPipelineRunsArgs = {
      pathParams:GetPipelineRunsPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetPipelinesPathParams = {
      organization : string ;
    }
    //#endregion


    type GetPipelinesStatusCode200Response = {
      content:Pipeline[];
      
    }

    type GetPipelinesStatusCode401Response = {
      content:string;
      
    }

    type GetPipelinesStatusCode403Response = {
      content:string;
      
    }
    type GetPipelinesResult = GetPipelinesStatusCode200 of GetPipelinesStatusCode200Response|GetPipelinesStatusCode401 of GetPipelinesStatusCode401Response|GetPipelinesStatusCode403 of GetPipelinesStatusCode403Response

    type GetPipelinesArgs = {
      pathParams:GetPipelinesPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetSCMPathParams = {
      organization : string ;
    //#endregion
      scm : string ;
    }
    //#endregion


    type GetSCMStatusCode200Response = {
      content:GithubScm;
      
    }

    type GetSCMStatusCode401Response = {
      content:string;
      
    }

    type GetSCMStatusCode403Response = {
      content:string;
      
    }
    type GetSCMResult = GetSCMStatusCode200 of GetSCMStatusCode200Response|GetSCMStatusCode401 of GetSCMStatusCode401Response|GetSCMStatusCode403 of GetSCMStatusCode403Response

    type GetSCMArgs = {
      pathParams:GetSCMPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetSCMOrganisationRepositoriesPathParams = {
      organization : string ;
    //#endregion
      scm : string ;
    //#endregion
      scmOrganisation : string ;
    }
    //#endregion

    //#region Query parameters
    [<CLIMutable>]
    type GetSCMOrganisationRepositoriesQueryParams = {
      credentialId : string option;


      pageSize : int option;


      pageNumber : int option;

    }
    //#endregion


    type GetSCMOrganisationRepositoriesStatusCode200Response = {
      content:GithubOrganization[];
      
    }

    type GetSCMOrganisationRepositoriesStatusCode401Response = {
      content:string;
      
    }

    type GetSCMOrganisationRepositoriesStatusCode403Response = {
      content:string;
      
    }
    type GetSCMOrganisationRepositoriesResult = GetSCMOrganisationRepositoriesStatusCode200 of GetSCMOrganisationRepositoriesStatusCode200Response|GetSCMOrganisationRepositoriesStatusCode401 of GetSCMOrganisationRepositoriesStatusCode401Response|GetSCMOrganisationRepositoriesStatusCode403 of GetSCMOrganisationRepositoriesStatusCode403Response

    type GetSCMOrganisationRepositoriesArgs = {
      pathParams:GetSCMOrganisationRepositoriesPathParams;
      queryParams:Result<GetSCMOrganisationRepositoriesQueryParams,string>;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetSCMOrganisationRepositoryPathParams = {
      organization : string ;
    //#endregion
      scm : string ;
    //#endregion
      scmOrganisation : string ;
    //#endregion
      repository : string ;
    }
    //#endregion

    //#region Query parameters
    [<CLIMutable>]
    type GetSCMOrganisationRepositoryQueryParams = {
      credentialId : string option;

    }
    //#endregion


    type GetSCMOrganisationRepositoryStatusCode200Response = {
      content:GithubOrganization[];
      
    }

    type GetSCMOrganisationRepositoryStatusCode401Response = {
      content:string;
      
    }

    type GetSCMOrganisationRepositoryStatusCode403Response = {
      content:string;
      
    }
    type GetSCMOrganisationRepositoryResult = GetSCMOrganisationRepositoryStatusCode200 of GetSCMOrganisationRepositoryStatusCode200Response|GetSCMOrganisationRepositoryStatusCode401 of GetSCMOrganisationRepositoryStatusCode401Response|GetSCMOrganisationRepositoryStatusCode403 of GetSCMOrganisationRepositoryStatusCode403Response

    type GetSCMOrganisationRepositoryArgs = {
      pathParams:GetSCMOrganisationRepositoryPathParams;
      queryParams:Result<GetSCMOrganisationRepositoryQueryParams,string>;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetSCMOrganisationsPathParams = {
      organization : string ;
    //#endregion
      scm : string ;
    }
    //#endregion

    //#region Query parameters
    [<CLIMutable>]
    type GetSCMOrganisationsQueryParams = {
      credentialId : string option;

    }
    //#endregion


    type GetSCMOrganisationsStatusCode200Response = {
      content:GithubOrganization[];
      
    }

    type GetSCMOrganisationsStatusCode401Response = {
      content:string;
      
    }

    type GetSCMOrganisationsStatusCode403Response = {
      content:string;
      
    }
    type GetSCMOrganisationsResult = GetSCMOrganisationsStatusCode200 of GetSCMOrganisationsStatusCode200Response|GetSCMOrganisationsStatusCode401 of GetSCMOrganisationsStatusCode401Response|GetSCMOrganisationsStatusCode403 of GetSCMOrganisationsStatusCode403Response

    type GetSCMOrganisationsArgs = {
      pathParams:GetSCMOrganisationsPathParams;
      queryParams:Result<GetSCMOrganisationsQueryParams,string>;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetUserPathParams = {
      organization : string ;
    //#endregion
      user : string ;
    }
    //#endregion


    type GetUserStatusCode200Response = {
      content:User;
      
    }

    type GetUserStatusCode401Response = {
      content:string;
      
    }

    type GetUserStatusCode403Response = {
      content:string;
      
    }
    type GetUserResult = GetUserStatusCode200 of GetUserStatusCode200Response|GetUserStatusCode401 of GetUserStatusCode401Response|GetUserStatusCode403 of GetUserStatusCode403Response

    type GetUserArgs = {
      pathParams:GetUserPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetUserFavoritesPathParams = {
      user : string ;
    }
    //#endregion


    type GetUserFavoritesStatusCode200Response = {
      content:FavoriteImpl[];
      
    }

    type GetUserFavoritesStatusCode401Response = {
      content:string;
      
    }

    type GetUserFavoritesStatusCode403Response = {
      content:string;
      
    }
    type GetUserFavoritesResult = GetUserFavoritesStatusCode200 of GetUserFavoritesStatusCode200Response|GetUserFavoritesStatusCode401 of GetUserFavoritesStatusCode401Response|GetUserFavoritesStatusCode403 of GetUserFavoritesStatusCode403Response

    type GetUserFavoritesArgs = {
      pathParams:GetUserFavoritesPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type GetUsersPathParams = {
      organization : string ;
    }
    //#endregion


    type GetUsersStatusCode200Response = {
      content:User;
      
    }

    type GetUsersStatusCode401Response = {
      content:string;
      
    }

    type GetUsersStatusCode403Response = {
      content:string;
      
    }
    type GetUsersResult = GetUsersStatusCode200 of GetUsersStatusCode200Response|GetUsersStatusCode401 of GetUsersStatusCode401Response|GetUsersStatusCode403 of GetUsersStatusCode403Response

    type GetUsersArgs = {
      pathParams:GetUsersPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type PostPipelineRunPathParams = {
      organization : string ;
    //#endregion
      pipeline : string ;
    //#endregion
      run : string ;
    }
    //#endregion


    type PostPipelineRunStatusCode200Response = {
      content:QueueItemImpl;
      
    }

    type PostPipelineRunStatusCode401Response = {
      content:string;
      
    }

    type PostPipelineRunStatusCode403Response = {
      content:string;
      
    }
    type PostPipelineRunResult = PostPipelineRunStatusCode200 of PostPipelineRunStatusCode200Response|PostPipelineRunStatusCode401 of PostPipelineRunStatusCode401Response|PostPipelineRunStatusCode403 of PostPipelineRunStatusCode403Response

    type PostPipelineRunArgs = {
      pathParams:PostPipelineRunPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type PostPipelineRunsPathParams = {
      organization : string ;
    //#endregion
      pipeline : string ;
    }
    //#endregion


    type PostPipelineRunsStatusCode200Response = {
      content:QueueItemImpl;
      
    }

    type PostPipelineRunsStatusCode401Response = {
      content:string;
      
    }

    type PostPipelineRunsStatusCode403Response = {
      content:string;
      
    }
    type PostPipelineRunsResult = PostPipelineRunsStatusCode200 of PostPipelineRunsStatusCode200Response|PostPipelineRunsStatusCode401 of PostPipelineRunsStatusCode401Response|PostPipelineRunsStatusCode403 of PostPipelineRunsStatusCode403Response

    type PostPipelineRunsArgs = {
      pathParams:PostPipelineRunsPathParams;
    }
    //#region Path parameters
    [<CLIMutable>]
    type PutPipelineFavoritePathParams = {
      organization : string ;
    //#endregion
      pipeline : string ;
    }
    //#endregion

    //#region Body parameters
    [<CLIMutable>]
    type PutPipelineFavoriteBodyParams = UNKNOWN_BASE_TYPE
    //#endregion


    type PutPipelineFavoriteStatusCode200Response = {
      content:FavoriteImpl;
      
    }

    type PutPipelineFavoriteStatusCode401Response = {
      content:string;
      
    }

    type PutPipelineFavoriteStatusCode403Response = {
      content:string;
      
    }
    type PutPipelineFavoriteResult = PutPipelineFavoriteStatusCode200 of PutPipelineFavoriteStatusCode200Response|PutPipelineFavoriteStatusCode401 of PutPipelineFavoriteStatusCode401Response|PutPipelineFavoriteStatusCode403 of PutPipelineFavoriteStatusCode403Response

    type PutPipelineFavoriteArgs = {
      pathParams:PutPipelineFavoritePathParams;
      bodyParams:PutPipelineFavoriteBodyParams
    }
    //#region Path parameters
    [<CLIMutable>]
    type PutPipelineRunPathParams = {
      organization : string ;
    //#endregion
      pipeline : string ;
    //#endregion
      run : string ;
    }
    //#endregion

    //#region Query parameters
    [<CLIMutable>]
    type PutPipelineRunQueryParams = {
      blocking : string option;


      timeOutInSecs : int option;

    }
    //#endregion


    type PutPipelineRunStatusCode200Response = {
      content:PipelineRun;
      
    }

    type PutPipelineRunStatusCode401Response = {
      content:string;
      
    }

    type PutPipelineRunStatusCode403Response = {
      content:string;
      
    }
    type PutPipelineRunResult = PutPipelineRunStatusCode200 of PutPipelineRunStatusCode200Response|PutPipelineRunStatusCode401 of PutPipelineRunStatusCode401Response|PutPipelineRunStatusCode403 of PutPipelineRunStatusCode403Response

    type PutPipelineRunArgs = {
      pathParams:PutPipelineRunPathParams;
      queryParams:Result<PutPipelineRunQueryParams,string>;
    }

    //#region Query parameters
    [<CLIMutable>]
    type SearchQueryParams = {
      q : string ;

    }
    //#endregion


    type SearchStatusCode200Response = {
      content:string;
      
    }

    type SearchStatusCode401Response = {
      content:string;
      
    }

    type SearchStatusCode403Response = {
      content:string;
      
    }
    type SearchResult = SearchStatusCode200 of SearchStatusCode200Response|SearchStatusCode401 of SearchStatusCode401Response|SearchStatusCode403 of SearchStatusCode403Response

    type SearchArgs = {
      queryParams:Result<SearchQueryParams,string>;
    }

    //#region Query parameters
    [<CLIMutable>]
    type SearchClassesQueryParams = {
      q : string ;

    }
    //#endregion


    type SearchClassesStatusCode200Response = {
      content:string;
      
    }

    type SearchClassesStatusCode401Response = {
      content:string;
      
    }

    type SearchClassesStatusCode403Response = {
      content:string;
      
    }
    type SearchClassesResult = SearchClassesStatusCode200 of SearchClassesStatusCode200Response|SearchClassesStatusCode401 of SearchClassesStatusCode401Response|SearchClassesStatusCode403 of SearchClassesStatusCode403Response

    type SearchClassesArgs = {
      queryParams:Result<SearchClassesQueryParams,string>;
    }
