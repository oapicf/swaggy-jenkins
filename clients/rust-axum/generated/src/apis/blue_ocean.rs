use async_trait::async_trait;
use axum::extract::*;
use axum_extra::extract::{CookieJar, Host};
use bytes::Bytes;
use http::Method;
use serde::{Deserialize, Serialize};

use crate::{models, types::*};

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum DeletePipelineQueueItemResponse {
    /// Successfully deleted queue item
    Status200_SuccessfullyDeletedQueueItem
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetAuthenticatedUserResponse {
    /// Successfully retrieved authenticated user details
    Status200_SuccessfullyRetrievedAuthenticatedUserDetails
    (models::User)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetClassesResponse {
    /// Successfully retrieved class names
    Status200_SuccessfullyRetrievedClassNames
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetJsonWebKeyResponse {
    /// Successfully retrieved JWT token
    Status200_SuccessfullyRetrievedJWTToken
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetJsonWebTokenResponse {
    /// Successfully retrieved JWT token
    Status200_SuccessfullyRetrievedJWTToken
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetOrganisationResponse {
    /// Successfully retrieved pipeline details
    Status200_SuccessfullyRetrievedPipelineDetails
    (models::Organisation)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
    ,
    /// Pipeline cannot be found on Jenkins instance
    Status404_PipelineCannotBeFoundOnJenkinsInstance
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetOrganisationsResponse {
    /// Successfully retrieved pipelines details
    Status200_SuccessfullyRetrievedPipelinesDetails
    (Vec<models::Organisation>)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetPipelineResponse {
    /// Successfully retrieved pipeline details
    Status200_SuccessfullyRetrievedPipelineDetails
    (models::Pipeline)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
    ,
    /// Pipeline cannot be found on Jenkins instance
    Status404_PipelineCannotBeFoundOnJenkinsInstance
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetPipelineActivitiesResponse {
    /// Successfully retrieved all activities details
    Status200_SuccessfullyRetrievedAllActivitiesDetails
    (Vec<models::PipelineActivity>)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetPipelineBranchResponse {
    /// Successfully retrieved branch details
    Status200_SuccessfullyRetrievedBranchDetails
    (models::BranchImpl)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetPipelineBranchRunResponse {
    /// Successfully retrieved run details
    Status200_SuccessfullyRetrievedRunDetails
    (models::PipelineRun)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetPipelineBranchesResponse {
    /// Successfully retrieved all branches details
    Status200_SuccessfullyRetrievedAllBranchesDetails
    (models::MultibranchPipeline)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetPipelineFolderResponse {
    /// Successfully retrieved folder details
    Status200_SuccessfullyRetrievedFolderDetails
    (models::PipelineFolderImpl)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetPipelineFolderPipelineResponse {
    /// Successfully retrieved pipeline details
    Status200_SuccessfullyRetrievedPipelineDetails
    (models::PipelineImpl)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetPipelineQueueResponse {
    /// Successfully retrieved queue details
    Status200_SuccessfullyRetrievedQueueDetails
    (Vec<models::QueueItemImpl>)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetPipelineRunResponse {
    /// Successfully retrieved run details
    Status200_SuccessfullyRetrievedRunDetails
    (models::PipelineRun)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetPipelineRunLogResponse {
    /// Successfully retrieved pipeline run log
    Status200_SuccessfullyRetrievedPipelineRunLog
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetPipelineRunNodeResponse {
    /// Successfully retrieved run node details
    Status200_SuccessfullyRetrievedRunNodeDetails
    (models::PipelineRunNode)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetPipelineRunNodeStepResponse {
    /// Successfully retrieved run node step details
    Status200_SuccessfullyRetrievedRunNodeStepDetails
    (models::PipelineStepImpl)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetPipelineRunNodeStepLogResponse {
    /// Successfully retrieved pipeline run node step log
    Status200_SuccessfullyRetrievedPipelineRunNodeStepLog
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetPipelineRunNodeStepsResponse {
    /// Successfully retrieved run node steps details
    Status200_SuccessfullyRetrievedRunNodeStepsDetails
    (Vec<models::PipelineStepImpl>)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetPipelineRunNodesResponse {
    /// Successfully retrieved run nodes details
    Status200_SuccessfullyRetrievedRunNodesDetails
    (Vec<models::PipelineRunNode>)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetPipelineRunsResponse {
    /// Successfully retrieved runs details
    Status200_SuccessfullyRetrievedRunsDetails
    (Vec<models::PipelineRun>)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetPipelinesResponse {
    /// Successfully retrieved pipelines details
    Status200_SuccessfullyRetrievedPipelinesDetails
    (Vec<models::Pipeline>)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetScmResponse {
    /// Successfully retrieved SCM details
    Status200_SuccessfullyRetrievedSCMDetails
    (models::GithubScm)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetScmOrganisationRepositoriesResponse {
    /// Successfully retrieved SCM organization repositories details
    Status200_SuccessfullyRetrievedSCMOrganizationRepositoriesDetails
    (Vec<models::GithubOrganization>)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetScmOrganisationRepositoryResponse {
    /// Successfully retrieved SCM organizations details
    Status200_SuccessfullyRetrievedSCMOrganizationsDetails
    (Vec<models::GithubOrganization>)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetScmOrganisationsResponse {
    /// Successfully retrieved SCM organizations details
    Status200_SuccessfullyRetrievedSCMOrganizationsDetails
    (Vec<models::GithubOrganization>)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetUserResponse {
    /// Successfully retrieved users details
    Status200_SuccessfullyRetrievedUsersDetails
    (models::User)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetUserFavoritesResponse {
    /// Successfully retrieved users favorites details
    Status200_SuccessfullyRetrievedUsersFavoritesDetails
    (Vec<models::FavoriteImpl>)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetUsersResponse {
    /// Successfully retrieved users details
    Status200_SuccessfullyRetrievedUsersDetails
    (models::User)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum PostPipelineRunResponse {
    /// Successfully replayed a pipeline run
    Status200_SuccessfullyReplayedAPipelineRun
    (models::QueueItemImpl)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum PostPipelineRunsResponse {
    /// Successfully started a build
    Status200_SuccessfullyStartedABuild
    (models::QueueItemImpl)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum PutPipelineFavoriteResponse {
    /// Successfully favorited/unfavorited a pipeline
    Status200_SuccessfullyFavorited
    (models::FavoriteImpl)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum PutPipelineRunResponse {
    /// Successfully stopped a build
    Status200_SuccessfullyStoppedABuild
    (models::PipelineRun)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum SearchResponse {
    /// Successfully retrieved search result
    Status200_SuccessfullyRetrievedSearchResult
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum SearchClassesResponse {
    /// Successfully retrieved search result
    Status200_SuccessfullyRetrievedSearchResult
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
}


/// BlueOcean
#[async_trait]
#[allow(clippy::ptr_arg)]
pub trait BlueOcean<E: std::fmt::Debug + Send + Sync + 'static = ()>: super::ErrorHandler<E> {
    type Claims;

    /// DeletePipelineQueueItem - DELETE /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}
    async fn delete_pipeline_queue_item(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::DeletePipelineQueueItemPathParams,
    ) -> Result<DeletePipelineQueueItemResponse, E>;

    /// GetAuthenticatedUser - GET /blue/rest/organizations/{organization}/user/
    async fn get_authenticated_user(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetAuthenticatedUserPathParams,
    ) -> Result<GetAuthenticatedUserResponse, E>;

    /// GetClasses - GET /blue/rest/classes/{class}
    async fn get_classes(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetClassesPathParams,
    ) -> Result<GetClassesResponse, E>;

    /// GetJsonWebKey - GET /jwt-auth/jwks/{key}
    async fn get_json_web_key(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
      path_params: &models::GetJsonWebKeyPathParams,
    ) -> Result<GetJsonWebKeyResponse, E>;

    /// GetJsonWebToken - GET /jwt-auth/token
    async fn get_json_web_token(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
      query_params: &models::GetJsonWebTokenQueryParams,
    ) -> Result<GetJsonWebTokenResponse, E>;

    /// GetOrganisation - GET /blue/rest/organizations/{organization}
    async fn get_organisation(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetOrganisationPathParams,
    ) -> Result<GetOrganisationResponse, E>;

    /// GetOrganisations - GET /blue/rest/organizations/
    async fn get_organisations(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
    ) -> Result<GetOrganisationsResponse, E>;

    /// GetPipeline - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}
    async fn get_pipeline(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetPipelinePathParams,
    ) -> Result<GetPipelineResponse, E>;

    /// GetPipelineActivities - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities
    async fn get_pipeline_activities(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetPipelineActivitiesPathParams,
    ) -> Result<GetPipelineActivitiesResponse, E>;

    /// GetPipelineBranch - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/
    async fn get_pipeline_branch(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetPipelineBranchPathParams,
    ) -> Result<GetPipelineBranchResponse, E>;

    /// GetPipelineBranchRun - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}
    async fn get_pipeline_branch_run(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetPipelineBranchRunPathParams,
    ) -> Result<GetPipelineBranchRunResponse, E>;

    /// GetPipelineBranches - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches
    async fn get_pipeline_branches(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetPipelineBranchesPathParams,
    ) -> Result<GetPipelineBranchesResponse, E>;

    /// GetPipelineFolder - GET /blue/rest/organizations/{organization}/pipelines/{folder}/
    async fn get_pipeline_folder(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetPipelineFolderPathParams,
    ) -> Result<GetPipelineFolderResponse, E>;

    /// GetPipelineFolderPipeline - GET /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}
    async fn get_pipeline_folder_pipeline(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetPipelineFolderPipelinePathParams,
    ) -> Result<GetPipelineFolderPipelineResponse, E>;

    /// GetPipelineQueue - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue
    async fn get_pipeline_queue(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetPipelineQueuePathParams,
    ) -> Result<GetPipelineQueueResponse, E>;

    /// GetPipelineRun - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}
    async fn get_pipeline_run(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetPipelineRunPathParams,
    ) -> Result<GetPipelineRunResponse, E>;

    /// GetPipelineRunLog - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log
    async fn get_pipeline_run_log(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetPipelineRunLogPathParams,
      query_params: &models::GetPipelineRunLogQueryParams,
    ) -> Result<GetPipelineRunLogResponse, E>;

    /// GetPipelineRunNode - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}
    async fn get_pipeline_run_node(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetPipelineRunNodePathParams,
    ) -> Result<GetPipelineRunNodeResponse, E>;

    /// GetPipelineRunNodeStep - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}
    async fn get_pipeline_run_node_step(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetPipelineRunNodeStepPathParams,
    ) -> Result<GetPipelineRunNodeStepResponse, E>;

    /// GetPipelineRunNodeStepLog - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log
    async fn get_pipeline_run_node_step_log(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetPipelineRunNodeStepLogPathParams,
    ) -> Result<GetPipelineRunNodeStepLogResponse, E>;

    /// GetPipelineRunNodeSteps - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps
    async fn get_pipeline_run_node_steps(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetPipelineRunNodeStepsPathParams,
    ) -> Result<GetPipelineRunNodeStepsResponse, E>;

    /// GetPipelineRunNodes - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes
    async fn get_pipeline_run_nodes(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetPipelineRunNodesPathParams,
    ) -> Result<GetPipelineRunNodesResponse, E>;

    /// GetPipelineRuns - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs
    async fn get_pipeline_runs(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetPipelineRunsPathParams,
    ) -> Result<GetPipelineRunsResponse, E>;

    /// GetPipelines - GET /blue/rest/organizations/{organization}/pipelines/
    async fn get_pipelines(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetPipelinesPathParams,
    ) -> Result<GetPipelinesResponse, E>;

    /// GetScm - GET /blue/rest/organizations/{organization}/scm/{scm}
    async fn get_scm(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetScmPathParams,
    ) -> Result<GetScmResponse, E>;

    /// GetScmOrganisationRepositories - GET /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories
    async fn get_scm_organisation_repositories(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetScmOrganisationRepositoriesPathParams,
      query_params: &models::GetScmOrganisationRepositoriesQueryParams,
    ) -> Result<GetScmOrganisationRepositoriesResponse, E>;

    /// GetScmOrganisationRepository - GET /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}
    async fn get_scm_organisation_repository(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetScmOrganisationRepositoryPathParams,
      query_params: &models::GetScmOrganisationRepositoryQueryParams,
    ) -> Result<GetScmOrganisationRepositoryResponse, E>;

    /// GetScmOrganisations - GET /blue/rest/organizations/{organization}/scm/{scm}/organizations
    async fn get_scm_organisations(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetScmOrganisationsPathParams,
      query_params: &models::GetScmOrganisationsQueryParams,
    ) -> Result<GetScmOrganisationsResponse, E>;

    /// GetUser - GET /blue/rest/organizations/{organization}/users/{user}
    async fn get_user(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetUserPathParams,
    ) -> Result<GetUserResponse, E>;

    /// GetUserFavorites - GET /blue/rest/users/{user}/favorites
    async fn get_user_favorites(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetUserFavoritesPathParams,
    ) -> Result<GetUserFavoritesResponse, E>;

    /// GetUsers - GET /blue/rest/organizations/{organization}/users/
    async fn get_users(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetUsersPathParams,
    ) -> Result<GetUsersResponse, E>;

    /// PostPipelineRun - POST /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay
    async fn post_pipeline_run(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::PostPipelineRunPathParams,
    ) -> Result<PostPipelineRunResponse, E>;

    /// PostPipelineRuns - POST /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs
    async fn post_pipeline_runs(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::PostPipelineRunsPathParams,
    ) -> Result<PostPipelineRunsResponse, E>;

    /// PutPipelineFavorite - PUT /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite
    async fn put_pipeline_favorite(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::PutPipelineFavoritePathParams,
            body: &bool,
    ) -> Result<PutPipelineFavoriteResponse, E>;

    /// PutPipelineRun - PUT /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop
    async fn put_pipeline_run(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::PutPipelineRunPathParams,
      query_params: &models::PutPipelineRunQueryParams,
    ) -> Result<PutPipelineRunResponse, E>;

    /// Search - GET /blue/rest/search/
    async fn search(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      query_params: &models::SearchQueryParams,
    ) -> Result<SearchResponse, E>;

    /// SearchClasses - GET /blue/rest/classes/
    async fn search_classes(
    &self,
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      query_params: &models::SearchClassesQueryParams,
    ) -> Result<SearchClassesResponse, E>;
}
