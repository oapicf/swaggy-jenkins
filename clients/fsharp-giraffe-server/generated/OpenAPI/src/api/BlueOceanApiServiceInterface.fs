namespace OpenAPI
open BlueOceanApiHandlerParams
open System
open Giraffe
open Microsoft.AspNetCore.Http


module BlueOceanApiServiceInterface =

    //#region Service interface
    type IBlueOceanApiService =
      abstract member DeletePipelineQueueItem:HttpContext -> DeletePipelineQueueItemArgs->DeletePipelineQueueItemResult
      abstract member GetAuthenticatedUser:HttpContext -> GetAuthenticatedUserArgs->GetAuthenticatedUserResult
      abstract member GetClasses:HttpContext -> GetClassesArgs->GetClassesResult
      abstract member GetJsonWebKey:HttpContext -> GetJsonWebKeyArgs->GetJsonWebKeyResult
      abstract member GetJsonWebToken:HttpContext -> GetJsonWebTokenArgs->GetJsonWebTokenResult
      abstract member GetOrganisation:HttpContext -> GetOrganisationArgs->GetOrganisationResult
      abstract member GetOrganisations:HttpContext ->GetOrganisationsResult
      abstract member GetPipeline:HttpContext -> GetPipelineArgs->GetPipelineResult
      abstract member GetPipelineActivities:HttpContext -> GetPipelineActivitiesArgs->GetPipelineActivitiesResult
      abstract member GetPipelineBranch:HttpContext -> GetPipelineBranchArgs->GetPipelineBranchResult
      abstract member GetPipelineBranchRun:HttpContext -> GetPipelineBranchRunArgs->GetPipelineBranchRunResult
      abstract member GetPipelineBranches:HttpContext -> GetPipelineBranchesArgs->GetPipelineBranchesResult
      abstract member GetPipelineFolder:HttpContext -> GetPipelineFolderArgs->GetPipelineFolderResult
      abstract member GetPipelineFolderPipeline:HttpContext -> GetPipelineFolderPipelineArgs->GetPipelineFolderPipelineResult
      abstract member GetPipelineQueue:HttpContext -> GetPipelineQueueArgs->GetPipelineQueueResult
      abstract member GetPipelineRun:HttpContext -> GetPipelineRunArgs->GetPipelineRunResult
      abstract member GetPipelineRunLog:HttpContext -> GetPipelineRunLogArgs->GetPipelineRunLogResult
      abstract member GetPipelineRunNode:HttpContext -> GetPipelineRunNodeArgs->GetPipelineRunNodeResult
      abstract member GetPipelineRunNodeStep:HttpContext -> GetPipelineRunNodeStepArgs->GetPipelineRunNodeStepResult
      abstract member GetPipelineRunNodeStepLog:HttpContext -> GetPipelineRunNodeStepLogArgs->GetPipelineRunNodeStepLogResult
      abstract member GetPipelineRunNodeSteps:HttpContext -> GetPipelineRunNodeStepsArgs->GetPipelineRunNodeStepsResult
      abstract member GetPipelineRunNodes:HttpContext -> GetPipelineRunNodesArgs->GetPipelineRunNodesResult
      abstract member GetPipelineRuns:HttpContext -> GetPipelineRunsArgs->GetPipelineRunsResult
      abstract member GetPipelines:HttpContext -> GetPipelinesArgs->GetPipelinesResult
      abstract member GetSCM:HttpContext -> GetSCMArgs->GetSCMResult
      abstract member GetSCMOrganisationRepositories:HttpContext -> GetSCMOrganisationRepositoriesArgs->GetSCMOrganisationRepositoriesResult
      abstract member GetSCMOrganisationRepository:HttpContext -> GetSCMOrganisationRepositoryArgs->GetSCMOrganisationRepositoryResult
      abstract member GetSCMOrganisations:HttpContext -> GetSCMOrganisationsArgs->GetSCMOrganisationsResult
      abstract member GetUser:HttpContext -> GetUserArgs->GetUserResult
      abstract member GetUserFavorites:HttpContext -> GetUserFavoritesArgs->GetUserFavoritesResult
      abstract member GetUsers:HttpContext -> GetUsersArgs->GetUsersResult
      abstract member PostPipelineRun:HttpContext -> PostPipelineRunArgs->PostPipelineRunResult
      abstract member PostPipelineRuns:HttpContext -> PostPipelineRunsArgs->PostPipelineRunsResult
      abstract member PutPipelineFavorite:HttpContext -> PutPipelineFavoriteArgs->PutPipelineFavoriteResult
      abstract member PutPipelineRun:HttpContext -> PutPipelineRunArgs->PutPipelineRunResult
      abstract member Search:HttpContext -> SearchArgs->SearchResult
      abstract member SearchClasses:HttpContext -> SearchClassesArgs->SearchClassesResult
    //#endregion