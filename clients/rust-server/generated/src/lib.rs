#![allow(missing_docs, trivial_casts, unused_variables, unused_mut, unused_imports, unused_extern_crates, non_camel_case_types)]
extern crate serde;
#[macro_use]
extern crate serde_derive;
extern crate serde_json;


extern crate futures;
extern crate chrono;
#[macro_use]
extern crate lazy_static;
#[macro_use]
extern crate log;

// Logically this should be in the client and server modules, but rust doesn't allow `macro_use` from a module.
#[cfg(any(feature = "client", feature = "server"))]
#[macro_use]
extern crate hyper;

extern crate swagger;

#[macro_use]
extern crate url;

use futures::Stream;
use std::io::Error;

#[allow(unused_imports)]
use std::collections::HashMap;

pub use futures::Future;

#[cfg(any(feature = "client", feature = "server"))]
mod mimetypes;

pub use swagger::{ApiError, ContextWrapper};

pub const BASE_PATH: &'static str = "/";
pub const API_VERSION: &'static str = "1.1.1";


#[derive(Debug, PartialEq)]
pub enum GetCrumbResponse {
    /// Successfully retrieved CSRF protection token
    SuccessfullyRetrievedCSRFProtectionToken ( models::DefaultCrumbIssuer ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum DeletePipelineQueueItemResponse {
    /// Successfully deleted queue item
    SuccessfullyDeletedQueueItem ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetAuthenticatedUserResponse {
    /// Successfully retrieved authenticated user details
    SuccessfullyRetrievedAuthenticatedUserDetails ( models::User ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetClassesResponse {
    /// Successfully retrieved class names
    SuccessfullyRetrievedClassNames ( String ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetJsonWebKeyResponse {
    /// Successfully retrieved JWT token
    SuccessfullyRetrievedJWTToken ( String ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetJsonWebTokenResponse {
    /// Successfully retrieved JWT token
    SuccessfullyRetrievedJWTToken ( String ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetOrganisationResponse {
    /// Successfully retrieved pipeline details
    SuccessfullyRetrievedPipelineDetails ( models::Organisation ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
    /// Pipeline cannot be found on Jenkins instance
    PipelineCannotBeFoundOnJenkinsInstance ,
}

#[derive(Debug, PartialEq)]
pub enum GetOrganisationsResponse {
    /// Successfully retrieved pipelines details
    SuccessfullyRetrievedPipelinesDetails ( models::Organisations ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetPipelineResponse {
    /// Successfully retrieved pipeline details
    SuccessfullyRetrievedPipelineDetails ( models::Pipeline ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
    /// Pipeline cannot be found on Jenkins instance
    PipelineCannotBeFoundOnJenkinsInstance ,
}

#[derive(Debug, PartialEq)]
pub enum GetPipelineActivitiesResponse {
    /// Successfully retrieved all activities details
    SuccessfullyRetrievedAllActivitiesDetails ( models::PipelineActivities ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetPipelineBranchResponse {
    /// Successfully retrieved branch details
    SuccessfullyRetrievedBranchDetails ( models::BranchImpl ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetPipelineBranchRunResponse {
    /// Successfully retrieved run details
    SuccessfullyRetrievedRunDetails ( models::PipelineRun ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetPipelineBranchesResponse {
    /// Successfully retrieved all branches details
    SuccessfullyRetrievedAllBranchesDetails ( models::MultibranchPipeline ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetPipelineFolderResponse {
    /// Successfully retrieved folder details
    SuccessfullyRetrievedFolderDetails ( models::PipelineFolderImpl ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetPipelineFolderPipelineResponse {
    /// Successfully retrieved pipeline details
    SuccessfullyRetrievedPipelineDetails ( models::PipelineImpl ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetPipelineQueueResponse {
    /// Successfully retrieved queue details
    SuccessfullyRetrievedQueueDetails ( models::PipelineQueue ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetPipelineRunResponse {
    /// Successfully retrieved run details
    SuccessfullyRetrievedRunDetails ( models::PipelineRun ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetPipelineRunLogResponse {
    /// Successfully retrieved pipeline run log
    SuccessfullyRetrievedPipelineRunLog ( String ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetPipelineRunNodeResponse {
    /// Successfully retrieved run node details
    SuccessfullyRetrievedRunNodeDetails ( models::PipelineRunNode ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetPipelineRunNodeStepResponse {
    /// Successfully retrieved run node step details
    SuccessfullyRetrievedRunNodeStepDetails ( models::PipelineStepImpl ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetPipelineRunNodeStepLogResponse {
    /// Successfully retrieved pipeline run node step log
    SuccessfullyRetrievedPipelineRunNodeStepLog ( String ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetPipelineRunNodeStepsResponse {
    /// Successfully retrieved run node steps details
    SuccessfullyRetrievedRunNodeStepsDetails ( models::PipelineRunNodeSteps ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetPipelineRunNodesResponse {
    /// Successfully retrieved run nodes details
    SuccessfullyRetrievedRunNodesDetails ( models::PipelineRunNodes ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetPipelineRunsResponse {
    /// Successfully retrieved runs details
    SuccessfullyRetrievedRunsDetails ( models::PipelineRuns ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetPipelinesResponse {
    /// Successfully retrieved pipelines details
    SuccessfullyRetrievedPipelinesDetails ( models::Pipelines ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetSCMResponse {
    /// Successfully retrieved SCM details
    SuccessfullyRetrievedSCMDetails ( models::GithubScm ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetSCMOrganisationRepositoriesResponse {
    /// Successfully retrieved SCM organization repositories details
    SuccessfullyRetrievedSCMOrganizationRepositoriesDetails ( models::ScmOrganisations ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetSCMOrganisationRepositoryResponse {
    /// Successfully retrieved SCM organizations details
    SuccessfullyRetrievedSCMOrganizationsDetails ( models::ScmOrganisations ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetSCMOrganisationsResponse {
    /// Successfully retrieved SCM organizations details
    SuccessfullyRetrievedSCMOrganizationsDetails ( models::ScmOrganisations ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetUserResponse {
    /// Successfully retrieved users details
    SuccessfullyRetrievedUsersDetails ( models::User ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetUserFavoritesResponse {
    /// Successfully retrieved users favorites details
    SuccessfullyRetrievedUsersFavoritesDetails ( models::UserFavorites ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetUsersResponse {
    /// Successfully retrieved users details
    SuccessfullyRetrievedUsersDetails ( models::User ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum PostPipelineRunResponse {
    /// Successfully replayed a pipeline run
    SuccessfullyReplayedAPipelineRun ( models::QueueItemImpl ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum PostPipelineRunsResponse {
    /// Successfully started a build
    SuccessfullyStartedABuild ( models::QueueItemImpl ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum PutPipelineFavoriteResponse {
    /// Successfully favorited/unfavorited a pipeline
    SuccessfullyFavorited ( models::FavoriteImpl ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum PutPipelineRunResponse {
    /// Successfully stopped a build
    SuccessfullyStoppedABuild ( models::PipelineRun ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum SearchResponse {
    /// Successfully retrieved search result
    SuccessfullyRetrievedSearchResult ( String ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum SearchClassesResponse {
    /// Successfully retrieved search result
    SuccessfullyRetrievedSearchResult ( String ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetComputerResponse {
    /// Successfully retrieved computer details
    SuccessfullyRetrievedComputerDetails ( models::ComputerSet ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetJenkinsResponse {
    /// Successfully retrieved Jenkins details
    SuccessfullyRetrievedJenkinsDetails ( models::Hudson ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetJobResponse {
    /// Successfully retrieved job details
    SuccessfullyRetrievedJobDetails ( models::FreeStyleProject ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
    /// Job cannot be found on Jenkins instance
    JobCannotBeFoundOnJenkinsInstance ,
}

#[derive(Debug, PartialEq)]
pub enum GetJobConfigResponse {
    /// Successfully retrieved job configuration in config.xml format
    SuccessfullyRetrievedJobConfigurationInConfig ( String ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
    /// Job cannot be found on Jenkins instance
    JobCannotBeFoundOnJenkinsInstance ,
}

#[derive(Debug, PartialEq)]
pub enum GetJobLastBuildResponse {
    /// Successfully retrieved job's last build details
    SuccessfullyRetrievedJob ( models::FreeStyleBuild ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
    /// Job cannot be found on Jenkins instance
    JobCannotBeFoundOnJenkinsInstance ,
}

#[derive(Debug, PartialEq)]
pub enum GetJobProgressiveTextResponse {
    /// Successfully retrieved job's build progressive text output
    SuccessfullyRetrievedJob ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
    /// Job cannot be found on Jenkins instance
    JobCannotBeFoundOnJenkinsInstance ,
}

#[derive(Debug, PartialEq)]
pub enum GetQueueResponse {
    /// Successfully retrieved queue details
    SuccessfullyRetrievedQueueDetails ( models::Queue ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetQueueItemResponse {
    /// Successfully retrieved queued item details
    SuccessfullyRetrievedQueuedItemDetails ( models::Queue ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum GetViewResponse {
    /// Successfully retrieved view details
    SuccessfullyRetrievedViewDetails ( models::ListView ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
    /// View cannot be found on Jenkins instance
    ViewCannotBeFoundOnJenkinsInstance ,
}

#[derive(Debug, PartialEq)]
pub enum GetViewConfigResponse {
    /// Successfully retrieved view configuration in config.xml format
    SuccessfullyRetrievedViewConfigurationInConfig ( String ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
    /// View cannot be found on Jenkins instance
    ViewCannotBeFoundOnJenkinsInstance ,
}

#[derive(Debug, PartialEq)]
pub enum HeadJenkinsResponse {
    /// Successfully retrieved Jenkins headers
    SuccessfullyRetrievedJenkinsHeaders  { x_jenkins: String } ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum PostCreateItemResponse {
    /// Successfully created a new job
    SuccessfullyCreatedANewJob ,
    /// An error has occurred - error message is embedded inside the HTML response
    AnErrorHasOccurred ( String ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum PostCreateViewResponse {
    /// Successfully created the view
    SuccessfullyCreatedTheView ,
    /// An error has occurred - error message is embedded inside the HTML response
    AnErrorHasOccurred ( String ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
}

#[derive(Debug, PartialEq)]
pub enum PostJobBuildResponse {
    /// Successfully built the job (backward compatibility for older versions of Jenkins)
    SuccessfullyBuiltTheJob ,
    /// Successfully built the job
    SuccessfullyBuiltTheJob ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
    /// Job cannot be found on Jenkins instance
    JobCannotBeFoundOnJenkinsInstance ,
}

#[derive(Debug, PartialEq)]
pub enum PostJobConfigResponse {
    /// Successfully retrieved job configuration in config.xml format
    SuccessfullyRetrievedJobConfigurationInConfig ,
    /// An error has occurred - error message is embedded inside the HTML response
    AnErrorHasOccurred ( String ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
    /// Job cannot be found on Jenkins instance
    JobCannotBeFoundOnJenkinsInstance ,
}

#[derive(Debug, PartialEq)]
pub enum PostJobDeleteResponse {
    /// Successfully deleted the job
    SuccessfullyDeletedTheJob ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
    /// Job cannot be found on Jenkins instance
    JobCannotBeFoundOnJenkinsInstance ,
}

#[derive(Debug, PartialEq)]
pub enum PostJobDisableResponse {
    /// Successfully disabled the job
    SuccessfullyDisabledTheJob ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
    /// Job cannot be found on Jenkins instance
    JobCannotBeFoundOnJenkinsInstance ,
}

#[derive(Debug, PartialEq)]
pub enum PostJobEnableResponse {
    /// Successfully enabled the job
    SuccessfullyEnabledTheJob ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
    /// Job cannot be found on Jenkins instance
    JobCannotBeFoundOnJenkinsInstance ,
}

#[derive(Debug, PartialEq)]
pub enum PostJobLastBuildStopResponse {
    /// Successfully stopped the job
    SuccessfullyStoppedTheJob ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
    /// Job cannot be found on Jenkins instance
    JobCannotBeFoundOnJenkinsInstance ,
}

#[derive(Debug, PartialEq)]
pub enum PostViewConfigResponse {
    /// Successfully updated view configuration
    SuccessfullyUpdatedViewConfiguration ,
    /// An error has occurred - error message is embedded inside the HTML response
    AnErrorHasOccurred ( String ) ,
    /// Authentication failed - incorrect username and/or password
    AuthenticationFailed ,
    /// Jenkins requires authentication - please set username and password
    JenkinsRequiresAuthentication ,
    /// View cannot be found on Jenkins instance
    ViewCannotBeFoundOnJenkinsInstance ,
}


/// API
pub trait Api<C> {


    fn get_crumb(&self, context: &C) -> Box<Future<Item=GetCrumbResponse, Error=ApiError>>;


    fn delete_pipeline_queue_item(&self, organization: String, pipeline: String, queue: String, context: &C) -> Box<Future<Item=DeletePipelineQueueItemResponse, Error=ApiError>>;


    fn get_authenticated_user(&self, organization: String, context: &C) -> Box<Future<Item=GetAuthenticatedUserResponse, Error=ApiError>>;


    fn get_classes(&self, class: String, context: &C) -> Box<Future<Item=GetClassesResponse, Error=ApiError>>;


    fn get_json_web_key(&self, key: i32, context: &C) -> Box<Future<Item=GetJsonWebKeyResponse, Error=ApiError>>;


    fn get_json_web_token(&self, expiry_time_in_mins: Option<i32>, max_expiry_time_in_mins: Option<i32>, context: &C) -> Box<Future<Item=GetJsonWebTokenResponse, Error=ApiError>>;


    fn get_organisation(&self, organization: String, context: &C) -> Box<Future<Item=GetOrganisationResponse, Error=ApiError>>;


    fn get_organisations(&self, context: &C) -> Box<Future<Item=GetOrganisationsResponse, Error=ApiError>>;


    fn get_pipeline(&self, organization: String, pipeline: String, context: &C) -> Box<Future<Item=GetPipelineResponse, Error=ApiError>>;


    fn get_pipeline_activities(&self, organization: String, pipeline: String, context: &C) -> Box<Future<Item=GetPipelineActivitiesResponse, Error=ApiError>>;


    fn get_pipeline_branch(&self, organization: String, pipeline: String, branch: String, context: &C) -> Box<Future<Item=GetPipelineBranchResponse, Error=ApiError>>;


    fn get_pipeline_branch_run(&self, organization: String, pipeline: String, branch: String, run: String, context: &C) -> Box<Future<Item=GetPipelineBranchRunResponse, Error=ApiError>>;


    fn get_pipeline_branches(&self, organization: String, pipeline: String, context: &C) -> Box<Future<Item=GetPipelineBranchesResponse, Error=ApiError>>;


    fn get_pipeline_folder(&self, organization: String, folder: String, context: &C) -> Box<Future<Item=GetPipelineFolderResponse, Error=ApiError>>;


    fn get_pipeline_folder_pipeline(&self, organization: String, pipeline: String, folder: String, context: &C) -> Box<Future<Item=GetPipelineFolderPipelineResponse, Error=ApiError>>;


    fn get_pipeline_queue(&self, organization: String, pipeline: String, context: &C) -> Box<Future<Item=GetPipelineQueueResponse, Error=ApiError>>;


    fn get_pipeline_run(&self, organization: String, pipeline: String, run: String, context: &C) -> Box<Future<Item=GetPipelineRunResponse, Error=ApiError>>;


    fn get_pipeline_run_log(&self, organization: String, pipeline: String, run: String, start: Option<i32>, download: Option<bool>, context: &C) -> Box<Future<Item=GetPipelineRunLogResponse, Error=ApiError>>;


    fn get_pipeline_run_node(&self, organization: String, pipeline: String, run: String, node: String, context: &C) -> Box<Future<Item=GetPipelineRunNodeResponse, Error=ApiError>>;


    fn get_pipeline_run_node_step(&self, organization: String, pipeline: String, run: String, node: String, step: String, context: &C) -> Box<Future<Item=GetPipelineRunNodeStepResponse, Error=ApiError>>;


    fn get_pipeline_run_node_step_log(&self, organization: String, pipeline: String, run: String, node: String, step: String, context: &C) -> Box<Future<Item=GetPipelineRunNodeStepLogResponse, Error=ApiError>>;


    fn get_pipeline_run_node_steps(&self, organization: String, pipeline: String, run: String, node: String, context: &C) -> Box<Future<Item=GetPipelineRunNodeStepsResponse, Error=ApiError>>;


    fn get_pipeline_run_nodes(&self, organization: String, pipeline: String, run: String, context: &C) -> Box<Future<Item=GetPipelineRunNodesResponse, Error=ApiError>>;


    fn get_pipeline_runs(&self, organization: String, pipeline: String, context: &C) -> Box<Future<Item=GetPipelineRunsResponse, Error=ApiError>>;


    fn get_pipelines(&self, organization: String, context: &C) -> Box<Future<Item=GetPipelinesResponse, Error=ApiError>>;


    fn get_scm(&self, organization: String, scm: String, context: &C) -> Box<Future<Item=GetSCMResponse, Error=ApiError>>;


    fn get_scm_organisation_repositories(&self, organization: String, scm: String, scm_organisation: String, credential_id: Option<String>, page_size: Option<i32>, page_number: Option<i32>, context: &C) -> Box<Future<Item=GetSCMOrganisationRepositoriesResponse, Error=ApiError>>;


    fn get_scm_organisation_repository(&self, organization: String, scm: String, scm_organisation: String, repository: String, credential_id: Option<String>, context: &C) -> Box<Future<Item=GetSCMOrganisationRepositoryResponse, Error=ApiError>>;


    fn get_scm_organisations(&self, organization: String, scm: String, credential_id: Option<String>, context: &C) -> Box<Future<Item=GetSCMOrganisationsResponse, Error=ApiError>>;


    fn get_user(&self, organization: String, user: String, context: &C) -> Box<Future<Item=GetUserResponse, Error=ApiError>>;


    fn get_user_favorites(&self, user: String, context: &C) -> Box<Future<Item=GetUserFavoritesResponse, Error=ApiError>>;


    fn get_users(&self, organization: String, context: &C) -> Box<Future<Item=GetUsersResponse, Error=ApiError>>;


    fn post_pipeline_run(&self, organization: String, pipeline: String, run: String, context: &C) -> Box<Future<Item=PostPipelineRunResponse, Error=ApiError>>;


    fn post_pipeline_runs(&self, organization: String, pipeline: String, context: &C) -> Box<Future<Item=PostPipelineRunsResponse, Error=ApiError>>;


    fn put_pipeline_favorite(&self, organization: String, pipeline: String, body: models::Body, context: &C) -> Box<Future<Item=PutPipelineFavoriteResponse, Error=ApiError>>;


    fn put_pipeline_run(&self, organization: String, pipeline: String, run: String, blocking: Option<String>, time_out_in_secs: Option<i32>, context: &C) -> Box<Future<Item=PutPipelineRunResponse, Error=ApiError>>;


    fn search(&self, q: String, context: &C) -> Box<Future<Item=SearchResponse, Error=ApiError>>;


    fn search_classes(&self, q: String, context: &C) -> Box<Future<Item=SearchClassesResponse, Error=ApiError>>;


    fn get_computer(&self, depth: i32, context: &C) -> Box<Future<Item=GetComputerResponse, Error=ApiError>>;


    fn get_jenkins(&self, context: &C) -> Box<Future<Item=GetJenkinsResponse, Error=ApiError>>;


    fn get_job(&self, name: String, context: &C) -> Box<Future<Item=GetJobResponse, Error=ApiError>>;


    fn get_job_config(&self, name: String, context: &C) -> Box<Future<Item=GetJobConfigResponse, Error=ApiError>>;


    fn get_job_last_build(&self, name: String, context: &C) -> Box<Future<Item=GetJobLastBuildResponse, Error=ApiError>>;


    fn get_job_progressive_text(&self, name: String, number: String, start: String, context: &C) -> Box<Future<Item=GetJobProgressiveTextResponse, Error=ApiError>>;


    fn get_queue(&self, context: &C) -> Box<Future<Item=GetQueueResponse, Error=ApiError>>;


    fn get_queue_item(&self, number: String, context: &C) -> Box<Future<Item=GetQueueItemResponse, Error=ApiError>>;


    fn get_view(&self, name: String, context: &C) -> Box<Future<Item=GetViewResponse, Error=ApiError>>;


    fn get_view_config(&self, name: String, context: &C) -> Box<Future<Item=GetViewConfigResponse, Error=ApiError>>;


    fn head_jenkins(&self, context: &C) -> Box<Future<Item=HeadJenkinsResponse, Error=ApiError>>;


    fn post_create_item(&self, name: String, from: Option<String>, mode: Option<String>, jenkins_crumb: Option<String>, content_type: Option<String>, body: Option<String>, context: &C) -> Box<Future<Item=PostCreateItemResponse, Error=ApiError>>;


    fn post_create_view(&self, name: String, jenkins_crumb: Option<String>, content_type: Option<String>, body: Option<String>, context: &C) -> Box<Future<Item=PostCreateViewResponse, Error=ApiError>>;


    fn post_job_build(&self, name: String, json: String, token: Option<String>, jenkins_crumb: Option<String>, context: &C) -> Box<Future<Item=PostJobBuildResponse, Error=ApiError>>;


    fn post_job_config(&self, name: String, body: String, jenkins_crumb: Option<String>, context: &C) -> Box<Future<Item=PostJobConfigResponse, Error=ApiError>>;


    fn post_job_delete(&self, name: String, jenkins_crumb: Option<String>, context: &C) -> Box<Future<Item=PostJobDeleteResponse, Error=ApiError>>;


    fn post_job_disable(&self, name: String, jenkins_crumb: Option<String>, context: &C) -> Box<Future<Item=PostJobDisableResponse, Error=ApiError>>;


    fn post_job_enable(&self, name: String, jenkins_crumb: Option<String>, context: &C) -> Box<Future<Item=PostJobEnableResponse, Error=ApiError>>;


    fn post_job_last_build_stop(&self, name: String, jenkins_crumb: Option<String>, context: &C) -> Box<Future<Item=PostJobLastBuildStopResponse, Error=ApiError>>;


    fn post_view_config(&self, name: String, body: String, jenkins_crumb: Option<String>, context: &C) -> Box<Future<Item=PostViewConfigResponse, Error=ApiError>>;

}

/// API without a `Context`
pub trait ApiNoContext {


    fn get_crumb(&self) -> Box<Future<Item=GetCrumbResponse, Error=ApiError>>;


    fn delete_pipeline_queue_item(&self, organization: String, pipeline: String, queue: String) -> Box<Future<Item=DeletePipelineQueueItemResponse, Error=ApiError>>;


    fn get_authenticated_user(&self, organization: String) -> Box<Future<Item=GetAuthenticatedUserResponse, Error=ApiError>>;


    fn get_classes(&self, class: String) -> Box<Future<Item=GetClassesResponse, Error=ApiError>>;


    fn get_json_web_key(&self, key: i32) -> Box<Future<Item=GetJsonWebKeyResponse, Error=ApiError>>;


    fn get_json_web_token(&self, expiry_time_in_mins: Option<i32>, max_expiry_time_in_mins: Option<i32>) -> Box<Future<Item=GetJsonWebTokenResponse, Error=ApiError>>;


    fn get_organisation(&self, organization: String) -> Box<Future<Item=GetOrganisationResponse, Error=ApiError>>;


    fn get_organisations(&self) -> Box<Future<Item=GetOrganisationsResponse, Error=ApiError>>;


    fn get_pipeline(&self, organization: String, pipeline: String) -> Box<Future<Item=GetPipelineResponse, Error=ApiError>>;


    fn get_pipeline_activities(&self, organization: String, pipeline: String) -> Box<Future<Item=GetPipelineActivitiesResponse, Error=ApiError>>;


    fn get_pipeline_branch(&self, organization: String, pipeline: String, branch: String) -> Box<Future<Item=GetPipelineBranchResponse, Error=ApiError>>;


    fn get_pipeline_branch_run(&self, organization: String, pipeline: String, branch: String, run: String) -> Box<Future<Item=GetPipelineBranchRunResponse, Error=ApiError>>;


    fn get_pipeline_branches(&self, organization: String, pipeline: String) -> Box<Future<Item=GetPipelineBranchesResponse, Error=ApiError>>;


    fn get_pipeline_folder(&self, organization: String, folder: String) -> Box<Future<Item=GetPipelineFolderResponse, Error=ApiError>>;


    fn get_pipeline_folder_pipeline(&self, organization: String, pipeline: String, folder: String) -> Box<Future<Item=GetPipelineFolderPipelineResponse, Error=ApiError>>;


    fn get_pipeline_queue(&self, organization: String, pipeline: String) -> Box<Future<Item=GetPipelineQueueResponse, Error=ApiError>>;


    fn get_pipeline_run(&self, organization: String, pipeline: String, run: String) -> Box<Future<Item=GetPipelineRunResponse, Error=ApiError>>;


    fn get_pipeline_run_log(&self, organization: String, pipeline: String, run: String, start: Option<i32>, download: Option<bool>) -> Box<Future<Item=GetPipelineRunLogResponse, Error=ApiError>>;


    fn get_pipeline_run_node(&self, organization: String, pipeline: String, run: String, node: String) -> Box<Future<Item=GetPipelineRunNodeResponse, Error=ApiError>>;


    fn get_pipeline_run_node_step(&self, organization: String, pipeline: String, run: String, node: String, step: String) -> Box<Future<Item=GetPipelineRunNodeStepResponse, Error=ApiError>>;


    fn get_pipeline_run_node_step_log(&self, organization: String, pipeline: String, run: String, node: String, step: String) -> Box<Future<Item=GetPipelineRunNodeStepLogResponse, Error=ApiError>>;


    fn get_pipeline_run_node_steps(&self, organization: String, pipeline: String, run: String, node: String) -> Box<Future<Item=GetPipelineRunNodeStepsResponse, Error=ApiError>>;


    fn get_pipeline_run_nodes(&self, organization: String, pipeline: String, run: String) -> Box<Future<Item=GetPipelineRunNodesResponse, Error=ApiError>>;


    fn get_pipeline_runs(&self, organization: String, pipeline: String) -> Box<Future<Item=GetPipelineRunsResponse, Error=ApiError>>;


    fn get_pipelines(&self, organization: String) -> Box<Future<Item=GetPipelinesResponse, Error=ApiError>>;


    fn get_scm(&self, organization: String, scm: String) -> Box<Future<Item=GetSCMResponse, Error=ApiError>>;


    fn get_scm_organisation_repositories(&self, organization: String, scm: String, scm_organisation: String, credential_id: Option<String>, page_size: Option<i32>, page_number: Option<i32>) -> Box<Future<Item=GetSCMOrganisationRepositoriesResponse, Error=ApiError>>;


    fn get_scm_organisation_repository(&self, organization: String, scm: String, scm_organisation: String, repository: String, credential_id: Option<String>) -> Box<Future<Item=GetSCMOrganisationRepositoryResponse, Error=ApiError>>;


    fn get_scm_organisations(&self, organization: String, scm: String, credential_id: Option<String>) -> Box<Future<Item=GetSCMOrganisationsResponse, Error=ApiError>>;


    fn get_user(&self, organization: String, user: String) -> Box<Future<Item=GetUserResponse, Error=ApiError>>;


    fn get_user_favorites(&self, user: String) -> Box<Future<Item=GetUserFavoritesResponse, Error=ApiError>>;


    fn get_users(&self, organization: String) -> Box<Future<Item=GetUsersResponse, Error=ApiError>>;


    fn post_pipeline_run(&self, organization: String, pipeline: String, run: String) -> Box<Future<Item=PostPipelineRunResponse, Error=ApiError>>;


    fn post_pipeline_runs(&self, organization: String, pipeline: String) -> Box<Future<Item=PostPipelineRunsResponse, Error=ApiError>>;


    fn put_pipeline_favorite(&self, organization: String, pipeline: String, body: models::Body) -> Box<Future<Item=PutPipelineFavoriteResponse, Error=ApiError>>;


    fn put_pipeline_run(&self, organization: String, pipeline: String, run: String, blocking: Option<String>, time_out_in_secs: Option<i32>) -> Box<Future<Item=PutPipelineRunResponse, Error=ApiError>>;


    fn search(&self, q: String) -> Box<Future<Item=SearchResponse, Error=ApiError>>;


    fn search_classes(&self, q: String) -> Box<Future<Item=SearchClassesResponse, Error=ApiError>>;


    fn get_computer(&self, depth: i32) -> Box<Future<Item=GetComputerResponse, Error=ApiError>>;


    fn get_jenkins(&self) -> Box<Future<Item=GetJenkinsResponse, Error=ApiError>>;


    fn get_job(&self, name: String) -> Box<Future<Item=GetJobResponse, Error=ApiError>>;


    fn get_job_config(&self, name: String) -> Box<Future<Item=GetJobConfigResponse, Error=ApiError>>;


    fn get_job_last_build(&self, name: String) -> Box<Future<Item=GetJobLastBuildResponse, Error=ApiError>>;


    fn get_job_progressive_text(&self, name: String, number: String, start: String) -> Box<Future<Item=GetJobProgressiveTextResponse, Error=ApiError>>;


    fn get_queue(&self) -> Box<Future<Item=GetQueueResponse, Error=ApiError>>;


    fn get_queue_item(&self, number: String) -> Box<Future<Item=GetQueueItemResponse, Error=ApiError>>;


    fn get_view(&self, name: String) -> Box<Future<Item=GetViewResponse, Error=ApiError>>;


    fn get_view_config(&self, name: String) -> Box<Future<Item=GetViewConfigResponse, Error=ApiError>>;


    fn head_jenkins(&self) -> Box<Future<Item=HeadJenkinsResponse, Error=ApiError>>;


    fn post_create_item(&self, name: String, from: Option<String>, mode: Option<String>, jenkins_crumb: Option<String>, content_type: Option<String>, body: Option<String>) -> Box<Future<Item=PostCreateItemResponse, Error=ApiError>>;


    fn post_create_view(&self, name: String, jenkins_crumb: Option<String>, content_type: Option<String>, body: Option<String>) -> Box<Future<Item=PostCreateViewResponse, Error=ApiError>>;


    fn post_job_build(&self, name: String, json: String, token: Option<String>, jenkins_crumb: Option<String>) -> Box<Future<Item=PostJobBuildResponse, Error=ApiError>>;


    fn post_job_config(&self, name: String, body: String, jenkins_crumb: Option<String>) -> Box<Future<Item=PostJobConfigResponse, Error=ApiError>>;


    fn post_job_delete(&self, name: String, jenkins_crumb: Option<String>) -> Box<Future<Item=PostJobDeleteResponse, Error=ApiError>>;


    fn post_job_disable(&self, name: String, jenkins_crumb: Option<String>) -> Box<Future<Item=PostJobDisableResponse, Error=ApiError>>;


    fn post_job_enable(&self, name: String, jenkins_crumb: Option<String>) -> Box<Future<Item=PostJobEnableResponse, Error=ApiError>>;


    fn post_job_last_build_stop(&self, name: String, jenkins_crumb: Option<String>) -> Box<Future<Item=PostJobLastBuildStopResponse, Error=ApiError>>;


    fn post_view_config(&self, name: String, body: String, jenkins_crumb: Option<String>) -> Box<Future<Item=PostViewConfigResponse, Error=ApiError>>;

}

/// Trait to extend an API to make it easy to bind it to a context.
pub trait ContextWrapperExt<'a, C> where Self: Sized {
    /// Binds this API to a context.
    fn with_context(self: &'a Self, context: C) -> ContextWrapper<'a, Self, C>;
}

impl<'a, T: Api<C> + Sized, C> ContextWrapperExt<'a, C> for T {
    fn with_context(self: &'a T, context: C) -> ContextWrapper<'a, T, C> {
         ContextWrapper::<T, C>::new(self, context)
    }
}

impl<'a, T: Api<C>, C> ApiNoContext for ContextWrapper<'a, T, C> {


    fn get_crumb(&self) -> Box<Future<Item=GetCrumbResponse, Error=ApiError>> {
        self.api().get_crumb(&self.context())
    }


    fn delete_pipeline_queue_item(&self, organization: String, pipeline: String, queue: String) -> Box<Future<Item=DeletePipelineQueueItemResponse, Error=ApiError>> {
        self.api().delete_pipeline_queue_item(organization, pipeline, queue, &self.context())
    }


    fn get_authenticated_user(&self, organization: String) -> Box<Future<Item=GetAuthenticatedUserResponse, Error=ApiError>> {
        self.api().get_authenticated_user(organization, &self.context())
    }


    fn get_classes(&self, class: String) -> Box<Future<Item=GetClassesResponse, Error=ApiError>> {
        self.api().get_classes(class, &self.context())
    }


    fn get_json_web_key(&self, key: i32) -> Box<Future<Item=GetJsonWebKeyResponse, Error=ApiError>> {
        self.api().get_json_web_key(key, &self.context())
    }


    fn get_json_web_token(&self, expiry_time_in_mins: Option<i32>, max_expiry_time_in_mins: Option<i32>) -> Box<Future<Item=GetJsonWebTokenResponse, Error=ApiError>> {
        self.api().get_json_web_token(expiry_time_in_mins, max_expiry_time_in_mins, &self.context())
    }


    fn get_organisation(&self, organization: String) -> Box<Future<Item=GetOrganisationResponse, Error=ApiError>> {
        self.api().get_organisation(organization, &self.context())
    }


    fn get_organisations(&self) -> Box<Future<Item=GetOrganisationsResponse, Error=ApiError>> {
        self.api().get_organisations(&self.context())
    }


    fn get_pipeline(&self, organization: String, pipeline: String) -> Box<Future<Item=GetPipelineResponse, Error=ApiError>> {
        self.api().get_pipeline(organization, pipeline, &self.context())
    }


    fn get_pipeline_activities(&self, organization: String, pipeline: String) -> Box<Future<Item=GetPipelineActivitiesResponse, Error=ApiError>> {
        self.api().get_pipeline_activities(organization, pipeline, &self.context())
    }


    fn get_pipeline_branch(&self, organization: String, pipeline: String, branch: String) -> Box<Future<Item=GetPipelineBranchResponse, Error=ApiError>> {
        self.api().get_pipeline_branch(organization, pipeline, branch, &self.context())
    }


    fn get_pipeline_branch_run(&self, organization: String, pipeline: String, branch: String, run: String) -> Box<Future<Item=GetPipelineBranchRunResponse, Error=ApiError>> {
        self.api().get_pipeline_branch_run(organization, pipeline, branch, run, &self.context())
    }


    fn get_pipeline_branches(&self, organization: String, pipeline: String) -> Box<Future<Item=GetPipelineBranchesResponse, Error=ApiError>> {
        self.api().get_pipeline_branches(organization, pipeline, &self.context())
    }


    fn get_pipeline_folder(&self, organization: String, folder: String) -> Box<Future<Item=GetPipelineFolderResponse, Error=ApiError>> {
        self.api().get_pipeline_folder(organization, folder, &self.context())
    }


    fn get_pipeline_folder_pipeline(&self, organization: String, pipeline: String, folder: String) -> Box<Future<Item=GetPipelineFolderPipelineResponse, Error=ApiError>> {
        self.api().get_pipeline_folder_pipeline(organization, pipeline, folder, &self.context())
    }


    fn get_pipeline_queue(&self, organization: String, pipeline: String) -> Box<Future<Item=GetPipelineQueueResponse, Error=ApiError>> {
        self.api().get_pipeline_queue(organization, pipeline, &self.context())
    }


    fn get_pipeline_run(&self, organization: String, pipeline: String, run: String) -> Box<Future<Item=GetPipelineRunResponse, Error=ApiError>> {
        self.api().get_pipeline_run(organization, pipeline, run, &self.context())
    }


    fn get_pipeline_run_log(&self, organization: String, pipeline: String, run: String, start: Option<i32>, download: Option<bool>) -> Box<Future<Item=GetPipelineRunLogResponse, Error=ApiError>> {
        self.api().get_pipeline_run_log(organization, pipeline, run, start, download, &self.context())
    }


    fn get_pipeline_run_node(&self, organization: String, pipeline: String, run: String, node: String) -> Box<Future<Item=GetPipelineRunNodeResponse, Error=ApiError>> {
        self.api().get_pipeline_run_node(organization, pipeline, run, node, &self.context())
    }


    fn get_pipeline_run_node_step(&self, organization: String, pipeline: String, run: String, node: String, step: String) -> Box<Future<Item=GetPipelineRunNodeStepResponse, Error=ApiError>> {
        self.api().get_pipeline_run_node_step(organization, pipeline, run, node, step, &self.context())
    }


    fn get_pipeline_run_node_step_log(&self, organization: String, pipeline: String, run: String, node: String, step: String) -> Box<Future<Item=GetPipelineRunNodeStepLogResponse, Error=ApiError>> {
        self.api().get_pipeline_run_node_step_log(organization, pipeline, run, node, step, &self.context())
    }


    fn get_pipeline_run_node_steps(&self, organization: String, pipeline: String, run: String, node: String) -> Box<Future<Item=GetPipelineRunNodeStepsResponse, Error=ApiError>> {
        self.api().get_pipeline_run_node_steps(organization, pipeline, run, node, &self.context())
    }


    fn get_pipeline_run_nodes(&self, organization: String, pipeline: String, run: String) -> Box<Future<Item=GetPipelineRunNodesResponse, Error=ApiError>> {
        self.api().get_pipeline_run_nodes(organization, pipeline, run, &self.context())
    }


    fn get_pipeline_runs(&self, organization: String, pipeline: String) -> Box<Future<Item=GetPipelineRunsResponse, Error=ApiError>> {
        self.api().get_pipeline_runs(organization, pipeline, &self.context())
    }


    fn get_pipelines(&self, organization: String) -> Box<Future<Item=GetPipelinesResponse, Error=ApiError>> {
        self.api().get_pipelines(organization, &self.context())
    }


    fn get_scm(&self, organization: String, scm: String) -> Box<Future<Item=GetSCMResponse, Error=ApiError>> {
        self.api().get_scm(organization, scm, &self.context())
    }


    fn get_scm_organisation_repositories(&self, organization: String, scm: String, scm_organisation: String, credential_id: Option<String>, page_size: Option<i32>, page_number: Option<i32>) -> Box<Future<Item=GetSCMOrganisationRepositoriesResponse, Error=ApiError>> {
        self.api().get_scm_organisation_repositories(organization, scm, scm_organisation, credential_id, page_size, page_number, &self.context())
    }


    fn get_scm_organisation_repository(&self, organization: String, scm: String, scm_organisation: String, repository: String, credential_id: Option<String>) -> Box<Future<Item=GetSCMOrganisationRepositoryResponse, Error=ApiError>> {
        self.api().get_scm_organisation_repository(organization, scm, scm_organisation, repository, credential_id, &self.context())
    }


    fn get_scm_organisations(&self, organization: String, scm: String, credential_id: Option<String>) -> Box<Future<Item=GetSCMOrganisationsResponse, Error=ApiError>> {
        self.api().get_scm_organisations(organization, scm, credential_id, &self.context())
    }


    fn get_user(&self, organization: String, user: String) -> Box<Future<Item=GetUserResponse, Error=ApiError>> {
        self.api().get_user(organization, user, &self.context())
    }


    fn get_user_favorites(&self, user: String) -> Box<Future<Item=GetUserFavoritesResponse, Error=ApiError>> {
        self.api().get_user_favorites(user, &self.context())
    }


    fn get_users(&self, organization: String) -> Box<Future<Item=GetUsersResponse, Error=ApiError>> {
        self.api().get_users(organization, &self.context())
    }


    fn post_pipeline_run(&self, organization: String, pipeline: String, run: String) -> Box<Future<Item=PostPipelineRunResponse, Error=ApiError>> {
        self.api().post_pipeline_run(organization, pipeline, run, &self.context())
    }


    fn post_pipeline_runs(&self, organization: String, pipeline: String) -> Box<Future<Item=PostPipelineRunsResponse, Error=ApiError>> {
        self.api().post_pipeline_runs(organization, pipeline, &self.context())
    }


    fn put_pipeline_favorite(&self, organization: String, pipeline: String, body: models::Body) -> Box<Future<Item=PutPipelineFavoriteResponse, Error=ApiError>> {
        self.api().put_pipeline_favorite(organization, pipeline, body, &self.context())
    }


    fn put_pipeline_run(&self, organization: String, pipeline: String, run: String, blocking: Option<String>, time_out_in_secs: Option<i32>) -> Box<Future<Item=PutPipelineRunResponse, Error=ApiError>> {
        self.api().put_pipeline_run(organization, pipeline, run, blocking, time_out_in_secs, &self.context())
    }


    fn search(&self, q: String) -> Box<Future<Item=SearchResponse, Error=ApiError>> {
        self.api().search(q, &self.context())
    }


    fn search_classes(&self, q: String) -> Box<Future<Item=SearchClassesResponse, Error=ApiError>> {
        self.api().search_classes(q, &self.context())
    }


    fn get_computer(&self, depth: i32) -> Box<Future<Item=GetComputerResponse, Error=ApiError>> {
        self.api().get_computer(depth, &self.context())
    }


    fn get_jenkins(&self) -> Box<Future<Item=GetJenkinsResponse, Error=ApiError>> {
        self.api().get_jenkins(&self.context())
    }


    fn get_job(&self, name: String) -> Box<Future<Item=GetJobResponse, Error=ApiError>> {
        self.api().get_job(name, &self.context())
    }


    fn get_job_config(&self, name: String) -> Box<Future<Item=GetJobConfigResponse, Error=ApiError>> {
        self.api().get_job_config(name, &self.context())
    }


    fn get_job_last_build(&self, name: String) -> Box<Future<Item=GetJobLastBuildResponse, Error=ApiError>> {
        self.api().get_job_last_build(name, &self.context())
    }


    fn get_job_progressive_text(&self, name: String, number: String, start: String) -> Box<Future<Item=GetJobProgressiveTextResponse, Error=ApiError>> {
        self.api().get_job_progressive_text(name, number, start, &self.context())
    }


    fn get_queue(&self) -> Box<Future<Item=GetQueueResponse, Error=ApiError>> {
        self.api().get_queue(&self.context())
    }


    fn get_queue_item(&self, number: String) -> Box<Future<Item=GetQueueItemResponse, Error=ApiError>> {
        self.api().get_queue_item(number, &self.context())
    }


    fn get_view(&self, name: String) -> Box<Future<Item=GetViewResponse, Error=ApiError>> {
        self.api().get_view(name, &self.context())
    }


    fn get_view_config(&self, name: String) -> Box<Future<Item=GetViewConfigResponse, Error=ApiError>> {
        self.api().get_view_config(name, &self.context())
    }


    fn head_jenkins(&self) -> Box<Future<Item=HeadJenkinsResponse, Error=ApiError>> {
        self.api().head_jenkins(&self.context())
    }


    fn post_create_item(&self, name: String, from: Option<String>, mode: Option<String>, jenkins_crumb: Option<String>, content_type: Option<String>, body: Option<String>) -> Box<Future<Item=PostCreateItemResponse, Error=ApiError>> {
        self.api().post_create_item(name, from, mode, jenkins_crumb, content_type, body, &self.context())
    }


    fn post_create_view(&self, name: String, jenkins_crumb: Option<String>, content_type: Option<String>, body: Option<String>) -> Box<Future<Item=PostCreateViewResponse, Error=ApiError>> {
        self.api().post_create_view(name, jenkins_crumb, content_type, body, &self.context())
    }


    fn post_job_build(&self, name: String, json: String, token: Option<String>, jenkins_crumb: Option<String>) -> Box<Future<Item=PostJobBuildResponse, Error=ApiError>> {
        self.api().post_job_build(name, json, token, jenkins_crumb, &self.context())
    }


    fn post_job_config(&self, name: String, body: String, jenkins_crumb: Option<String>) -> Box<Future<Item=PostJobConfigResponse, Error=ApiError>> {
        self.api().post_job_config(name, body, jenkins_crumb, &self.context())
    }


    fn post_job_delete(&self, name: String, jenkins_crumb: Option<String>) -> Box<Future<Item=PostJobDeleteResponse, Error=ApiError>> {
        self.api().post_job_delete(name, jenkins_crumb, &self.context())
    }


    fn post_job_disable(&self, name: String, jenkins_crumb: Option<String>) -> Box<Future<Item=PostJobDisableResponse, Error=ApiError>> {
        self.api().post_job_disable(name, jenkins_crumb, &self.context())
    }


    fn post_job_enable(&self, name: String, jenkins_crumb: Option<String>) -> Box<Future<Item=PostJobEnableResponse, Error=ApiError>> {
        self.api().post_job_enable(name, jenkins_crumb, &self.context())
    }


    fn post_job_last_build_stop(&self, name: String, jenkins_crumb: Option<String>) -> Box<Future<Item=PostJobLastBuildStopResponse, Error=ApiError>> {
        self.api().post_job_last_build_stop(name, jenkins_crumb, &self.context())
    }


    fn post_view_config(&self, name: String, body: String, jenkins_crumb: Option<String>) -> Box<Future<Item=PostViewConfigResponse, Error=ApiError>> {
        self.api().post_view_config(name, body, jenkins_crumb, &self.context())
    }

}

#[cfg(feature = "client")]
pub mod client;

// Re-export Client as a top-level name
#[cfg(feature = "client")]
pub use self::client::Client;

#[cfg(feature = "server")]
pub mod server;

// Re-export router() as a top-level name
#[cfg(feature = "server")]
pub use self::server::Service;

pub mod models;
