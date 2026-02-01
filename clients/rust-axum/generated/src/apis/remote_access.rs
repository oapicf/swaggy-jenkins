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




/// RemoteAccess
#[async_trait]
#[allow(clippy::ptr_arg)]
pub trait RemoteAccess<E: std::fmt::Debug + Send + Sync + 'static = ()>: super::ErrorHandler<E> {
    type Claims;

    /// GetComputer - GET /computer/api/json
    async fn get_computer(
    &self,
    
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      query_params: &models::GetComputerQueryParams,
    ) -> Result<GetComputerResponse, E>;

    /// GetJenkins - GET /api/json
    async fn get_jenkins(
    &self,
    
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
    ) -> Result<GetJenkinsResponse, E>;

    /// GetJob - GET /job/{name}/api/json
    async fn get_job(
    &self,
    
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetJobPathParams,
    ) -> Result<GetJobResponse, E>;

    /// GetJobConfig - GET /job/{name}/config.xml
    async fn get_job_config(
    &self,
    
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetJobConfigPathParams,
    ) -> Result<GetJobConfigResponse, E>;

    /// GetJobLastBuild - GET /job/{name}/lastBuild/api/json
    async fn get_job_last_build(
    &self,
    
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetJobLastBuildPathParams,
    ) -> Result<GetJobLastBuildResponse, E>;

    /// GetJobProgressiveText - GET /job/{name}/{number}/logText/progressiveText
    async fn get_job_progressive_text(
    &self,
    
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetJobProgressiveTextPathParams,
      query_params: &models::GetJobProgressiveTextQueryParams,
    ) -> Result<GetJobProgressiveTextResponse, E>;

    /// GetQueue - GET /queue/api/json
    async fn get_queue(
    &self,
    
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
    ) -> Result<GetQueueResponse, E>;

    /// GetQueueItem - GET /queue/item/{number}/api/json
    async fn get_queue_item(
    &self,
    
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetQueueItemPathParams,
    ) -> Result<GetQueueItemResponse, E>;

    /// GetView - GET /view/{name}/api/json
    async fn get_view(
    &self,
    
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetViewPathParams,
    ) -> Result<GetViewResponse, E>;

    /// GetViewConfig - GET /view/{name}/config.xml
    async fn get_view_config(
    &self,
    
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      path_params: &models::GetViewConfigPathParams,
    ) -> Result<GetViewConfigResponse, E>;

    /// HeadJenkins - HEAD /api/json
    async fn head_jenkins(
    &self,
    
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
    ) -> Result<HeadJenkinsResponse, E>;

    /// PostCreateItem - POST /createItem
    async fn post_create_item(
    &self,
    
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      header_params: &models::PostCreateItemHeaderParams,
      query_params: &models::PostCreateItemQueryParams,
            body: &Option<String>,
    ) -> Result<PostCreateItemResponse, E>;

    /// PostCreateView - POST /createView
    async fn post_create_view(
    &self,
    
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      header_params: &models::PostCreateViewHeaderParams,
      query_params: &models::PostCreateViewQueryParams,
            body: &Option<String>,
    ) -> Result<PostCreateViewResponse, E>;

    /// PostJobBuild - POST /job/{name}/build
    async fn post_job_build(
    &self,
    
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      header_params: &models::PostJobBuildHeaderParams,
      path_params: &models::PostJobBuildPathParams,
      query_params: &models::PostJobBuildQueryParams,
    ) -> Result<PostJobBuildResponse, E>;

    /// PostJobConfig - POST /job/{name}/config.xml
    async fn post_job_config(
    &self,
    
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      header_params: &models::PostJobConfigHeaderParams,
      path_params: &models::PostJobConfigPathParams,
            body: &String,
    ) -> Result<PostJobConfigResponse, E>;

    /// PostJobDelete - POST /job/{name}/doDelete
    async fn post_job_delete(
    &self,
    
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      header_params: &models::PostJobDeleteHeaderParams,
      path_params: &models::PostJobDeletePathParams,
    ) -> Result<PostJobDeleteResponse, E>;

    /// PostJobDisable - POST /job/{name}/disable
    async fn post_job_disable(
    &self,
    
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      header_params: &models::PostJobDisableHeaderParams,
      path_params: &models::PostJobDisablePathParams,
    ) -> Result<PostJobDisableResponse, E>;

    /// PostJobEnable - POST /job/{name}/enable
    async fn post_job_enable(
    &self,
    
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      header_params: &models::PostJobEnableHeaderParams,
      path_params: &models::PostJobEnablePathParams,
    ) -> Result<PostJobEnableResponse, E>;

    /// PostJobLastBuildStop - POST /job/{name}/lastBuild/stop
    async fn post_job_last_build_stop(
    &self,
    
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      header_params: &models::PostJobLastBuildStopHeaderParams,
      path_params: &models::PostJobLastBuildStopPathParams,
    ) -> Result<PostJobLastBuildStopResponse, E>;

    /// PostViewConfig - POST /view/{name}/config.xml
    async fn post_view_config(
    &self,
    
    method: &Method,
    host: &Host,
    cookies: &CookieJar,
        claims: &Self::Claims,
      header_params: &models::PostViewConfigHeaderParams,
      path_params: &models::PostViewConfigPathParams,
            body: &String,
    ) -> Result<PostViewConfigResponse, E>;
}
