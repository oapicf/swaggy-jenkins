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
open BlueOceanApiHandlerParams
open BlueOceanApiServiceInterface
open System.Collections.Generic
open System
open Giraffe

module BlueOceanApiServiceImplementation =

    //#region Service implementation
    type BlueOceanApiServiceImpl() =
      interface IBlueOceanApiService with

        member this.DeletePipelineQueueItem ctx args =
          if true then
            let content = "Successfully deleted queue item" 
            DeletePipelineQueueItemStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            DeletePipelineQueueItemStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            DeletePipelineQueueItemStatusCode403 { content = content }

        member this.GetAuthenticatedUser ctx args =
          if true then
            let content = "Successfully retrieved authenticated user details" :> obj :?> User // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetAuthenticatedUserStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetAuthenticatedUserStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetAuthenticatedUserStatusCode403 { content = content }

        member this.GetClasses ctx args =
          if true then
            let content = "Successfully retrieved class names" :> obj :?> string // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetClassesStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetClassesStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetClassesStatusCode403 { content = content }

        member this.GetJsonWebKey ctx args =
          if true then
            let content = "Successfully retrieved JWT token" :> obj :?> string // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetJsonWebKeyStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetJsonWebKeyStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetJsonWebKeyStatusCode403 { content = content }

        member this.GetJsonWebToken ctx args =
          if true then
            let content = "Successfully retrieved JWT token" :> obj :?> string // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetJsonWebTokenStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetJsonWebTokenStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetJsonWebTokenStatusCode403 { content = content }

        member this.GetOrganisation ctx args =
          if true then
            let content = "Successfully retrieved pipeline details" :> obj :?> Organisation // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetOrganisationStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetOrganisationStatusCode401 { content = content }
          else if true then
            let content = "Jenkins requires authentication - please set username and password" 
            GetOrganisationStatusCode403 { content = content }
          else
            let content = "Pipeline cannot be found on Jenkins instance" 
            GetOrganisationStatusCode404 { content = content }

        member this.GetOrganisations ctx  =
          if true then
            let content = "Successfully retrieved pipelines details" :> obj :?> Organisation[] // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetOrganisationsStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetOrganisationsStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetOrganisationsStatusCode403 { content = content }

        member this.GetPipeline ctx args =
          if true then
            let content = "Successfully retrieved pipeline details" :> obj :?> Pipeline // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetPipelineStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetPipelineStatusCode401 { content = content }
          else if true then
            let content = "Jenkins requires authentication - please set username and password" 
            GetPipelineStatusCode403 { content = content }
          else
            let content = "Pipeline cannot be found on Jenkins instance" 
            GetPipelineStatusCode404 { content = content }

        member this.GetPipelineActivities ctx args =
          if true then
            let content = "Successfully retrieved all activities details" :> obj :?> PipelineActivity[] // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetPipelineActivitiesStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetPipelineActivitiesStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetPipelineActivitiesStatusCode403 { content = content }

        member this.GetPipelineBranch ctx args =
          if true then
            let content = "Successfully retrieved branch details" :> obj :?> BranchImpl // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetPipelineBranchStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetPipelineBranchStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetPipelineBranchStatusCode403 { content = content }

        member this.GetPipelineBranchRun ctx args =
          if true then
            let content = "Successfully retrieved run details" :> obj :?> PipelineRun // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetPipelineBranchRunStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetPipelineBranchRunStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetPipelineBranchRunStatusCode403 { content = content }

        member this.GetPipelineBranches ctx args =
          if true then
            let content = "Successfully retrieved all branches details" :> obj :?> MultibranchPipeline // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetPipelineBranchesStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetPipelineBranchesStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetPipelineBranchesStatusCode403 { content = content }

        member this.GetPipelineFolder ctx args =
          if true then
            let content = "Successfully retrieved folder details" :> obj :?> PipelineFolderImpl // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetPipelineFolderStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetPipelineFolderStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetPipelineFolderStatusCode403 { content = content }

        member this.GetPipelineFolderPipeline ctx args =
          if true then
            let content = "Successfully retrieved pipeline details" :> obj :?> PipelineImpl // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetPipelineFolderPipelineStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetPipelineFolderPipelineStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetPipelineFolderPipelineStatusCode403 { content = content }

        member this.GetPipelineQueue ctx args =
          if true then
            let content = "Successfully retrieved queue details" :> obj :?> QueueItemImpl[] // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetPipelineQueueStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetPipelineQueueStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetPipelineQueueStatusCode403 { content = content }

        member this.GetPipelineRun ctx args =
          if true then
            let content = "Successfully retrieved run details" :> obj :?> PipelineRun // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetPipelineRunStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetPipelineRunStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetPipelineRunStatusCode403 { content = content }

        member this.GetPipelineRunLog ctx args =
          if true then
            let content = "Successfully retrieved pipeline run log" :> obj :?> string // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetPipelineRunLogStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetPipelineRunLogStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetPipelineRunLogStatusCode403 { content = content }

        member this.GetPipelineRunNode ctx args =
          if true then
            let content = "Successfully retrieved run node details" :> obj :?> PipelineRunNode // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetPipelineRunNodeStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetPipelineRunNodeStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetPipelineRunNodeStatusCode403 { content = content }

        member this.GetPipelineRunNodeStep ctx args =
          if true then
            let content = "Successfully retrieved run node step details" :> obj :?> PipelineStepImpl // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetPipelineRunNodeStepStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetPipelineRunNodeStepStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetPipelineRunNodeStepStatusCode403 { content = content }

        member this.GetPipelineRunNodeStepLog ctx args =
          if true then
            let content = "Successfully retrieved pipeline run node step log" :> obj :?> string // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetPipelineRunNodeStepLogStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetPipelineRunNodeStepLogStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetPipelineRunNodeStepLogStatusCode403 { content = content }

        member this.GetPipelineRunNodeSteps ctx args =
          if true then
            let content = "Successfully retrieved run node steps details" :> obj :?> PipelineStepImpl[] // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetPipelineRunNodeStepsStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetPipelineRunNodeStepsStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetPipelineRunNodeStepsStatusCode403 { content = content }

        member this.GetPipelineRunNodes ctx args =
          if true then
            let content = "Successfully retrieved run nodes details" :> obj :?> PipelineRunNode[] // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetPipelineRunNodesStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetPipelineRunNodesStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetPipelineRunNodesStatusCode403 { content = content }

        member this.GetPipelineRuns ctx args =
          if true then
            let content = "Successfully retrieved runs details" :> obj :?> PipelineRun[] // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetPipelineRunsStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetPipelineRunsStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetPipelineRunsStatusCode403 { content = content }

        member this.GetPipelines ctx args =
          if true then
            let content = "Successfully retrieved pipelines details" :> obj :?> Pipeline[] // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetPipelinesStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetPipelinesStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetPipelinesStatusCode403 { content = content }

        member this.GetSCM ctx args =
          if true then
            let content = "Successfully retrieved SCM details" :> obj :?> GithubScm // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetSCMStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetSCMStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetSCMStatusCode403 { content = content }

        member this.GetSCMOrganisationRepositories ctx args =
          if true then
            let content = "Successfully retrieved SCM organization repositories details" :> obj :?> GithubOrganization[] // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetSCMOrganisationRepositoriesStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetSCMOrganisationRepositoriesStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetSCMOrganisationRepositoriesStatusCode403 { content = content }

        member this.GetSCMOrganisationRepository ctx args =
          if true then
            let content = "Successfully retrieved SCM organizations details" :> obj :?> GithubOrganization[] // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetSCMOrganisationRepositoryStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetSCMOrganisationRepositoryStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetSCMOrganisationRepositoryStatusCode403 { content = content }

        member this.GetSCMOrganisations ctx args =
          if true then
            let content = "Successfully retrieved SCM organizations details" :> obj :?> GithubOrganization[] // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetSCMOrganisationsStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetSCMOrganisationsStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetSCMOrganisationsStatusCode403 { content = content }

        member this.GetUser ctx args =
          if true then
            let content = "Successfully retrieved users details" :> obj :?> User // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetUserStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetUserStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetUserStatusCode403 { content = content }

        member this.GetUserFavorites ctx args =
          if true then
            let content = "Successfully retrieved users favorites details" :> obj :?> FavoriteImpl[] // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetUserFavoritesStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetUserFavoritesStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetUserFavoritesStatusCode403 { content = content }

        member this.GetUsers ctx args =
          if true then
            let content = "Successfully retrieved users details" :> obj :?> User // this cast is obviously wrong, and is only intended to allow generated project to compile   
            GetUsersStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            GetUsersStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            GetUsersStatusCode403 { content = content }

        member this.PostPipelineRun ctx args =
          if true then
            let content = "Successfully replayed a pipeline run" :> obj :?> QueueItemImpl // this cast is obviously wrong, and is only intended to allow generated project to compile   
            PostPipelineRunStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            PostPipelineRunStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            PostPipelineRunStatusCode403 { content = content }

        member this.PostPipelineRuns ctx args =
          if true then
            let content = "Successfully started a build" :> obj :?> QueueItemImpl // this cast is obviously wrong, and is only intended to allow generated project to compile   
            PostPipelineRunsStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            PostPipelineRunsStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            PostPipelineRunsStatusCode403 { content = content }

        member this.PutPipelineFavorite ctx args =
          if true then
            let content = "Successfully favorited/unfavorited a pipeline" :> obj :?> FavoriteImpl // this cast is obviously wrong, and is only intended to allow generated project to compile   
            PutPipelineFavoriteStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            PutPipelineFavoriteStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            PutPipelineFavoriteStatusCode403 { content = content }

        member this.PutPipelineRun ctx args =
          if true then
            let content = "Successfully stopped a build" :> obj :?> PipelineRun // this cast is obviously wrong, and is only intended to allow generated project to compile   
            PutPipelineRunStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            PutPipelineRunStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            PutPipelineRunStatusCode403 { content = content }

        member this.Search ctx args =
          if true then
            let content = "Successfully retrieved search result" :> obj :?> string // this cast is obviously wrong, and is only intended to allow generated project to compile   
            SearchStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            SearchStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            SearchStatusCode403 { content = content }

        member this.SearchClasses ctx args =
          if true then
            let content = "Successfully retrieved search result" :> obj :?> string // this cast is obviously wrong, and is only intended to allow generated project to compile   
            SearchClassesStatusCode200 { content = content }
          else if true then
            let content = "Authentication failed - incorrect username and/or password" 
            SearchClassesStatusCode401 { content = content }
          else
            let content = "Jenkins requires authentication - please set username and password" 
            SearchClassesStatusCode403 { content = content }

      //#endregion

    let BlueOceanApiService = BlueOceanApiServiceImpl() :> IBlueOceanApiService