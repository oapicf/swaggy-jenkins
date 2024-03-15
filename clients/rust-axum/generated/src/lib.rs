#![allow(missing_docs, trivial_casts, unused_variables, unused_mut, unused_imports, unused_extern_crates, non_camel_case_types)]
#![allow(unused_imports, unused_attributes)]
#![allow(clippy::derive_partial_eq_without_eq, clippy::disallowed_names)]

use async_trait::async_trait;
use axum::extract::*;
use axum_extra::extract::{CookieJar, Multipart};
use bytes::Bytes;
use http::Method;
use serde::{Deserialize, Serialize};

use types::*;

pub const BASE_PATH: &str = "";
pub const API_VERSION: &str = "2.0.1-pre.0";

        #[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetCrumbResponse {
    /// Successfully retrieved CSRF protection token
    Status200_SuccessfullyRetrievedCSRFProtectionToken
    (models::DefaultCrumbIssuer)
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

        #[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetComputerResponse {
    /// Successfully retrieved computer details
    Status200_SuccessfullyRetrievedComputerDetails
    (models::ComputerSet)
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
pub enum GetJenkinsResponse {
    /// Successfully retrieved Jenkins details
    Status200_SuccessfullyRetrievedJenkinsDetails
    (models::Hudson)
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
pub enum GetJobResponse {
    /// Successfully retrieved job details
    Status200_SuccessfullyRetrievedJobDetails
    (models::FreeStyleProject)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
    ,
    /// Job cannot be found on Jenkins instance
    Status404_JobCannotBeFoundOnJenkinsInstance
}

        #[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetJobConfigResponse {
    /// Successfully retrieved job configuration in config.xml format
    Status200_SuccessfullyRetrievedJobConfigurationInConfig
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
    ,
    /// Job cannot be found on Jenkins instance
    Status404_JobCannotBeFoundOnJenkinsInstance
}

        #[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetJobLastBuildResponse {
    /// Successfully retrieved job's last build details
    Status200_SuccessfullyRetrievedJob
    (models::FreeStyleBuild)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
    ,
    /// Job cannot be found on Jenkins instance
    Status404_JobCannotBeFoundOnJenkinsInstance
}

        #[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetJobProgressiveTextResponse {
    /// Successfully retrieved job's build progressive text output
    Status200_SuccessfullyRetrievedJob
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
    ,
    /// Job cannot be found on Jenkins instance
    Status404_JobCannotBeFoundOnJenkinsInstance
}

        #[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetQueueResponse {
    /// Successfully retrieved queue details
    Status200_SuccessfullyRetrievedQueueDetails
    (models::Queue)
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
pub enum GetQueueItemResponse {
    /// Successfully retrieved queued item details
    Status200_SuccessfullyRetrievedQueuedItemDetails
    (models::Queue)
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
pub enum GetViewResponse {
    /// Successfully retrieved view details
    Status200_SuccessfullyRetrievedViewDetails
    (models::ListView)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
    ,
    /// View cannot be found on Jenkins instance
    Status404_ViewCannotBeFoundOnJenkinsInstance
}

        #[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum GetViewConfigResponse {
    /// Successfully retrieved view configuration in config.xml format
    Status200_SuccessfullyRetrievedViewConfigurationInConfig
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
    ,
    /// View cannot be found on Jenkins instance
    Status404_ViewCannotBeFoundOnJenkinsInstance
}

        #[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum HeadJenkinsResponse {
    /// Successfully retrieved Jenkins headers
    Status200_SuccessfullyRetrievedJenkinsHeaders
    {
        x_jenkins:
        Option<
        String
        >
    }
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
pub enum PostCreateItemResponse {
    /// Successfully created a new job
    Status200_SuccessfullyCreatedANewJob
    ,
    /// An error has occurred - error message is embedded inside the HTML response
    Status400_AnErrorHasOccurred
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
pub enum PostCreateViewResponse {
    /// Successfully created the view
    Status200_SuccessfullyCreatedTheView
    ,
    /// An error has occurred - error message is embedded inside the HTML response
    Status400_AnErrorHasOccurred
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
pub enum PostJobBuildResponse {
    /// Successfully built the job (backward compatibility for older versions of Jenkins)
    Status200_SuccessfullyBuiltTheJob
    ,
    /// Successfully built the job
    Status201_SuccessfullyBuiltTheJob
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
    ,
    /// Job cannot be found on Jenkins instance
    Status404_JobCannotBeFoundOnJenkinsInstance
}

        #[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum PostJobConfigResponse {
    /// Successfully retrieved job configuration in config.xml format
    Status200_SuccessfullyRetrievedJobConfigurationInConfig
    ,
    /// An error has occurred - error message is embedded inside the HTML response
    Status400_AnErrorHasOccurred
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
    ,
    /// Job cannot be found on Jenkins instance
    Status404_JobCannotBeFoundOnJenkinsInstance
}

        #[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum PostJobDeleteResponse {
    /// Successfully deleted the job
    Status200_SuccessfullyDeletedTheJob
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
    ,
    /// Job cannot be found on Jenkins instance
    Status404_JobCannotBeFoundOnJenkinsInstance
}

        #[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum PostJobDisableResponse {
    /// Successfully disabled the job
    Status200_SuccessfullyDisabledTheJob
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
    ,
    /// Job cannot be found on Jenkins instance
    Status404_JobCannotBeFoundOnJenkinsInstance
}

        #[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum PostJobEnableResponse {
    /// Successfully enabled the job
    Status200_SuccessfullyEnabledTheJob
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
    ,
    /// Job cannot be found on Jenkins instance
    Status404_JobCannotBeFoundOnJenkinsInstance
}

        #[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum PostJobLastBuildStopResponse {
    /// Successfully stopped the job
    Status200_SuccessfullyStoppedTheJob
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
    ,
    /// Job cannot be found on Jenkins instance
    Status404_JobCannotBeFoundOnJenkinsInstance
}

        #[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
#[allow(clippy::large_enum_variant)]
pub enum PostViewConfigResponse {
    /// Successfully updated view configuration
    Status200_SuccessfullyUpdatedViewConfiguration
    ,
    /// An error has occurred - error message is embedded inside the HTML response
    Status400_AnErrorHasOccurred
    (String)
    ,
    /// Authentication failed - incorrect username and/or password
    Status401_AuthenticationFailed
    ,
    /// Jenkins requires authentication - please set username and password
    Status403_JenkinsRequiresAuthentication
    ,
    /// View cannot be found on Jenkins instance
    Status404_ViewCannotBeFoundOnJenkinsInstance
}


/// API
#[async_trait]
#[allow(clippy::ptr_arg)]
pub trait Api {

                /// GetCrumb - GET /crumbIssuer/api/json
                async fn get_crumb(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                ) -> Result<GetCrumbResponse, String>;


                /// DeletePipelineQueueItem - DELETE /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}
                async fn delete_pipeline_queue_item(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::DeletePipelineQueueItemPathParams,
                ) -> Result<DeletePipelineQueueItemResponse, String>;


                /// GetAuthenticatedUser - GET /blue/rest/organizations/{organization}/user/
                async fn get_authenticated_user(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetAuthenticatedUserPathParams,
                ) -> Result<GetAuthenticatedUserResponse, String>;


                /// GetClasses - GET /blue/rest/classes/{class}
                async fn get_classes(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetClassesPathParams,
                ) -> Result<GetClassesResponse, String>;


                /// GetJsonWebKey - GET /jwt-auth/jwks/{key}
                async fn get_json_web_key(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetJsonWebKeyPathParams,
                ) -> Result<GetJsonWebKeyResponse, String>;


                /// GetJsonWebToken - GET /jwt-auth/token
                async fn get_json_web_token(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  query_params: models::GetJsonWebTokenQueryParams,
                ) -> Result<GetJsonWebTokenResponse, String>;


                /// GetOrganisation - GET /blue/rest/organizations/{organization}
                async fn get_organisation(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetOrganisationPathParams,
                ) -> Result<GetOrganisationResponse, String>;


                /// GetOrganisations - GET /blue/rest/organizations/
                async fn get_organisations(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                ) -> Result<GetOrganisationsResponse, String>;


                /// GetPipeline - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}
                async fn get_pipeline(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetPipelinePathParams,
                ) -> Result<GetPipelineResponse, String>;


                /// GetPipelineActivities - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities
                async fn get_pipeline_activities(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetPipelineActivitiesPathParams,
                ) -> Result<GetPipelineActivitiesResponse, String>;


                /// GetPipelineBranch - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/
                async fn get_pipeline_branch(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetPipelineBranchPathParams,
                ) -> Result<GetPipelineBranchResponse, String>;


                /// GetPipelineBranchRun - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}
                async fn get_pipeline_branch_run(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetPipelineBranchRunPathParams,
                ) -> Result<GetPipelineBranchRunResponse, String>;


                /// GetPipelineBranches - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches
                async fn get_pipeline_branches(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetPipelineBranchesPathParams,
                ) -> Result<GetPipelineBranchesResponse, String>;


                /// GetPipelineFolder - GET /blue/rest/organizations/{organization}/pipelines/{folder}/
                async fn get_pipeline_folder(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetPipelineFolderPathParams,
                ) -> Result<GetPipelineFolderResponse, String>;


                /// GetPipelineFolderPipeline - GET /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}
                async fn get_pipeline_folder_pipeline(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetPipelineFolderPipelinePathParams,
                ) -> Result<GetPipelineFolderPipelineResponse, String>;


                /// GetPipelineQueue - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue
                async fn get_pipeline_queue(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetPipelineQueuePathParams,
                ) -> Result<GetPipelineQueueResponse, String>;


                /// GetPipelineRun - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}
                async fn get_pipeline_run(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetPipelineRunPathParams,
                ) -> Result<GetPipelineRunResponse, String>;


                /// GetPipelineRunLog - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log
                async fn get_pipeline_run_log(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetPipelineRunLogPathParams,
                  query_params: models::GetPipelineRunLogQueryParams,
                ) -> Result<GetPipelineRunLogResponse, String>;


                /// GetPipelineRunNode - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}
                async fn get_pipeline_run_node(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetPipelineRunNodePathParams,
                ) -> Result<GetPipelineRunNodeResponse, String>;


                /// GetPipelineRunNodeStep - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}
                async fn get_pipeline_run_node_step(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetPipelineRunNodeStepPathParams,
                ) -> Result<GetPipelineRunNodeStepResponse, String>;


                /// GetPipelineRunNodeStepLog - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log
                async fn get_pipeline_run_node_step_log(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetPipelineRunNodeStepLogPathParams,
                ) -> Result<GetPipelineRunNodeStepLogResponse, String>;


                /// GetPipelineRunNodeSteps - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps
                async fn get_pipeline_run_node_steps(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetPipelineRunNodeStepsPathParams,
                ) -> Result<GetPipelineRunNodeStepsResponse, String>;


                /// GetPipelineRunNodes - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes
                async fn get_pipeline_run_nodes(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetPipelineRunNodesPathParams,
                ) -> Result<GetPipelineRunNodesResponse, String>;


                /// GetPipelineRuns - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs
                async fn get_pipeline_runs(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetPipelineRunsPathParams,
                ) -> Result<GetPipelineRunsResponse, String>;


                /// GetPipelines - GET /blue/rest/organizations/{organization}/pipelines/
                async fn get_pipelines(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetPipelinesPathParams,
                ) -> Result<GetPipelinesResponse, String>;


                /// GetScm - GET /blue/rest/organizations/{organization}/scm/{scm}
                async fn get_scm(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetScmPathParams,
                ) -> Result<GetScmResponse, String>;


                /// GetScmOrganisationRepositories - GET /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories
                async fn get_scm_organisation_repositories(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetScmOrganisationRepositoriesPathParams,
                  query_params: models::GetScmOrganisationRepositoriesQueryParams,
                ) -> Result<GetScmOrganisationRepositoriesResponse, String>;


                /// GetScmOrganisationRepository - GET /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}
                async fn get_scm_organisation_repository(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetScmOrganisationRepositoryPathParams,
                  query_params: models::GetScmOrganisationRepositoryQueryParams,
                ) -> Result<GetScmOrganisationRepositoryResponse, String>;


                /// GetScmOrganisations - GET /blue/rest/organizations/{organization}/scm/{scm}/organizations
                async fn get_scm_organisations(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetScmOrganisationsPathParams,
                  query_params: models::GetScmOrganisationsQueryParams,
                ) -> Result<GetScmOrganisationsResponse, String>;


                /// GetUser - GET /blue/rest/organizations/{organization}/users/{user}
                async fn get_user(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetUserPathParams,
                ) -> Result<GetUserResponse, String>;


                /// GetUserFavorites - GET /blue/rest/users/{user}/favorites
                async fn get_user_favorites(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetUserFavoritesPathParams,
                ) -> Result<GetUserFavoritesResponse, String>;


                /// GetUsers - GET /blue/rest/organizations/{organization}/users/
                async fn get_users(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetUsersPathParams,
                ) -> Result<GetUsersResponse, String>;


                /// PostPipelineRun - POST /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay
                async fn post_pipeline_run(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::PostPipelineRunPathParams,
                ) -> Result<PostPipelineRunResponse, String>;


                /// PostPipelineRuns - POST /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs
                async fn post_pipeline_runs(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::PostPipelineRunsPathParams,
                ) -> Result<PostPipelineRunsResponse, String>;


                /// PutPipelineFavorite - PUT /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite
                async fn put_pipeline_favorite(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::PutPipelineFavoritePathParams,
                        body: bool,
                ) -> Result<PutPipelineFavoriteResponse, String>;


                /// PutPipelineRun - PUT /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop
                async fn put_pipeline_run(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::PutPipelineRunPathParams,
                  query_params: models::PutPipelineRunQueryParams,
                ) -> Result<PutPipelineRunResponse, String>;


                /// Search - GET /blue/rest/search/
                async fn search(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  query_params: models::SearchQueryParams,
                ) -> Result<SearchResponse, String>;


                /// SearchClasses - GET /blue/rest/classes/
                async fn search_classes(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  query_params: models::SearchClassesQueryParams,
                ) -> Result<SearchClassesResponse, String>;


                /// GetComputer - GET /computer/api/json
                async fn get_computer(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  query_params: models::GetComputerQueryParams,
                ) -> Result<GetComputerResponse, String>;


                /// GetJenkins - GET /api/json
                async fn get_jenkins(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                ) -> Result<GetJenkinsResponse, String>;


                /// GetJob - GET /job/{name}/api/json
                async fn get_job(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetJobPathParams,
                ) -> Result<GetJobResponse, String>;


                /// GetJobConfig - GET /job/{name}/config.xml
                async fn get_job_config(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetJobConfigPathParams,
                ) -> Result<GetJobConfigResponse, String>;


                /// GetJobLastBuild - GET /job/{name}/lastBuild/api/json
                async fn get_job_last_build(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetJobLastBuildPathParams,
                ) -> Result<GetJobLastBuildResponse, String>;


                /// GetJobProgressiveText - GET /job/{name}/{number}/logText/progressiveText
                async fn get_job_progressive_text(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetJobProgressiveTextPathParams,
                  query_params: models::GetJobProgressiveTextQueryParams,
                ) -> Result<GetJobProgressiveTextResponse, String>;


                /// GetQueue - GET /queue/api/json
                async fn get_queue(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                ) -> Result<GetQueueResponse, String>;


                /// GetQueueItem - GET /queue/item/{number}/api/json
                async fn get_queue_item(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetQueueItemPathParams,
                ) -> Result<GetQueueItemResponse, String>;


                /// GetView - GET /view/{name}/api/json
                async fn get_view(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetViewPathParams,
                ) -> Result<GetViewResponse, String>;


                /// GetViewConfig - GET /view/{name}/config.xml
                async fn get_view_config(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  path_params: models::GetViewConfigPathParams,
                ) -> Result<GetViewConfigResponse, String>;


                /// HeadJenkins - HEAD /api/json
                async fn head_jenkins(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                ) -> Result<HeadJenkinsResponse, String>;


                /// PostCreateItem - POST /createItem
                async fn post_create_item(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  header_params: models::PostCreateItemHeaderParams,
                  query_params: models::PostCreateItemQueryParams,
                        body: Option<String>,
                ) -> Result<PostCreateItemResponse, String>;


                /// PostCreateView - POST /createView
                async fn post_create_view(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  header_params: models::PostCreateViewHeaderParams,
                  query_params: models::PostCreateViewQueryParams,
                        body: Option<String>,
                ) -> Result<PostCreateViewResponse, String>;


                /// PostJobBuild - POST /job/{name}/build
                async fn post_job_build(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  header_params: models::PostJobBuildHeaderParams,
                  path_params: models::PostJobBuildPathParams,
                  query_params: models::PostJobBuildQueryParams,
                ) -> Result<PostJobBuildResponse, String>;


                /// PostJobConfig - POST /job/{name}/config.xml
                async fn post_job_config(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  header_params: models::PostJobConfigHeaderParams,
                  path_params: models::PostJobConfigPathParams,
                        body: String,
                ) -> Result<PostJobConfigResponse, String>;


                /// PostJobDelete - POST /job/{name}/doDelete
                async fn post_job_delete(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  header_params: models::PostJobDeleteHeaderParams,
                  path_params: models::PostJobDeletePathParams,
                ) -> Result<PostJobDeleteResponse, String>;


                /// PostJobDisable - POST /job/{name}/disable
                async fn post_job_disable(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  header_params: models::PostJobDisableHeaderParams,
                  path_params: models::PostJobDisablePathParams,
                ) -> Result<PostJobDisableResponse, String>;


                /// PostJobEnable - POST /job/{name}/enable
                async fn post_job_enable(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  header_params: models::PostJobEnableHeaderParams,
                  path_params: models::PostJobEnablePathParams,
                ) -> Result<PostJobEnableResponse, String>;


                /// PostJobLastBuildStop - POST /job/{name}/lastBuild/stop
                async fn post_job_last_build_stop(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  header_params: models::PostJobLastBuildStopHeaderParams,
                  path_params: models::PostJobLastBuildStopPathParams,
                ) -> Result<PostJobLastBuildStopResponse, String>;


                /// PostViewConfig - POST /view/{name}/config.xml
                async fn post_view_config(
                &self,
                method: Method,
                host: Host,
                cookies: CookieJar,
                  header_params: models::PostViewConfigHeaderParams,
                  path_params: models::PostViewConfigPathParams,
                        body: String,
                ) -> Result<PostViewConfigResponse, String>;

}

#[cfg(feature = "server")]
pub mod server;

pub mod models;
pub mod types;

#[cfg(feature = "server")]
pub(crate) mod header;
