#![allow(missing_docs, trivial_casts, unused_variables, unused_mut, unused_imports, unused_extern_crates, non_camel_case_types)]

use async_trait::async_trait;
use futures::Stream;
use std::error::Error;
use std::task::{Poll, Context};
use swagger::{ApiError, ContextWrapper};
use serde::{Serialize, Deserialize};

type ServiceError = Box<dyn Error + Send + Sync + 'static>;

pub const BASE_PATH: &'static str = "";
pub const API_VERSION: &'static str = "1.1.2-pre.0";

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetCrumbResponse {
    /// Successfully retrieved CSRF protection token
    SuccessfullyRetrievedCSRFProtectionToken
    (models::DefaultCrumbIssuer)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum DeletePipelineQueueItemResponse {
    /// Successfully deleted queue item
    SuccessfullyDeletedQueueItem
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetAuthenticatedUserResponse {
    /// Successfully retrieved authenticated user details
    SuccessfullyRetrievedAuthenticatedUserDetails
    (models::User)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetClassesResponse {
    /// Successfully retrieved class names
    SuccessfullyRetrievedClassNames
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetJsonWebKeyResponse {
    /// Successfully retrieved JWT token
    SuccessfullyRetrievedJWTToken
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetJsonWebTokenResponse {
    /// Successfully retrieved JWT token
    SuccessfullyRetrievedJWTToken
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetOrganisationResponse {
    /// Successfully retrieved pipeline details
    SuccessfullyRetrievedPipelineDetails
    (models::Organisation)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
    ,
    /// Pipeline cannot be found on Jenkins instance
    PipelineCannotBeFoundOnJenkinsInstance
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetOrganisationsResponse {
    /// Successfully retrieved pipelines details
    SuccessfullyRetrievedPipelinesDetails
    (Vec<models::Organisation>)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetPipelineResponse {
    /// Successfully retrieved pipeline details
    SuccessfullyRetrievedPipelineDetails
    (models::Pipeline)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
    ,
    /// Pipeline cannot be found on Jenkins instance
    PipelineCannotBeFoundOnJenkinsInstance
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetPipelineActivitiesResponse {
    /// Successfully retrieved all activities details
    SuccessfullyRetrievedAllActivitiesDetails
    (Vec<models::PipelineActivity>)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetPipelineBranchResponse {
    /// Successfully retrieved branch details
    SuccessfullyRetrievedBranchDetails
    (models::BranchImpl)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetPipelineBranchRunResponse {
    /// Successfully retrieved run details
    SuccessfullyRetrievedRunDetails
    (models::PipelineRun)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetPipelineBranchesResponse {
    /// Successfully retrieved all branches details
    SuccessfullyRetrievedAllBranchesDetails
    (models::MultibranchPipeline)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetPipelineFolderResponse {
    /// Successfully retrieved folder details
    SuccessfullyRetrievedFolderDetails
    (models::PipelineFolderImpl)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetPipelineFolderPipelineResponse {
    /// Successfully retrieved pipeline details
    SuccessfullyRetrievedPipelineDetails
    (models::PipelineImpl)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetPipelineQueueResponse {
    /// Successfully retrieved queue details
    SuccessfullyRetrievedQueueDetails
    (Vec<models::QueueItemImpl>)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetPipelineRunResponse {
    /// Successfully retrieved run details
    SuccessfullyRetrievedRunDetails
    (models::PipelineRun)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetPipelineRunLogResponse {
    /// Successfully retrieved pipeline run log
    SuccessfullyRetrievedPipelineRunLog
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetPipelineRunNodeResponse {
    /// Successfully retrieved run node details
    SuccessfullyRetrievedRunNodeDetails
    (models::PipelineRunNode)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetPipelineRunNodeStepResponse {
    /// Successfully retrieved run node step details
    SuccessfullyRetrievedRunNodeStepDetails
    (models::PipelineStepImpl)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetPipelineRunNodeStepLogResponse {
    /// Successfully retrieved pipeline run node step log
    SuccessfullyRetrievedPipelineRunNodeStepLog
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetPipelineRunNodeStepsResponse {
    /// Successfully retrieved run node steps details
    SuccessfullyRetrievedRunNodeStepsDetails
    (Vec<models::PipelineStepImpl>)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetPipelineRunNodesResponse {
    /// Successfully retrieved run nodes details
    SuccessfullyRetrievedRunNodesDetails
    (Vec<models::PipelineRunNode>)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetPipelineRunsResponse {
    /// Successfully retrieved runs details
    SuccessfullyRetrievedRunsDetails
    (Vec<models::PipelineRun>)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetPipelinesResponse {
    /// Successfully retrieved pipelines details
    SuccessfullyRetrievedPipelinesDetails
    (Vec<models::Pipeline>)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetSCMResponse {
    /// Successfully retrieved SCM details
    SuccessfullyRetrievedSCMDetails
    (models::GithubScm)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetSCMOrganisationRepositoriesResponse {
    /// Successfully retrieved SCM organization repositories details
    SuccessfullyRetrievedSCMOrganizationRepositoriesDetails
    (Vec<models::GithubOrganization>)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetSCMOrganisationRepositoryResponse {
    /// Successfully retrieved SCM organizations details
    SuccessfullyRetrievedSCMOrganizationsDetails
    (Vec<models::GithubOrganization>)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetSCMOrganisationsResponse {
    /// Successfully retrieved SCM organizations details
    SuccessfullyRetrievedSCMOrganizationsDetails
    (Vec<models::GithubOrganization>)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetUserResponse {
    /// Successfully retrieved users details
    SuccessfullyRetrievedUsersDetails
    (models::User)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetUserFavoritesResponse {
    /// Successfully retrieved users favorites details
    SuccessfullyRetrievedUsersFavoritesDetails
    (Vec<models::FavoriteImpl>)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetUsersResponse {
    /// Successfully retrieved users details
    SuccessfullyRetrievedUsersDetails
    (models::User)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum PostPipelineRunResponse {
    /// Successfully replayed a pipeline run
    SuccessfullyReplayedAPipelineRun
    (models::QueueItemImpl)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum PostPipelineRunsResponse {
    /// Successfully started a build
    SuccessfullyStartedABuild
    (models::QueueItemImpl)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum PutPipelineFavoriteResponse {
    /// Successfully favorited/unfavorited a pipeline
    SuccessfullyFavorited
    (models::FavoriteImpl)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum PutPipelineRunResponse {
    /// Successfully stopped a build
    SuccessfullyStoppedABuild
    (models::PipelineRun)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum SearchResponse {
    /// Successfully retrieved search result
    SuccessfullyRetrievedSearchResult
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum SearchClassesResponse {
    /// Successfully retrieved search result
    SuccessfullyRetrievedSearchResult
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetComputerResponse {
    /// Successfully retrieved computer details
    SuccessfullyRetrievedComputerDetails
    (models::ComputerSet)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetJenkinsResponse {
    /// Successfully retrieved Jenkins details
    SuccessfullyRetrievedJenkinsDetails
    (models::Hudson)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetJobResponse {
    /// Successfully retrieved job details
    SuccessfullyRetrievedJobDetails
    (models::FreeStyleProject)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
    ,
    /// Job cannot be found on Jenkins instance
    JobCannotBeFoundOnJenkinsInstance
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetJobConfigResponse {
    /// Successfully retrieved job configuration in config.xml format
    SuccessfullyRetrievedJobConfigurationInConfig
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
    ,
    /// Job cannot be found on Jenkins instance
    JobCannotBeFoundOnJenkinsInstance
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetJobLastBuildResponse {
    /// Successfully retrieved job's last build details
    SuccessfullyRetrievedJob
    (models::FreeStyleBuild)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
    ,
    /// Job cannot be found on Jenkins instance
    JobCannotBeFoundOnJenkinsInstance
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetJobProgressiveTextResponse {
    /// Successfully retrieved job's build progressive text output
    SuccessfullyRetrievedJob
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
    ,
    /// Job cannot be found on Jenkins instance
    JobCannotBeFoundOnJenkinsInstance
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetQueueResponse {
    /// Successfully retrieved queue details
    SuccessfullyRetrievedQueueDetails
    (models::Queue)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetQueueItemResponse {
    /// Successfully retrieved queued item details
    SuccessfullyRetrievedQueuedItemDetails
    (models::Queue)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetViewResponse {
    /// Successfully retrieved view details
    SuccessfullyRetrievedViewDetails
    (models::ListView)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
    ,
    /// View cannot be found on Jenkins instance
    ViewCannotBeFoundOnJenkinsInstance
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GetViewConfigResponse {
    /// Successfully retrieved view configuration in config.xml format
    SuccessfullyRetrievedViewConfigurationInConfig
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
    ,
    /// View cannot be found on Jenkins instance
    ViewCannotBeFoundOnJenkinsInstance
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum HeadJenkinsResponse {
    /// Successfully retrieved Jenkins headers
    SuccessfullyRetrievedJenkinsHeaders
    {
        x_jenkins:
        Option<
        String
        >
    }
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum PostCreateItemResponse {
    /// Successfully created a new job
    SuccessfullyCreatedANewJob
    ,
    /// An error has occurred - error message is embedded inside the HTML response
    AnErrorHasOccurred
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum PostCreateViewResponse {
    /// Successfully created the view
    SuccessfullyCreatedTheView
    ,
    /// An error has occurred - error message is embedded inside the HTML response
    AnErrorHasOccurred
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum PostJobBuildResponse {
    /// Successfully built the job (backward compatibility for older versions of Jenkins)
    SuccessfullyBuiltTheJob
    ,
    /// Successfully built the job
    SuccessfullyBuiltTheJob_2
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
    ,
    /// Job cannot be found on Jenkins instance
    JobCannotBeFoundOnJenkinsInstance
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum PostJobConfigResponse {
    /// Successfully retrieved job configuration in config.xml format
    SuccessfullyRetrievedJobConfigurationInConfig
    ,
    /// An error has occurred - error message is embedded inside the HTML response
    AnErrorHasOccurred
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
    ,
    /// Job cannot be found on Jenkins instance
    JobCannotBeFoundOnJenkinsInstance
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum PostJobDeleteResponse {
    /// Successfully deleted the job
    SuccessfullyDeletedTheJob
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
    ,
    /// Job cannot be found on Jenkins instance
    JobCannotBeFoundOnJenkinsInstance
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum PostJobDisableResponse {
    /// Successfully disabled the job
    SuccessfullyDisabledTheJob
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
    ,
    /// Job cannot be found on Jenkins instance
    JobCannotBeFoundOnJenkinsInstance
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum PostJobEnableResponse {
    /// Successfully enabled the job
    SuccessfullyEnabledTheJob
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
    ,
    /// Job cannot be found on Jenkins instance
    JobCannotBeFoundOnJenkinsInstance
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum PostJobLastBuildStopResponse {
    /// Successfully stopped the job
    SuccessfullyStoppedTheJob
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
    ,
    /// Job cannot be found on Jenkins instance
    JobCannotBeFoundOnJenkinsInstance
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum PostViewConfigResponse {
    /// Successfully updated view configuration
    SuccessfullyUpdatedViewConfiguration
    ,
    /// An error has occurred - error message is embedded inside the HTML response
    AnErrorHasOccurred
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication
    ,
    /// View cannot be found on Jenkins instance
    ViewCannotBeFoundOnJenkinsInstance
}

/// API
#[async_trait]
pub trait Api<C: Send + Sync> {
    fn poll_ready(&self, _cx: &mut Context) -> Poll<Result<(), Box<dyn Error + Send + Sync + 'static>>> {
        Poll::Ready(Ok(()))
    }

    async fn get_crumb(
        &self,
        context: &C) -> Result<GetCrumbResponse, ApiError>;

    async fn delete_pipeline_queue_item(
        &self,
        organization: String,
        pipeline: String,
        queue: String,
        context: &C) -> Result<DeletePipelineQueueItemResponse, ApiError>;

    async fn get_authenticated_user(
        &self,
        organization: String,
        context: &C) -> Result<GetAuthenticatedUserResponse, ApiError>;

    async fn get_classes(
        &self,
        class: String,
        context: &C) -> Result<GetClassesResponse, ApiError>;

    async fn get_json_web_key(
        &self,
        key: i32,
        context: &C) -> Result<GetJsonWebKeyResponse, ApiError>;

    async fn get_json_web_token(
        &self,
        expiry_time_in_mins: Option<i32>,
        max_expiry_time_in_mins: Option<i32>,
        context: &C) -> Result<GetJsonWebTokenResponse, ApiError>;

    async fn get_organisation(
        &self,
        organization: String,
        context: &C) -> Result<GetOrganisationResponse, ApiError>;

    async fn get_organisations(
        &self,
        context: &C) -> Result<GetOrganisationsResponse, ApiError>;

    async fn get_pipeline(
        &self,
        organization: String,
        pipeline: String,
        context: &C) -> Result<GetPipelineResponse, ApiError>;

    async fn get_pipeline_activities(
        &self,
        organization: String,
        pipeline: String,
        context: &C) -> Result<GetPipelineActivitiesResponse, ApiError>;

    async fn get_pipeline_branch(
        &self,
        organization: String,
        pipeline: String,
        branch: String,
        context: &C) -> Result<GetPipelineBranchResponse, ApiError>;

    async fn get_pipeline_branch_run(
        &self,
        organization: String,
        pipeline: String,
        branch: String,
        run: String,
        context: &C) -> Result<GetPipelineBranchRunResponse, ApiError>;

    async fn get_pipeline_branches(
        &self,
        organization: String,
        pipeline: String,
        context: &C) -> Result<GetPipelineBranchesResponse, ApiError>;

    async fn get_pipeline_folder(
        &self,
        organization: String,
        folder: String,
        context: &C) -> Result<GetPipelineFolderResponse, ApiError>;

    async fn get_pipeline_folder_pipeline(
        &self,
        organization: String,
        pipeline: String,
        folder: String,
        context: &C) -> Result<GetPipelineFolderPipelineResponse, ApiError>;

    async fn get_pipeline_queue(
        &self,
        organization: String,
        pipeline: String,
        context: &C) -> Result<GetPipelineQueueResponse, ApiError>;

    async fn get_pipeline_run(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        context: &C) -> Result<GetPipelineRunResponse, ApiError>;

    async fn get_pipeline_run_log(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        start: Option<i32>,
        download: Option<bool>,
        context: &C) -> Result<GetPipelineRunLogResponse, ApiError>;

    async fn get_pipeline_run_node(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        node: String,
        context: &C) -> Result<GetPipelineRunNodeResponse, ApiError>;

    async fn get_pipeline_run_node_step(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        node: String,
        step: String,
        context: &C) -> Result<GetPipelineRunNodeStepResponse, ApiError>;

    async fn get_pipeline_run_node_step_log(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        node: String,
        step: String,
        context: &C) -> Result<GetPipelineRunNodeStepLogResponse, ApiError>;

    async fn get_pipeline_run_node_steps(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        node: String,
        context: &C) -> Result<GetPipelineRunNodeStepsResponse, ApiError>;

    async fn get_pipeline_run_nodes(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        context: &C) -> Result<GetPipelineRunNodesResponse, ApiError>;

    async fn get_pipeline_runs(
        &self,
        organization: String,
        pipeline: String,
        context: &C) -> Result<GetPipelineRunsResponse, ApiError>;

    async fn get_pipelines(
        &self,
        organization: String,
        context: &C) -> Result<GetPipelinesResponse, ApiError>;

    async fn get_scm(
        &self,
        organization: String,
        scm: String,
        context: &C) -> Result<GetSCMResponse, ApiError>;

    async fn get_scm_organisation_repositories(
        &self,
        organization: String,
        scm: String,
        scm_organisation: String,
        credential_id: Option<String>,
        page_size: Option<i32>,
        page_number: Option<i32>,
        context: &C) -> Result<GetSCMOrganisationRepositoriesResponse, ApiError>;

    async fn get_scm_organisation_repository(
        &self,
        organization: String,
        scm: String,
        scm_organisation: String,
        repository: String,
        credential_id: Option<String>,
        context: &C) -> Result<GetSCMOrganisationRepositoryResponse, ApiError>;

    async fn get_scm_organisations(
        &self,
        organization: String,
        scm: String,
        credential_id: Option<String>,
        context: &C) -> Result<GetSCMOrganisationsResponse, ApiError>;

    async fn get_user(
        &self,
        organization: String,
        user: String,
        context: &C) -> Result<GetUserResponse, ApiError>;

    async fn get_user_favorites(
        &self,
        user: String,
        context: &C) -> Result<GetUserFavoritesResponse, ApiError>;

    async fn get_users(
        &self,
        organization: String,
        context: &C) -> Result<GetUsersResponse, ApiError>;

    async fn post_pipeline_run(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        context: &C) -> Result<PostPipelineRunResponse, ApiError>;

    async fn post_pipeline_runs(
        &self,
        organization: String,
        pipeline: String,
        context: &C) -> Result<PostPipelineRunsResponse, ApiError>;

    async fn put_pipeline_favorite(
        &self,
        organization: String,
        pipeline: String,
        body: bool,
        context: &C) -> Result<PutPipelineFavoriteResponse, ApiError>;

    async fn put_pipeline_run(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        blocking: Option<String>,
        time_out_in_secs: Option<i32>,
        context: &C) -> Result<PutPipelineRunResponse, ApiError>;

    async fn search(
        &self,
        q: String,
        context: &C) -> Result<SearchResponse, ApiError>;

    async fn search_classes(
        &self,
        q: String,
        context: &C) -> Result<SearchClassesResponse, ApiError>;

    async fn get_computer(
        &self,
        depth: i32,
        context: &C) -> Result<GetComputerResponse, ApiError>;

    async fn get_jenkins(
        &self,
        context: &C) -> Result<GetJenkinsResponse, ApiError>;

    async fn get_job(
        &self,
        name: String,
        context: &C) -> Result<GetJobResponse, ApiError>;

    async fn get_job_config(
        &self,
        name: String,
        context: &C) -> Result<GetJobConfigResponse, ApiError>;

    async fn get_job_last_build(
        &self,
        name: String,
        context: &C) -> Result<GetJobLastBuildResponse, ApiError>;

    async fn get_job_progressive_text(
        &self,
        name: String,
        number: String,
        start: String,
        context: &C) -> Result<GetJobProgressiveTextResponse, ApiError>;

    async fn get_queue(
        &self,
        context: &C) -> Result<GetQueueResponse, ApiError>;

    async fn get_queue_item(
        &self,
        number: String,
        context: &C) -> Result<GetQueueItemResponse, ApiError>;

    async fn get_view(
        &self,
        name: String,
        context: &C) -> Result<GetViewResponse, ApiError>;

    async fn get_view_config(
        &self,
        name: String,
        context: &C) -> Result<GetViewConfigResponse, ApiError>;

    async fn head_jenkins(
        &self,
        context: &C) -> Result<HeadJenkinsResponse, ApiError>;

    async fn post_create_item(
        &self,
        name: String,
        from: Option<String>,
        mode: Option<String>,
        jenkins_crumb: Option<String>,
        content_type: Option<String>,
        body: Option<String>,
        context: &C) -> Result<PostCreateItemResponse, ApiError>;

    async fn post_create_view(
        &self,
        name: String,
        jenkins_crumb: Option<String>,
        content_type: Option<String>,
        body: Option<String>,
        context: &C) -> Result<PostCreateViewResponse, ApiError>;

    async fn post_job_build(
        &self,
        name: String,
        json: String,
        token: Option<String>,
        jenkins_crumb: Option<String>,
        context: &C) -> Result<PostJobBuildResponse, ApiError>;

    async fn post_job_config(
        &self,
        name: String,
        body: String,
        jenkins_crumb: Option<String>,
        context: &C) -> Result<PostJobConfigResponse, ApiError>;

    async fn post_job_delete(
        &self,
        name: String,
        jenkins_crumb: Option<String>,
        context: &C) -> Result<PostJobDeleteResponse, ApiError>;

    async fn post_job_disable(
        &self,
        name: String,
        jenkins_crumb: Option<String>,
        context: &C) -> Result<PostJobDisableResponse, ApiError>;

    async fn post_job_enable(
        &self,
        name: String,
        jenkins_crumb: Option<String>,
        context: &C) -> Result<PostJobEnableResponse, ApiError>;

    async fn post_job_last_build_stop(
        &self,
        name: String,
        jenkins_crumb: Option<String>,
        context: &C) -> Result<PostJobLastBuildStopResponse, ApiError>;

    async fn post_view_config(
        &self,
        name: String,
        body: String,
        jenkins_crumb: Option<String>,
        context: &C) -> Result<PostViewConfigResponse, ApiError>;

}

/// API where `Context` isn't passed on every API call
#[async_trait]
pub trait ApiNoContext<C: Send + Sync> {

    fn poll_ready(&self, _cx: &mut Context) -> Poll<Result<(), Box<dyn Error + Send + Sync + 'static>>>;

    fn context(&self) -> &C;

    async fn get_crumb(
        &self,
        ) -> Result<GetCrumbResponse, ApiError>;

    async fn delete_pipeline_queue_item(
        &self,
        organization: String,
        pipeline: String,
        queue: String,
        ) -> Result<DeletePipelineQueueItemResponse, ApiError>;

    async fn get_authenticated_user(
        &self,
        organization: String,
        ) -> Result<GetAuthenticatedUserResponse, ApiError>;

    async fn get_classes(
        &self,
        class: String,
        ) -> Result<GetClassesResponse, ApiError>;

    async fn get_json_web_key(
        &self,
        key: i32,
        ) -> Result<GetJsonWebKeyResponse, ApiError>;

    async fn get_json_web_token(
        &self,
        expiry_time_in_mins: Option<i32>,
        max_expiry_time_in_mins: Option<i32>,
        ) -> Result<GetJsonWebTokenResponse, ApiError>;

    async fn get_organisation(
        &self,
        organization: String,
        ) -> Result<GetOrganisationResponse, ApiError>;

    async fn get_organisations(
        &self,
        ) -> Result<GetOrganisationsResponse, ApiError>;

    async fn get_pipeline(
        &self,
        organization: String,
        pipeline: String,
        ) -> Result<GetPipelineResponse, ApiError>;

    async fn get_pipeline_activities(
        &self,
        organization: String,
        pipeline: String,
        ) -> Result<GetPipelineActivitiesResponse, ApiError>;

    async fn get_pipeline_branch(
        &self,
        organization: String,
        pipeline: String,
        branch: String,
        ) -> Result<GetPipelineBranchResponse, ApiError>;

    async fn get_pipeline_branch_run(
        &self,
        organization: String,
        pipeline: String,
        branch: String,
        run: String,
        ) -> Result<GetPipelineBranchRunResponse, ApiError>;

    async fn get_pipeline_branches(
        &self,
        organization: String,
        pipeline: String,
        ) -> Result<GetPipelineBranchesResponse, ApiError>;

    async fn get_pipeline_folder(
        &self,
        organization: String,
        folder: String,
        ) -> Result<GetPipelineFolderResponse, ApiError>;

    async fn get_pipeline_folder_pipeline(
        &self,
        organization: String,
        pipeline: String,
        folder: String,
        ) -> Result<GetPipelineFolderPipelineResponse, ApiError>;

    async fn get_pipeline_queue(
        &self,
        organization: String,
        pipeline: String,
        ) -> Result<GetPipelineQueueResponse, ApiError>;

    async fn get_pipeline_run(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        ) -> Result<GetPipelineRunResponse, ApiError>;

    async fn get_pipeline_run_log(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        start: Option<i32>,
        download: Option<bool>,
        ) -> Result<GetPipelineRunLogResponse, ApiError>;

    async fn get_pipeline_run_node(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        node: String,
        ) -> Result<GetPipelineRunNodeResponse, ApiError>;

    async fn get_pipeline_run_node_step(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        node: String,
        step: String,
        ) -> Result<GetPipelineRunNodeStepResponse, ApiError>;

    async fn get_pipeline_run_node_step_log(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        node: String,
        step: String,
        ) -> Result<GetPipelineRunNodeStepLogResponse, ApiError>;

    async fn get_pipeline_run_node_steps(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        node: String,
        ) -> Result<GetPipelineRunNodeStepsResponse, ApiError>;

    async fn get_pipeline_run_nodes(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        ) -> Result<GetPipelineRunNodesResponse, ApiError>;

    async fn get_pipeline_runs(
        &self,
        organization: String,
        pipeline: String,
        ) -> Result<GetPipelineRunsResponse, ApiError>;

    async fn get_pipelines(
        &self,
        organization: String,
        ) -> Result<GetPipelinesResponse, ApiError>;

    async fn get_scm(
        &self,
        organization: String,
        scm: String,
        ) -> Result<GetSCMResponse, ApiError>;

    async fn get_scm_organisation_repositories(
        &self,
        organization: String,
        scm: String,
        scm_organisation: String,
        credential_id: Option<String>,
        page_size: Option<i32>,
        page_number: Option<i32>,
        ) -> Result<GetSCMOrganisationRepositoriesResponse, ApiError>;

    async fn get_scm_organisation_repository(
        &self,
        organization: String,
        scm: String,
        scm_organisation: String,
        repository: String,
        credential_id: Option<String>,
        ) -> Result<GetSCMOrganisationRepositoryResponse, ApiError>;

    async fn get_scm_organisations(
        &self,
        organization: String,
        scm: String,
        credential_id: Option<String>,
        ) -> Result<GetSCMOrganisationsResponse, ApiError>;

    async fn get_user(
        &self,
        organization: String,
        user: String,
        ) -> Result<GetUserResponse, ApiError>;

    async fn get_user_favorites(
        &self,
        user: String,
        ) -> Result<GetUserFavoritesResponse, ApiError>;

    async fn get_users(
        &self,
        organization: String,
        ) -> Result<GetUsersResponse, ApiError>;

    async fn post_pipeline_run(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        ) -> Result<PostPipelineRunResponse, ApiError>;

    async fn post_pipeline_runs(
        &self,
        organization: String,
        pipeline: String,
        ) -> Result<PostPipelineRunsResponse, ApiError>;

    async fn put_pipeline_favorite(
        &self,
        organization: String,
        pipeline: String,
        body: bool,
        ) -> Result<PutPipelineFavoriteResponse, ApiError>;

    async fn put_pipeline_run(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        blocking: Option<String>,
        time_out_in_secs: Option<i32>,
        ) -> Result<PutPipelineRunResponse, ApiError>;

    async fn search(
        &self,
        q: String,
        ) -> Result<SearchResponse, ApiError>;

    async fn search_classes(
        &self,
        q: String,
        ) -> Result<SearchClassesResponse, ApiError>;

    async fn get_computer(
        &self,
        depth: i32,
        ) -> Result<GetComputerResponse, ApiError>;

    async fn get_jenkins(
        &self,
        ) -> Result<GetJenkinsResponse, ApiError>;

    async fn get_job(
        &self,
        name: String,
        ) -> Result<GetJobResponse, ApiError>;

    async fn get_job_config(
        &self,
        name: String,
        ) -> Result<GetJobConfigResponse, ApiError>;

    async fn get_job_last_build(
        &self,
        name: String,
        ) -> Result<GetJobLastBuildResponse, ApiError>;

    async fn get_job_progressive_text(
        &self,
        name: String,
        number: String,
        start: String,
        ) -> Result<GetJobProgressiveTextResponse, ApiError>;

    async fn get_queue(
        &self,
        ) -> Result<GetQueueResponse, ApiError>;

    async fn get_queue_item(
        &self,
        number: String,
        ) -> Result<GetQueueItemResponse, ApiError>;

    async fn get_view(
        &self,
        name: String,
        ) -> Result<GetViewResponse, ApiError>;

    async fn get_view_config(
        &self,
        name: String,
        ) -> Result<GetViewConfigResponse, ApiError>;

    async fn head_jenkins(
        &self,
        ) -> Result<HeadJenkinsResponse, ApiError>;

    async fn post_create_item(
        &self,
        name: String,
        from: Option<String>,
        mode: Option<String>,
        jenkins_crumb: Option<String>,
        content_type: Option<String>,
        body: Option<String>,
        ) -> Result<PostCreateItemResponse, ApiError>;

    async fn post_create_view(
        &self,
        name: String,
        jenkins_crumb: Option<String>,
        content_type: Option<String>,
        body: Option<String>,
        ) -> Result<PostCreateViewResponse, ApiError>;

    async fn post_job_build(
        &self,
        name: String,
        json: String,
        token: Option<String>,
        jenkins_crumb: Option<String>,
        ) -> Result<PostJobBuildResponse, ApiError>;

    async fn post_job_config(
        &self,
        name: String,
        body: String,
        jenkins_crumb: Option<String>,
        ) -> Result<PostJobConfigResponse, ApiError>;

    async fn post_job_delete(
        &self,
        name: String,
        jenkins_crumb: Option<String>,
        ) -> Result<PostJobDeleteResponse, ApiError>;

    async fn post_job_disable(
        &self,
        name: String,
        jenkins_crumb: Option<String>,
        ) -> Result<PostJobDisableResponse, ApiError>;

    async fn post_job_enable(
        &self,
        name: String,
        jenkins_crumb: Option<String>,
        ) -> Result<PostJobEnableResponse, ApiError>;

    async fn post_job_last_build_stop(
        &self,
        name: String,
        jenkins_crumb: Option<String>,
        ) -> Result<PostJobLastBuildStopResponse, ApiError>;

    async fn post_view_config(
        &self,
        name: String,
        body: String,
        jenkins_crumb: Option<String>,
        ) -> Result<PostViewConfigResponse, ApiError>;

}

/// Trait to extend an API to make it easy to bind it to a context.
pub trait ContextWrapperExt<C: Send + Sync> where Self: Sized
{
    /// Binds this API to a context.
    fn with_context(self: Self, context: C) -> ContextWrapper<Self, C>;
}

impl<T: Api<C> + Send + Sync, C: Clone + Send + Sync> ContextWrapperExt<C> for T {
    fn with_context(self: T, context: C) -> ContextWrapper<T, C> {
         ContextWrapper::<T, C>::new(self, context)
    }
}

#[async_trait]
impl<T: Api<C> + Send + Sync, C: Clone + Send + Sync> ApiNoContext<C> for ContextWrapper<T, C> {
    fn poll_ready(&self, cx: &mut Context) -> Poll<Result<(), ServiceError>> {
        self.api().poll_ready(cx)
    }

    fn context(&self) -> &C {
        ContextWrapper::context(self)
    }

    async fn get_crumb(
        &self,
        ) -> Result<GetCrumbResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_crumb(&context).await
    }

    async fn delete_pipeline_queue_item(
        &self,
        organization: String,
        pipeline: String,
        queue: String,
        ) -> Result<DeletePipelineQueueItemResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().delete_pipeline_queue_item(organization, pipeline, queue, &context).await
    }

    async fn get_authenticated_user(
        &self,
        organization: String,
        ) -> Result<GetAuthenticatedUserResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_authenticated_user(organization, &context).await
    }

    async fn get_classes(
        &self,
        class: String,
        ) -> Result<GetClassesResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_classes(class, &context).await
    }

    async fn get_json_web_key(
        &self,
        key: i32,
        ) -> Result<GetJsonWebKeyResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_json_web_key(key, &context).await
    }

    async fn get_json_web_token(
        &self,
        expiry_time_in_mins: Option<i32>,
        max_expiry_time_in_mins: Option<i32>,
        ) -> Result<GetJsonWebTokenResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_json_web_token(expiry_time_in_mins, max_expiry_time_in_mins, &context).await
    }

    async fn get_organisation(
        &self,
        organization: String,
        ) -> Result<GetOrganisationResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_organisation(organization, &context).await
    }

    async fn get_organisations(
        &self,
        ) -> Result<GetOrganisationsResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_organisations(&context).await
    }

    async fn get_pipeline(
        &self,
        organization: String,
        pipeline: String,
        ) -> Result<GetPipelineResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_pipeline(organization, pipeline, &context).await
    }

    async fn get_pipeline_activities(
        &self,
        organization: String,
        pipeline: String,
        ) -> Result<GetPipelineActivitiesResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_pipeline_activities(organization, pipeline, &context).await
    }

    async fn get_pipeline_branch(
        &self,
        organization: String,
        pipeline: String,
        branch: String,
        ) -> Result<GetPipelineBranchResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_pipeline_branch(organization, pipeline, branch, &context).await
    }

    async fn get_pipeline_branch_run(
        &self,
        organization: String,
        pipeline: String,
        branch: String,
        run: String,
        ) -> Result<GetPipelineBranchRunResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_pipeline_branch_run(organization, pipeline, branch, run, &context).await
    }

    async fn get_pipeline_branches(
        &self,
        organization: String,
        pipeline: String,
        ) -> Result<GetPipelineBranchesResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_pipeline_branches(organization, pipeline, &context).await
    }

    async fn get_pipeline_folder(
        &self,
        organization: String,
        folder: String,
        ) -> Result<GetPipelineFolderResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_pipeline_folder(organization, folder, &context).await
    }

    async fn get_pipeline_folder_pipeline(
        &self,
        organization: String,
        pipeline: String,
        folder: String,
        ) -> Result<GetPipelineFolderPipelineResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_pipeline_folder_pipeline(organization, pipeline, folder, &context).await
    }

    async fn get_pipeline_queue(
        &self,
        organization: String,
        pipeline: String,
        ) -> Result<GetPipelineQueueResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_pipeline_queue(organization, pipeline, &context).await
    }

    async fn get_pipeline_run(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        ) -> Result<GetPipelineRunResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_pipeline_run(organization, pipeline, run, &context).await
    }

    async fn get_pipeline_run_log(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        start: Option<i32>,
        download: Option<bool>,
        ) -> Result<GetPipelineRunLogResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_pipeline_run_log(organization, pipeline, run, start, download, &context).await
    }

    async fn get_pipeline_run_node(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        node: String,
        ) -> Result<GetPipelineRunNodeResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_pipeline_run_node(organization, pipeline, run, node, &context).await
    }

    async fn get_pipeline_run_node_step(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        node: String,
        step: String,
        ) -> Result<GetPipelineRunNodeStepResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_pipeline_run_node_step(organization, pipeline, run, node, step, &context).await
    }

    async fn get_pipeline_run_node_step_log(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        node: String,
        step: String,
        ) -> Result<GetPipelineRunNodeStepLogResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_pipeline_run_node_step_log(organization, pipeline, run, node, step, &context).await
    }

    async fn get_pipeline_run_node_steps(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        node: String,
        ) -> Result<GetPipelineRunNodeStepsResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_pipeline_run_node_steps(organization, pipeline, run, node, &context).await
    }

    async fn get_pipeline_run_nodes(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        ) -> Result<GetPipelineRunNodesResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_pipeline_run_nodes(organization, pipeline, run, &context).await
    }

    async fn get_pipeline_runs(
        &self,
        organization: String,
        pipeline: String,
        ) -> Result<GetPipelineRunsResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_pipeline_runs(organization, pipeline, &context).await
    }

    async fn get_pipelines(
        &self,
        organization: String,
        ) -> Result<GetPipelinesResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_pipelines(organization, &context).await
    }

    async fn get_scm(
        &self,
        organization: String,
        scm: String,
        ) -> Result<GetSCMResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_scm(organization, scm, &context).await
    }

    async fn get_scm_organisation_repositories(
        &self,
        organization: String,
        scm: String,
        scm_organisation: String,
        credential_id: Option<String>,
        page_size: Option<i32>,
        page_number: Option<i32>,
        ) -> Result<GetSCMOrganisationRepositoriesResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_scm_organisation_repositories(organization, scm, scm_organisation, credential_id, page_size, page_number, &context).await
    }

    async fn get_scm_organisation_repository(
        &self,
        organization: String,
        scm: String,
        scm_organisation: String,
        repository: String,
        credential_id: Option<String>,
        ) -> Result<GetSCMOrganisationRepositoryResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_scm_organisation_repository(organization, scm, scm_organisation, repository, credential_id, &context).await
    }

    async fn get_scm_organisations(
        &self,
        organization: String,
        scm: String,
        credential_id: Option<String>,
        ) -> Result<GetSCMOrganisationsResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_scm_organisations(organization, scm, credential_id, &context).await
    }

    async fn get_user(
        &self,
        organization: String,
        user: String,
        ) -> Result<GetUserResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_user(organization, user, &context).await
    }

    async fn get_user_favorites(
        &self,
        user: String,
        ) -> Result<GetUserFavoritesResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_user_favorites(user, &context).await
    }

    async fn get_users(
        &self,
        organization: String,
        ) -> Result<GetUsersResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_users(organization, &context).await
    }

    async fn post_pipeline_run(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        ) -> Result<PostPipelineRunResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().post_pipeline_run(organization, pipeline, run, &context).await
    }

    async fn post_pipeline_runs(
        &self,
        organization: String,
        pipeline: String,
        ) -> Result<PostPipelineRunsResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().post_pipeline_runs(organization, pipeline, &context).await
    }

    async fn put_pipeline_favorite(
        &self,
        organization: String,
        pipeline: String,
        body: bool,
        ) -> Result<PutPipelineFavoriteResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().put_pipeline_favorite(organization, pipeline, body, &context).await
    }

    async fn put_pipeline_run(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        blocking: Option<String>,
        time_out_in_secs: Option<i32>,
        ) -> Result<PutPipelineRunResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().put_pipeline_run(organization, pipeline, run, blocking, time_out_in_secs, &context).await
    }

    async fn search(
        &self,
        q: String,
        ) -> Result<SearchResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().search(q, &context).await
    }

    async fn search_classes(
        &self,
        q: String,
        ) -> Result<SearchClassesResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().search_classes(q, &context).await
    }

    async fn get_computer(
        &self,
        depth: i32,
        ) -> Result<GetComputerResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_computer(depth, &context).await
    }

    async fn get_jenkins(
        &self,
        ) -> Result<GetJenkinsResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_jenkins(&context).await
    }

    async fn get_job(
        &self,
        name: String,
        ) -> Result<GetJobResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_job(name, &context).await
    }

    async fn get_job_config(
        &self,
        name: String,
        ) -> Result<GetJobConfigResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_job_config(name, &context).await
    }

    async fn get_job_last_build(
        &self,
        name: String,
        ) -> Result<GetJobLastBuildResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_job_last_build(name, &context).await
    }

    async fn get_job_progressive_text(
        &self,
        name: String,
        number: String,
        start: String,
        ) -> Result<GetJobProgressiveTextResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_job_progressive_text(name, number, start, &context).await
    }

    async fn get_queue(
        &self,
        ) -> Result<GetQueueResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_queue(&context).await
    }

    async fn get_queue_item(
        &self,
        number: String,
        ) -> Result<GetQueueItemResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_queue_item(number, &context).await
    }

    async fn get_view(
        &self,
        name: String,
        ) -> Result<GetViewResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_view(name, &context).await
    }

    async fn get_view_config(
        &self,
        name: String,
        ) -> Result<GetViewConfigResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().get_view_config(name, &context).await
    }

    async fn head_jenkins(
        &self,
        ) -> Result<HeadJenkinsResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().head_jenkins(&context).await
    }

    async fn post_create_item(
        &self,
        name: String,
        from: Option<String>,
        mode: Option<String>,
        jenkins_crumb: Option<String>,
        content_type: Option<String>,
        body: Option<String>,
        ) -> Result<PostCreateItemResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().post_create_item(name, from, mode, jenkins_crumb, content_type, body, &context).await
    }

    async fn post_create_view(
        &self,
        name: String,
        jenkins_crumb: Option<String>,
        content_type: Option<String>,
        body: Option<String>,
        ) -> Result<PostCreateViewResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().post_create_view(name, jenkins_crumb, content_type, body, &context).await
    }

    async fn post_job_build(
        &self,
        name: String,
        json: String,
        token: Option<String>,
        jenkins_crumb: Option<String>,
        ) -> Result<PostJobBuildResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().post_job_build(name, json, token, jenkins_crumb, &context).await
    }

    async fn post_job_config(
        &self,
        name: String,
        body: String,
        jenkins_crumb: Option<String>,
        ) -> Result<PostJobConfigResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().post_job_config(name, body, jenkins_crumb, &context).await
    }

    async fn post_job_delete(
        &self,
        name: String,
        jenkins_crumb: Option<String>,
        ) -> Result<PostJobDeleteResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().post_job_delete(name, jenkins_crumb, &context).await
    }

    async fn post_job_disable(
        &self,
        name: String,
        jenkins_crumb: Option<String>,
        ) -> Result<PostJobDisableResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().post_job_disable(name, jenkins_crumb, &context).await
    }

    async fn post_job_enable(
        &self,
        name: String,
        jenkins_crumb: Option<String>,
        ) -> Result<PostJobEnableResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().post_job_enable(name, jenkins_crumb, &context).await
    }

    async fn post_job_last_build_stop(
        &self,
        name: String,
        jenkins_crumb: Option<String>,
        ) -> Result<PostJobLastBuildStopResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().post_job_last_build_stop(name, jenkins_crumb, &context).await
    }

    async fn post_view_config(
        &self,
        name: String,
        body: String,
        jenkins_crumb: Option<String>,
        ) -> Result<PostViewConfigResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().post_view_config(name, body, jenkins_crumb, &context).await
    }

}


#[cfg(feature = "client")]
pub mod client;

// Re-export Client as a top-level name
#[cfg(feature = "client")]
pub use client::Client;

#[cfg(feature = "server")]
pub mod server;

// Re-export router() as a top-level name
#[cfg(feature = "server")]
pub use self::server::Service;

#[cfg(feature = "server")]
pub mod context;

pub mod models;

#[cfg(any(feature = "client", feature = "server"))]
pub(crate) mod header;
