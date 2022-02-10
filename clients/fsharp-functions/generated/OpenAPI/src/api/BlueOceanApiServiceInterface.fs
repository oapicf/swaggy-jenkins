namespace OpenAPI
open BlueOceanApiHandlerParams
open System
open Microsoft.AspNetCore.Http


module BlueOceanApiServiceInterface =

    //#region Service interface
    type IBlueOceanApiService =
      abstract member DeletePipelineQueueItem : unit -> DeletePipelineQueueItemResult
      abstract member GetAuthenticatedUser : unit -> GetAuthenticatedUserResult
      abstract member GetClasses : unit -> GetClassesResult
      abstract member GetJsonWebKey : unit -> GetJsonWebKeyResult
      abstract member GetJsonWebToken : unit -> GetJsonWebTokenResult
      abstract member GetOrganisation : unit -> GetOrganisationResult
      abstract member GetOrganisations : unit -> GetOrganisationsResult
      abstract member GetPipeline : unit -> GetPipelineResult
      abstract member GetPipelineActivities : unit -> GetPipelineActivitiesResult
      abstract member GetPipelineBranch : unit -> GetPipelineBranchResult
      abstract member GetPipelineBranchRun : unit -> GetPipelineBranchRunResult
      abstract member GetPipelineBranches : unit -> GetPipelineBranchesResult
      abstract member GetPipelineFolder : unit -> GetPipelineFolderResult
      abstract member GetPipelineFolderPipeline : unit -> GetPipelineFolderPipelineResult
      abstract member GetPipelineQueue : unit -> GetPipelineQueueResult
      abstract member GetPipelineRun : unit -> GetPipelineRunResult
      abstract member GetPipelineRunLog : unit -> GetPipelineRunLogResult
      abstract member GetPipelineRunNode : unit -> GetPipelineRunNodeResult
      abstract member GetPipelineRunNodeStep : unit -> GetPipelineRunNodeStepResult
      abstract member GetPipelineRunNodeStepLog : unit -> GetPipelineRunNodeStepLogResult
      abstract member GetPipelineRunNodeSteps : unit -> GetPipelineRunNodeStepsResult
      abstract member GetPipelineRunNodes : unit -> GetPipelineRunNodesResult
      abstract member GetPipelineRuns : unit -> GetPipelineRunsResult
      abstract member GetPipelines : unit -> GetPipelinesResult
      abstract member GetSCM : unit -> GetSCMResult
      abstract member GetSCMOrganisationRepositories : unit -> GetSCMOrganisationRepositoriesResult
      abstract member GetSCMOrganisationRepository : unit -> GetSCMOrganisationRepositoryResult
      abstract member GetSCMOrganisations : unit -> GetSCMOrganisationsResult
      abstract member GetUser : unit -> GetUserResult
      abstract member GetUserFavorites : unit -> GetUserFavoritesResult
      abstract member GetUsers : unit -> GetUsersResult
      abstract member PostPipelineRun : unit -> PostPipelineRunResult
      abstract member PostPipelineRuns : unit -> PostPipelineRunsResult
      abstract member PutPipelineFavorite : PutPipelineFavoriteBodyParams -> PutPipelineFavoriteResult
      abstract member PutPipelineRun : unit -> PutPipelineRunResult
      abstract member Search : unit -> SearchResult
      abstract member SearchClasses : unit -> SearchClassesResult
    //#endregion