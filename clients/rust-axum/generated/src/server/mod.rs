use std::collections::HashMap;

use axum::{body::Body, extract::*, response::Response, routing::*};
use axum_extra::extract::{CookieJar, Multipart};
use bytes::Bytes;
use http::{header::CONTENT_TYPE, HeaderMap, HeaderName, HeaderValue, Method, StatusCode};
use tracing::error;
use validator::{Validate, ValidationErrors};

use crate::{header, types::*};

#[allow(unused_imports)]
use crate::models;

use crate::{Api,
     GetCrumbResponse,
     DeletePipelineQueueItemResponse,
     GetAuthenticatedUserResponse,
     GetClassesResponse,
     GetJsonWebKeyResponse,
     GetJsonWebTokenResponse,
     GetOrganisationResponse,
     GetOrganisationsResponse,
     GetPipelineResponse,
     GetPipelineActivitiesResponse,
     GetPipelineBranchResponse,
     GetPipelineBranchRunResponse,
     GetPipelineBranchesResponse,
     GetPipelineFolderResponse,
     GetPipelineFolderPipelineResponse,
     GetPipelineQueueResponse,
     GetPipelineRunResponse,
     GetPipelineRunLogResponse,
     GetPipelineRunNodeResponse,
     GetPipelineRunNodeStepResponse,
     GetPipelineRunNodeStepLogResponse,
     GetPipelineRunNodeStepsResponse,
     GetPipelineRunNodesResponse,
     GetPipelineRunsResponse,
     GetPipelinesResponse,
     GetScmResponse,
     GetScmOrganisationRepositoriesResponse,
     GetScmOrganisationRepositoryResponse,
     GetScmOrganisationsResponse,
     GetUserResponse,
     GetUserFavoritesResponse,
     GetUsersResponse,
     PostPipelineRunResponse,
     PostPipelineRunsResponse,
     PutPipelineFavoriteResponse,
     PutPipelineRunResponse,
     SearchResponse,
     SearchClassesResponse,
     GetComputerResponse,
     GetJenkinsResponse,
     GetJobResponse,
     GetJobConfigResponse,
     GetJobLastBuildResponse,
     GetJobProgressiveTextResponse,
     GetQueueResponse,
     GetQueueItemResponse,
     GetViewResponse,
     GetViewConfigResponse,
     HeadJenkinsResponse,
     PostCreateItemResponse,
     PostCreateViewResponse,
     PostJobBuildResponse,
     PostJobConfigResponse,
     PostJobDeleteResponse,
     PostJobDisableResponse,
     PostJobEnableResponse,
     PostJobLastBuildStopResponse,
     PostViewConfigResponse
};

/// Setup API Server.
pub fn new<I, A>(api_impl: I) -> Router
where
    I: AsRef<A> + Clone + Send + Sync + 'static,
    A: Api + 'static,
{
    // build our application with a route
    Router::new()
        .route("/api/json",
            get(get_jenkins::<I, A>).head(head_jenkins::<I, A>)
        )
        .route("/blue/rest/classes/",
            get(search_classes::<I, A>)
        )
        .route("/blue/rest/classes/:class",
            get(get_classes::<I, A>)
        )
        .route("/blue/rest/organizations/",
            get(get_organisations::<I, A>)
        )
        .route("/blue/rest/organizations/:organization",
            get(get_organisation::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/pipelines/",
            get(get_pipelines::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/pipelines/:folder/",
            get(get_pipeline_folder::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/pipelines/:folder/pipelines/:pipeline",
            get(get_pipeline_folder_pipeline::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/pipelines/:pipeline",
            get(get_pipeline::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/pipelines/:pipeline/activities",
            get(get_pipeline_activities::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/pipelines/:pipeline/branches",
            get(get_pipeline_branches::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/pipelines/:pipeline/branches/:branch/",
            get(get_pipeline_branch::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/pipelines/:pipeline/branches/:branch/runs/:run",
            get(get_pipeline_branch_run::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/pipelines/:pipeline/favorite",
            put(put_pipeline_favorite::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/pipelines/:pipeline/queue",
            get(get_pipeline_queue::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/pipelines/:pipeline/queue/:queue",
            delete(delete_pipeline_queue_item::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/pipelines/:pipeline/runs",
            get(get_pipeline_runs::<I, A>).post(post_pipeline_runs::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run",
            get(get_pipeline_run::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/log",
            get(get_pipeline_run_log::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes",
            get(get_pipeline_run_nodes::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node",
            get(get_pipeline_run_node::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps",
            get(get_pipeline_run_node_steps::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps/:step",
            get(get_pipeline_run_node_step::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps/:step/log",
            get(get_pipeline_run_node_step_log::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/replay",
            post(post_pipeline_run::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/stop",
            put(put_pipeline_run::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/scm/:scm",
            get(get_scm::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/scm/:scm/organizations",
            get(get_scm_organisations::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/scm/:scm/organizations/:scm_organisation/repositories",
            get(get_scm_organisation_repositories::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/scm/:scm/organizations/:scm_organisation/repositories/:repository",
            get(get_scm_organisation_repository::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/user/",
            get(get_authenticated_user::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/users/",
            get(get_users::<I, A>)
        )
        .route("/blue/rest/organizations/:organization/users/:user",
            get(get_user::<I, A>)
        )
        .route("/blue/rest/search/",
            get(search::<I, A>)
        )
        .route("/blue/rest/users/:user/favorites",
            get(get_user_favorites::<I, A>)
        )
        .route("/computer/api/json",
            get(get_computer::<I, A>)
        )
        .route("/createItem",
            post(post_create_item::<I, A>)
        )
        .route("/createView",
            post(post_create_view::<I, A>)
        )
        .route("/crumbIssuer/api/json",
            get(get_crumb::<I, A>)
        )
        .route("/job/:name/:number/logText/progressiveText",
            get(get_job_progressive_text::<I, A>)
        )
        .route("/job/:name/api/json",
            get(get_job::<I, A>)
        )
        .route("/job/:name/build",
            post(post_job_build::<I, A>)
        )
        .route("/job/:name/config.xml",
            get(get_job_config::<I, A>).post(post_job_config::<I, A>)
        )
        .route("/job/:name/disable",
            post(post_job_disable::<I, A>)
        )
        .route("/job/:name/doDelete",
            post(post_job_delete::<I, A>)
        )
        .route("/job/:name/enable",
            post(post_job_enable::<I, A>)
        )
        .route("/job/:name/lastBuild/api/json",
            get(get_job_last_build::<I, A>)
        )
        .route("/job/:name/lastBuild/stop",
            post(post_job_last_build_stop::<I, A>)
        )
        .route("/jwt-auth/jwks/:key",
            get(get_json_web_key::<I, A>)
        )
        .route("/jwt-auth/token",
            get(get_json_web_token::<I, A>)
        )
        .route("/queue/api/json",
            get(get_queue::<I, A>)
        )
        .route("/queue/item/:number/api/json",
            get(get_queue_item::<I, A>)
        )
        .route("/view/:name/api/json",
            get(get_view::<I, A>)
        )
        .route("/view/:name/config.xml",
            get(get_view_config::<I, A>).post(post_view_config::<I, A>)
        )
        .with_state(api_impl)
}


#[tracing::instrument(skip_all)]
fn get_crumb_validation(
) -> std::result::Result<(
), ValidationErrors>
{

Ok((
))
}

/// GetCrumb - GET /crumbIssuer/api/json
#[tracing::instrument(skip_all)]
async fn get_crumb<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_crumb_validation(
    )
  ).await.unwrap();

  let Ok((
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_crumb(
      method,
      host,
      cookies,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetCrumbResponse::Status200_SuccessfullyRetrievedCSRFProtectionToken
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetCrumbResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetCrumbResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn delete_pipeline_queue_item_validation(
  path_params: models::DeletePipelineQueueItemPathParams,
) -> std::result::Result<(
  models::DeletePipelineQueueItemPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// DeletePipelineQueueItem - DELETE /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}
#[tracing::instrument(skip_all)]
async fn delete_pipeline_queue_item<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::DeletePipelineQueueItemPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    delete_pipeline_queue_item_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().delete_pipeline_queue_item(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                DeletePipelineQueueItemResponse::Status200_SuccessfullyDeletedQueueItem
                                                => {

                                                  let mut response = response.status(200);
                                                  response.body(Body::empty())
                                                },
                                                DeletePipelineQueueItemResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                DeletePipelineQueueItemResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_authenticated_user_validation(
  path_params: models::GetAuthenticatedUserPathParams,
) -> std::result::Result<(
  models::GetAuthenticatedUserPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetAuthenticatedUser - GET /blue/rest/organizations/{organization}/user/
#[tracing::instrument(skip_all)]
async fn get_authenticated_user<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetAuthenticatedUserPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_authenticated_user_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_authenticated_user(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetAuthenticatedUserResponse::Status200_SuccessfullyRetrievedAuthenticatedUserDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetAuthenticatedUserResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetAuthenticatedUserResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_classes_validation(
  path_params: models::GetClassesPathParams,
) -> std::result::Result<(
  models::GetClassesPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetClasses - GET /blue/rest/classes/{class}
#[tracing::instrument(skip_all)]
async fn get_classes<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetClassesPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_classes_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_classes(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetClassesResponse::Status200_SuccessfullyRetrievedClassNames
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetClassesResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetClassesResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_json_web_key_validation(
  path_params: models::GetJsonWebKeyPathParams,
) -> std::result::Result<(
  models::GetJsonWebKeyPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetJsonWebKey - GET /jwt-auth/jwks/{key}
#[tracing::instrument(skip_all)]
async fn get_json_web_key<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetJsonWebKeyPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_json_web_key_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_json_web_key(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetJsonWebKeyResponse::Status200_SuccessfullyRetrievedJWTToken
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetJsonWebKeyResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetJsonWebKeyResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_json_web_token_validation(
  query_params: models::GetJsonWebTokenQueryParams,
) -> std::result::Result<(
  models::GetJsonWebTokenQueryParams,
), ValidationErrors>
{
  query_params.validate()?;

Ok((
  query_params,
))
}

/// GetJsonWebToken - GET /jwt-auth/token
#[tracing::instrument(skip_all)]
async fn get_json_web_token<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Query(query_params): Query<models::GetJsonWebTokenQueryParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_json_web_token_validation(
        query_params,
    )
  ).await.unwrap();

  let Ok((
    query_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_json_web_token(
      method,
      host,
      cookies,
        query_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetJsonWebTokenResponse::Status200_SuccessfullyRetrievedJWTToken
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetJsonWebTokenResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetJsonWebTokenResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_organisation_validation(
  path_params: models::GetOrganisationPathParams,
) -> std::result::Result<(
  models::GetOrganisationPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetOrganisation - GET /blue/rest/organizations/{organization}
#[tracing::instrument(skip_all)]
async fn get_organisation<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetOrganisationPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_organisation_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_organisation(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetOrganisationResponse::Status200_SuccessfullyRetrievedPipelineDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetOrganisationResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetOrganisationResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                                GetOrganisationResponse::Status404_PipelineCannotBeFoundOnJenkinsInstance
                                                => {

                                                  let mut response = response.status(404);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_organisations_validation(
) -> std::result::Result<(
), ValidationErrors>
{

Ok((
))
}

/// GetOrganisations - GET /blue/rest/organizations/
#[tracing::instrument(skip_all)]
async fn get_organisations<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_organisations_validation(
    )
  ).await.unwrap();

  let Ok((
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_organisations(
      method,
      host,
      cookies,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetOrganisationsResponse::Status200_SuccessfullyRetrievedPipelinesDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetOrganisationsResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetOrganisationsResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_pipeline_validation(
  path_params: models::GetPipelinePathParams,
) -> std::result::Result<(
  models::GetPipelinePathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetPipeline - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}
#[tracing::instrument(skip_all)]
async fn get_pipeline<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetPipelinePathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_pipeline_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_pipeline(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineResponse::Status200_SuccessfullyRetrievedPipelineDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetPipelineResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetPipelineResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                                GetPipelineResponse::Status404_PipelineCannotBeFoundOnJenkinsInstance
                                                => {

                                                  let mut response = response.status(404);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_pipeline_activities_validation(
  path_params: models::GetPipelineActivitiesPathParams,
) -> std::result::Result<(
  models::GetPipelineActivitiesPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetPipelineActivities - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities
#[tracing::instrument(skip_all)]
async fn get_pipeline_activities<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetPipelineActivitiesPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_pipeline_activities_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_pipeline_activities(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineActivitiesResponse::Status200_SuccessfullyRetrievedAllActivitiesDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetPipelineActivitiesResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetPipelineActivitiesResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_pipeline_branch_validation(
  path_params: models::GetPipelineBranchPathParams,
) -> std::result::Result<(
  models::GetPipelineBranchPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetPipelineBranch - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/
#[tracing::instrument(skip_all)]
async fn get_pipeline_branch<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetPipelineBranchPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_pipeline_branch_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_pipeline_branch(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineBranchResponse::Status200_SuccessfullyRetrievedBranchDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetPipelineBranchResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetPipelineBranchResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_pipeline_branch_run_validation(
  path_params: models::GetPipelineBranchRunPathParams,
) -> std::result::Result<(
  models::GetPipelineBranchRunPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetPipelineBranchRun - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}
#[tracing::instrument(skip_all)]
async fn get_pipeline_branch_run<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetPipelineBranchRunPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_pipeline_branch_run_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_pipeline_branch_run(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineBranchRunResponse::Status200_SuccessfullyRetrievedRunDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetPipelineBranchRunResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetPipelineBranchRunResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_pipeline_branches_validation(
  path_params: models::GetPipelineBranchesPathParams,
) -> std::result::Result<(
  models::GetPipelineBranchesPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetPipelineBranches - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches
#[tracing::instrument(skip_all)]
async fn get_pipeline_branches<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetPipelineBranchesPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_pipeline_branches_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_pipeline_branches(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineBranchesResponse::Status200_SuccessfullyRetrievedAllBranchesDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetPipelineBranchesResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetPipelineBranchesResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_pipeline_folder_validation(
  path_params: models::GetPipelineFolderPathParams,
) -> std::result::Result<(
  models::GetPipelineFolderPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetPipelineFolder - GET /blue/rest/organizations/{organization}/pipelines/{folder}/
#[tracing::instrument(skip_all)]
async fn get_pipeline_folder<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetPipelineFolderPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_pipeline_folder_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_pipeline_folder(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineFolderResponse::Status200_SuccessfullyRetrievedFolderDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetPipelineFolderResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetPipelineFolderResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_pipeline_folder_pipeline_validation(
  path_params: models::GetPipelineFolderPipelinePathParams,
) -> std::result::Result<(
  models::GetPipelineFolderPipelinePathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetPipelineFolderPipeline - GET /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}
#[tracing::instrument(skip_all)]
async fn get_pipeline_folder_pipeline<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetPipelineFolderPipelinePathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_pipeline_folder_pipeline_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_pipeline_folder_pipeline(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineFolderPipelineResponse::Status200_SuccessfullyRetrievedPipelineDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetPipelineFolderPipelineResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetPipelineFolderPipelineResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_pipeline_queue_validation(
  path_params: models::GetPipelineQueuePathParams,
) -> std::result::Result<(
  models::GetPipelineQueuePathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetPipelineQueue - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue
#[tracing::instrument(skip_all)]
async fn get_pipeline_queue<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetPipelineQueuePathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_pipeline_queue_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_pipeline_queue(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineQueueResponse::Status200_SuccessfullyRetrievedQueueDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetPipelineQueueResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetPipelineQueueResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_pipeline_run_validation(
  path_params: models::GetPipelineRunPathParams,
) -> std::result::Result<(
  models::GetPipelineRunPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetPipelineRun - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}
#[tracing::instrument(skip_all)]
async fn get_pipeline_run<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetPipelineRunPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_pipeline_run_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_pipeline_run(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunResponse::Status200_SuccessfullyRetrievedRunDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetPipelineRunResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetPipelineRunResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_pipeline_run_log_validation(
  path_params: models::GetPipelineRunLogPathParams,
  query_params: models::GetPipelineRunLogQueryParams,
) -> std::result::Result<(
  models::GetPipelineRunLogPathParams,
  models::GetPipelineRunLogQueryParams,
), ValidationErrors>
{
  path_params.validate()?;
  query_params.validate()?;

Ok((
  path_params,
  query_params,
))
}

/// GetPipelineRunLog - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log
#[tracing::instrument(skip_all)]
async fn get_pipeline_run_log<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetPipelineRunLogPathParams>,
  Query(query_params): Query<models::GetPipelineRunLogQueryParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_pipeline_run_log_validation(
        path_params,
        query_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
    query_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_pipeline_run_log(
      method,
      host,
      cookies,
        path_params,
        query_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunLogResponse::Status200_SuccessfullyRetrievedPipelineRunLog
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetPipelineRunLogResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetPipelineRunLogResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_pipeline_run_node_validation(
  path_params: models::GetPipelineRunNodePathParams,
) -> std::result::Result<(
  models::GetPipelineRunNodePathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetPipelineRunNode - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}
#[tracing::instrument(skip_all)]
async fn get_pipeline_run_node<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetPipelineRunNodePathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_pipeline_run_node_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_pipeline_run_node(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunNodeResponse::Status200_SuccessfullyRetrievedRunNodeDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetPipelineRunNodeResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetPipelineRunNodeResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_pipeline_run_node_step_validation(
  path_params: models::GetPipelineRunNodeStepPathParams,
) -> std::result::Result<(
  models::GetPipelineRunNodeStepPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetPipelineRunNodeStep - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}
#[tracing::instrument(skip_all)]
async fn get_pipeline_run_node_step<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetPipelineRunNodeStepPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_pipeline_run_node_step_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_pipeline_run_node_step(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunNodeStepResponse::Status200_SuccessfullyRetrievedRunNodeStepDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetPipelineRunNodeStepResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetPipelineRunNodeStepResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_pipeline_run_node_step_log_validation(
  path_params: models::GetPipelineRunNodeStepLogPathParams,
) -> std::result::Result<(
  models::GetPipelineRunNodeStepLogPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetPipelineRunNodeStepLog - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log
#[tracing::instrument(skip_all)]
async fn get_pipeline_run_node_step_log<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetPipelineRunNodeStepLogPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_pipeline_run_node_step_log_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_pipeline_run_node_step_log(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunNodeStepLogResponse::Status200_SuccessfullyRetrievedPipelineRunNodeStepLog
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetPipelineRunNodeStepLogResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetPipelineRunNodeStepLogResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_pipeline_run_node_steps_validation(
  path_params: models::GetPipelineRunNodeStepsPathParams,
) -> std::result::Result<(
  models::GetPipelineRunNodeStepsPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetPipelineRunNodeSteps - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps
#[tracing::instrument(skip_all)]
async fn get_pipeline_run_node_steps<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetPipelineRunNodeStepsPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_pipeline_run_node_steps_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_pipeline_run_node_steps(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunNodeStepsResponse::Status200_SuccessfullyRetrievedRunNodeStepsDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetPipelineRunNodeStepsResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetPipelineRunNodeStepsResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_pipeline_run_nodes_validation(
  path_params: models::GetPipelineRunNodesPathParams,
) -> std::result::Result<(
  models::GetPipelineRunNodesPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetPipelineRunNodes - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes
#[tracing::instrument(skip_all)]
async fn get_pipeline_run_nodes<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetPipelineRunNodesPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_pipeline_run_nodes_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_pipeline_run_nodes(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunNodesResponse::Status200_SuccessfullyRetrievedRunNodesDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetPipelineRunNodesResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetPipelineRunNodesResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_pipeline_runs_validation(
  path_params: models::GetPipelineRunsPathParams,
) -> std::result::Result<(
  models::GetPipelineRunsPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetPipelineRuns - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs
#[tracing::instrument(skip_all)]
async fn get_pipeline_runs<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetPipelineRunsPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_pipeline_runs_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_pipeline_runs(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunsResponse::Status200_SuccessfullyRetrievedRunsDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetPipelineRunsResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetPipelineRunsResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_pipelines_validation(
  path_params: models::GetPipelinesPathParams,
) -> std::result::Result<(
  models::GetPipelinesPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetPipelines - GET /blue/rest/organizations/{organization}/pipelines/
#[tracing::instrument(skip_all)]
async fn get_pipelines<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetPipelinesPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_pipelines_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_pipelines(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelinesResponse::Status200_SuccessfullyRetrievedPipelinesDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetPipelinesResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetPipelinesResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_scm_validation(
  path_params: models::GetScmPathParams,
) -> std::result::Result<(
  models::GetScmPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetScm - GET /blue/rest/organizations/{organization}/scm/{scm}
#[tracing::instrument(skip_all)]
async fn get_scm<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetScmPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_scm_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_scm(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetScmResponse::Status200_SuccessfullyRetrievedSCMDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetScmResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetScmResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_scm_organisation_repositories_validation(
  path_params: models::GetScmOrganisationRepositoriesPathParams,
  query_params: models::GetScmOrganisationRepositoriesQueryParams,
) -> std::result::Result<(
  models::GetScmOrganisationRepositoriesPathParams,
  models::GetScmOrganisationRepositoriesQueryParams,
), ValidationErrors>
{
  path_params.validate()?;
  query_params.validate()?;

Ok((
  path_params,
  query_params,
))
}

/// GetScmOrganisationRepositories - GET /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories
#[tracing::instrument(skip_all)]
async fn get_scm_organisation_repositories<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetScmOrganisationRepositoriesPathParams>,
  Query(query_params): Query<models::GetScmOrganisationRepositoriesQueryParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_scm_organisation_repositories_validation(
        path_params,
        query_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
    query_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_scm_organisation_repositories(
      method,
      host,
      cookies,
        path_params,
        query_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetScmOrganisationRepositoriesResponse::Status200_SuccessfullyRetrievedSCMOrganizationRepositoriesDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetScmOrganisationRepositoriesResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetScmOrganisationRepositoriesResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_scm_organisation_repository_validation(
  path_params: models::GetScmOrganisationRepositoryPathParams,
  query_params: models::GetScmOrganisationRepositoryQueryParams,
) -> std::result::Result<(
  models::GetScmOrganisationRepositoryPathParams,
  models::GetScmOrganisationRepositoryQueryParams,
), ValidationErrors>
{
  path_params.validate()?;
  query_params.validate()?;

Ok((
  path_params,
  query_params,
))
}

/// GetScmOrganisationRepository - GET /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}
#[tracing::instrument(skip_all)]
async fn get_scm_organisation_repository<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetScmOrganisationRepositoryPathParams>,
  Query(query_params): Query<models::GetScmOrganisationRepositoryQueryParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_scm_organisation_repository_validation(
        path_params,
        query_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
    query_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_scm_organisation_repository(
      method,
      host,
      cookies,
        path_params,
        query_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetScmOrganisationRepositoryResponse::Status200_SuccessfullyRetrievedSCMOrganizationsDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetScmOrganisationRepositoryResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetScmOrganisationRepositoryResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_scm_organisations_validation(
  path_params: models::GetScmOrganisationsPathParams,
  query_params: models::GetScmOrganisationsQueryParams,
) -> std::result::Result<(
  models::GetScmOrganisationsPathParams,
  models::GetScmOrganisationsQueryParams,
), ValidationErrors>
{
  path_params.validate()?;
  query_params.validate()?;

Ok((
  path_params,
  query_params,
))
}

/// GetScmOrganisations - GET /blue/rest/organizations/{organization}/scm/{scm}/organizations
#[tracing::instrument(skip_all)]
async fn get_scm_organisations<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetScmOrganisationsPathParams>,
  Query(query_params): Query<models::GetScmOrganisationsQueryParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_scm_organisations_validation(
        path_params,
        query_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
    query_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_scm_organisations(
      method,
      host,
      cookies,
        path_params,
        query_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetScmOrganisationsResponse::Status200_SuccessfullyRetrievedSCMOrganizationsDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetScmOrganisationsResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetScmOrganisationsResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_user_validation(
  path_params: models::GetUserPathParams,
) -> std::result::Result<(
  models::GetUserPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetUser - GET /blue/rest/organizations/{organization}/users/{user}
#[tracing::instrument(skip_all)]
async fn get_user<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetUserPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_user_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_user(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetUserResponse::Status200_SuccessfullyRetrievedUsersDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetUserResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetUserResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_user_favorites_validation(
  path_params: models::GetUserFavoritesPathParams,
) -> std::result::Result<(
  models::GetUserFavoritesPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetUserFavorites - GET /blue/rest/users/{user}/favorites
#[tracing::instrument(skip_all)]
async fn get_user_favorites<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetUserFavoritesPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_user_favorites_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_user_favorites(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetUserFavoritesResponse::Status200_SuccessfullyRetrievedUsersFavoritesDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetUserFavoritesResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetUserFavoritesResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_users_validation(
  path_params: models::GetUsersPathParams,
) -> std::result::Result<(
  models::GetUsersPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetUsers - GET /blue/rest/organizations/{organization}/users/
#[tracing::instrument(skip_all)]
async fn get_users<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetUsersPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_users_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_users(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetUsersResponse::Status200_SuccessfullyRetrievedUsersDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetUsersResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetUsersResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn post_pipeline_run_validation(
  path_params: models::PostPipelineRunPathParams,
) -> std::result::Result<(
  models::PostPipelineRunPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// PostPipelineRun - POST /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay
#[tracing::instrument(skip_all)]
async fn post_pipeline_run<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::PostPipelineRunPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    post_pipeline_run_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().post_pipeline_run(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                PostPipelineRunResponse::Status200_SuccessfullyReplayedAPipelineRun
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                PostPipelineRunResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                PostPipelineRunResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn post_pipeline_runs_validation(
  path_params: models::PostPipelineRunsPathParams,
) -> std::result::Result<(
  models::PostPipelineRunsPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// PostPipelineRuns - POST /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs
#[tracing::instrument(skip_all)]
async fn post_pipeline_runs<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::PostPipelineRunsPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    post_pipeline_runs_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().post_pipeline_runs(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                PostPipelineRunsResponse::Status200_SuccessfullyStartedABuild
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                PostPipelineRunsResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                PostPipelineRunsResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}

    #[derive(validator::Validate)]
    #[allow(dead_code)]
    struct PutPipelineFavoriteBodyValidator<'a> {
            #[validate]
          body: &'a bool,
    }


#[tracing::instrument(skip_all)]
fn put_pipeline_favorite_validation(
  path_params: models::PutPipelineFavoritePathParams,
        body: bool,
) -> std::result::Result<(
  models::PutPipelineFavoritePathParams,
        bool,
), ValidationErrors>
{
  path_params.validate()?;
              let b = PutPipelineFavoriteBodyValidator { body: &body };
              b.validate()?;

Ok((
  path_params,
    body,
))
}

/// PutPipelineFavorite - PUT /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite
#[tracing::instrument(skip_all)]
async fn put_pipeline_favorite<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::PutPipelineFavoritePathParams>,
 State(api_impl): State<I>,
          Json(body): Json<bool>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    put_pipeline_favorite_validation(
        path_params,
          body,
    )
  ).await.unwrap();

  let Ok((
    path_params,
      body,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().put_pipeline_favorite(
      method,
      host,
      cookies,
        path_params,
              body,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                PutPipelineFavoriteResponse::Status200_SuccessfullyFavorited
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                PutPipelineFavoriteResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                PutPipelineFavoriteResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn put_pipeline_run_validation(
  path_params: models::PutPipelineRunPathParams,
  query_params: models::PutPipelineRunQueryParams,
) -> std::result::Result<(
  models::PutPipelineRunPathParams,
  models::PutPipelineRunQueryParams,
), ValidationErrors>
{
  path_params.validate()?;
  query_params.validate()?;

Ok((
  path_params,
  query_params,
))
}

/// PutPipelineRun - PUT /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop
#[tracing::instrument(skip_all)]
async fn put_pipeline_run<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::PutPipelineRunPathParams>,
  Query(query_params): Query<models::PutPipelineRunQueryParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    put_pipeline_run_validation(
        path_params,
        query_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
    query_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().put_pipeline_run(
      method,
      host,
      cookies,
        path_params,
        query_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                PutPipelineRunResponse::Status200_SuccessfullyStoppedABuild
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                PutPipelineRunResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                PutPipelineRunResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn search_validation(
  query_params: models::SearchQueryParams,
) -> std::result::Result<(
  models::SearchQueryParams,
), ValidationErrors>
{
  query_params.validate()?;

Ok((
  query_params,
))
}

/// Search - GET /blue/rest/search/
#[tracing::instrument(skip_all)]
async fn search<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Query(query_params): Query<models::SearchQueryParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    search_validation(
        query_params,
    )
  ).await.unwrap();

  let Ok((
    query_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().search(
      method,
      host,
      cookies,
        query_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                SearchResponse::Status200_SuccessfullyRetrievedSearchResult
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                SearchResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                SearchResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn search_classes_validation(
  query_params: models::SearchClassesQueryParams,
) -> std::result::Result<(
  models::SearchClassesQueryParams,
), ValidationErrors>
{
  query_params.validate()?;

Ok((
  query_params,
))
}

/// SearchClasses - GET /blue/rest/classes/
#[tracing::instrument(skip_all)]
async fn search_classes<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Query(query_params): Query<models::SearchClassesQueryParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    search_classes_validation(
        query_params,
    )
  ).await.unwrap();

  let Ok((
    query_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().search_classes(
      method,
      host,
      cookies,
        query_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                SearchClassesResponse::Status200_SuccessfullyRetrievedSearchResult
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                SearchClassesResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                SearchClassesResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_computer_validation(
  query_params: models::GetComputerQueryParams,
) -> std::result::Result<(
  models::GetComputerQueryParams,
), ValidationErrors>
{
  query_params.validate()?;

Ok((
  query_params,
))
}

/// GetComputer - GET /computer/api/json
#[tracing::instrument(skip_all)]
async fn get_computer<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Query(query_params): Query<models::GetComputerQueryParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_computer_validation(
        query_params,
    )
  ).await.unwrap();

  let Ok((
    query_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_computer(
      method,
      host,
      cookies,
        query_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetComputerResponse::Status200_SuccessfullyRetrievedComputerDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetComputerResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetComputerResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_jenkins_validation(
) -> std::result::Result<(
), ValidationErrors>
{

Ok((
))
}

/// GetJenkins - GET /api/json
#[tracing::instrument(skip_all)]
async fn get_jenkins<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_jenkins_validation(
    )
  ).await.unwrap();

  let Ok((
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_jenkins(
      method,
      host,
      cookies,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetJenkinsResponse::Status200_SuccessfullyRetrievedJenkinsDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetJenkinsResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetJenkinsResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_job_validation(
  path_params: models::GetJobPathParams,
) -> std::result::Result<(
  models::GetJobPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetJob - GET /job/{name}/api/json
#[tracing::instrument(skip_all)]
async fn get_job<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetJobPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_job_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_job(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetJobResponse::Status200_SuccessfullyRetrievedJobDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetJobResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetJobResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                                GetJobResponse::Status404_JobCannotBeFoundOnJenkinsInstance
                                                => {

                                                  let mut response = response.status(404);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_job_config_validation(
  path_params: models::GetJobConfigPathParams,
) -> std::result::Result<(
  models::GetJobConfigPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetJobConfig - GET /job/{name}/config.xml
#[tracing::instrument(skip_all)]
async fn get_job_config<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetJobConfigPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_job_config_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_job_config(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetJobConfigResponse::Status200_SuccessfullyRetrievedJobConfigurationInConfig
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("text/plain").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content = body;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetJobConfigResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetJobConfigResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                                GetJobConfigResponse::Status404_JobCannotBeFoundOnJenkinsInstance
                                                => {

                                                  let mut response = response.status(404);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_job_last_build_validation(
  path_params: models::GetJobLastBuildPathParams,
) -> std::result::Result<(
  models::GetJobLastBuildPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetJobLastBuild - GET /job/{name}/lastBuild/api/json
#[tracing::instrument(skip_all)]
async fn get_job_last_build<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetJobLastBuildPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_job_last_build_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_job_last_build(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetJobLastBuildResponse::Status200_SuccessfullyRetrievedJob
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetJobLastBuildResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetJobLastBuildResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                                GetJobLastBuildResponse::Status404_JobCannotBeFoundOnJenkinsInstance
                                                => {

                                                  let mut response = response.status(404);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_job_progressive_text_validation(
  path_params: models::GetJobProgressiveTextPathParams,
  query_params: models::GetJobProgressiveTextQueryParams,
) -> std::result::Result<(
  models::GetJobProgressiveTextPathParams,
  models::GetJobProgressiveTextQueryParams,
), ValidationErrors>
{
  path_params.validate()?;
  query_params.validate()?;

Ok((
  path_params,
  query_params,
))
}

/// GetJobProgressiveText - GET /job/{name}/{number}/logText/progressiveText
#[tracing::instrument(skip_all)]
async fn get_job_progressive_text<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetJobProgressiveTextPathParams>,
  Query(query_params): Query<models::GetJobProgressiveTextQueryParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_job_progressive_text_validation(
        path_params,
        query_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
    query_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_job_progressive_text(
      method,
      host,
      cookies,
        path_params,
        query_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetJobProgressiveTextResponse::Status200_SuccessfullyRetrievedJob
                                                => {

                                                  let mut response = response.status(200);
                                                  response.body(Body::empty())
                                                },
                                                GetJobProgressiveTextResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetJobProgressiveTextResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                                GetJobProgressiveTextResponse::Status404_JobCannotBeFoundOnJenkinsInstance
                                                => {

                                                  let mut response = response.status(404);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_queue_validation(
) -> std::result::Result<(
), ValidationErrors>
{

Ok((
))
}

/// GetQueue - GET /queue/api/json
#[tracing::instrument(skip_all)]
async fn get_queue<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_queue_validation(
    )
  ).await.unwrap();

  let Ok((
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_queue(
      method,
      host,
      cookies,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetQueueResponse::Status200_SuccessfullyRetrievedQueueDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetQueueResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetQueueResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_queue_item_validation(
  path_params: models::GetQueueItemPathParams,
) -> std::result::Result<(
  models::GetQueueItemPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetQueueItem - GET /queue/item/{number}/api/json
#[tracing::instrument(skip_all)]
async fn get_queue_item<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetQueueItemPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_queue_item_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_queue_item(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetQueueItemResponse::Status200_SuccessfullyRetrievedQueuedItemDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetQueueItemResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetQueueItemResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_view_validation(
  path_params: models::GetViewPathParams,
) -> std::result::Result<(
  models::GetViewPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetView - GET /view/{name}/api/json
#[tracing::instrument(skip_all)]
async fn get_view<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetViewPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_view_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_view(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetViewResponse::Status200_SuccessfullyRetrievedViewDetails
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetViewResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetViewResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                                GetViewResponse::Status404_ViewCannotBeFoundOnJenkinsInstance
                                                => {

                                                  let mut response = response.status(404);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn get_view_config_validation(
  path_params: models::GetViewConfigPathParams,
) -> std::result::Result<(
  models::GetViewConfigPathParams,
), ValidationErrors>
{
  path_params.validate()?;

Ok((
  path_params,
))
}

/// GetViewConfig - GET /view/{name}/config.xml
#[tracing::instrument(skip_all)]
async fn get_view_config<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  Path(path_params): Path<models::GetViewConfigPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    get_view_config_validation(
        path_params,
    )
  ).await.unwrap();

  let Ok((
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().get_view_config(
      method,
      host,
      cookies,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                GetViewConfigResponse::Status200_SuccessfullyRetrievedViewConfigurationInConfig
                                                    (body)
                                                => {

                                                  let mut response = response.status(200);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("text/plain").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content = body;
                                                  response.body(Body::from(body_content))
                                                },
                                                GetViewConfigResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                GetViewConfigResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                                GetViewConfigResponse::Status404_ViewCannotBeFoundOnJenkinsInstance
                                                => {

                                                  let mut response = response.status(404);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn head_jenkins_validation(
) -> std::result::Result<(
), ValidationErrors>
{

Ok((
))
}

/// HeadJenkins - HEAD /api/json
#[tracing::instrument(skip_all)]
async fn head_jenkins<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{

      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    head_jenkins_validation(
    )
  ).await.unwrap();

  let Ok((
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().head_jenkins(
      method,
      host,
      cookies,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                HeadJenkinsResponse::Status200_SuccessfullyRetrievedJenkinsHeaders
                                                    {
                                                        x_jenkins
                                                    }
                                                => {
                                                    if let Some(x_jenkins) = x_jenkins {
                                                    let x_jenkins = match header::IntoHeaderValue(x_jenkins).try_into() {
                                                        Ok(val) => val,
                                                        Err(e) => {
                                                            return Response::builder()
                                                                    .status(StatusCode::INTERNAL_SERVER_ERROR)
                                                                    .body(Body::from(format!("An internal server error occurred handling x_jenkins header - {}", e))).map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR });
                                                        }
                                                    };

                                                    
                                                    {
                                                      let mut response_headers = response.headers_mut().unwrap();
                                                      response_headers.insert(
                                                          HeaderName::from_static("x-jenkins"),
                                                          x_jenkins
                                                      );
                                                    }
                                                    }

                                                  let mut response = response.status(200);
                                                  response.body(Body::empty())
                                                },
                                                HeadJenkinsResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                HeadJenkinsResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}

    #[derive(validator::Validate)]
    #[allow(dead_code)]
    struct PostCreateItemBodyValidator<'a> {
            #[validate]
          body: &'a String,
    }


#[tracing::instrument(skip_all)]
fn post_create_item_validation(
  header_params: models::PostCreateItemHeaderParams,
  query_params: models::PostCreateItemQueryParams,
        body: Option<String>,
) -> std::result::Result<(
  models::PostCreateItemHeaderParams,
  models::PostCreateItemQueryParams,
        Option<String>,
), ValidationErrors>
{
  header_params.validate()?;
  query_params.validate()?;
            if let Some(body) = &body {
              let b = PostCreateItemBodyValidator { body };
              b.validate()?;
            }

Ok((
  header_params,
  query_params,
    body,
))
}

/// PostCreateItem - POST /createItem
#[tracing::instrument(skip_all)]
async fn post_create_item<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  headers: HeaderMap,
  Query(query_params): Query<models::PostCreateItemQueryParams>,
 State(api_impl): State<I>,
          Json(body): Json<Option<String>>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{
    // Header parameters
    let header_params = {
                let header_jenkins_crumb = headers.get(HeaderName::from_static("jenkins-crumb"));

                let header_jenkins_crumb = match header_jenkins_crumb {
                    Some(v) => match header::IntoHeaderValue::<String>::try_from((*v).clone()) {
                        Ok(result) =>
                            Some(result.0),
                        Err(err) => {
                            return Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Invalid header Jenkins-Crumb - {}", err))).map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR });

                        },
                    },
                    None => {
                        None
                    }
                };
                let header_content_type = headers.get(HeaderName::from_static("content-type"));

                let header_content_type = match header_content_type {
                    Some(v) => match header::IntoHeaderValue::<String>::try_from((*v).clone()) {
                        Ok(result) =>
                            Some(result.0),
                        Err(err) => {
                            return Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Invalid header Content-Type - {}", err))).map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR });

                        },
                    },
                    None => {
                        None
                    }
                };

       models::PostCreateItemHeaderParams {
          jenkins_crumb: header_jenkins_crumb,
          content_type: header_content_type,
       }
  };


      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    post_create_item_validation(
        header_params,
        query_params,
          body,
    )
  ).await.unwrap();

  let Ok((
    header_params,
    query_params,
      body,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().post_create_item(
      method,
      host,
      cookies,
        header_params,
        query_params,
              body,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                PostCreateItemResponse::Status200_SuccessfullyCreatedANewJob
                                                => {

                                                  let mut response = response.status(200);
                                                  response.body(Body::empty())
                                                },
                                                PostCreateItemResponse::Status400_AnErrorHasOccurred
                                                    (body)
                                                => {

                                                  let mut response = response.status(400);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("*/*").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                PostCreateItemResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                PostCreateItemResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}

    #[derive(validator::Validate)]
    #[allow(dead_code)]
    struct PostCreateViewBodyValidator<'a> {
            #[validate]
          body: &'a String,
    }


#[tracing::instrument(skip_all)]
fn post_create_view_validation(
  header_params: models::PostCreateViewHeaderParams,
  query_params: models::PostCreateViewQueryParams,
        body: Option<String>,
) -> std::result::Result<(
  models::PostCreateViewHeaderParams,
  models::PostCreateViewQueryParams,
        Option<String>,
), ValidationErrors>
{
  header_params.validate()?;
  query_params.validate()?;
            if let Some(body) = &body {
              let b = PostCreateViewBodyValidator { body };
              b.validate()?;
            }

Ok((
  header_params,
  query_params,
    body,
))
}

/// PostCreateView - POST /createView
#[tracing::instrument(skip_all)]
async fn post_create_view<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  headers: HeaderMap,
  Query(query_params): Query<models::PostCreateViewQueryParams>,
 State(api_impl): State<I>,
          Json(body): Json<Option<String>>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{
    // Header parameters
    let header_params = {
                let header_jenkins_crumb = headers.get(HeaderName::from_static("jenkins-crumb"));

                let header_jenkins_crumb = match header_jenkins_crumb {
                    Some(v) => match header::IntoHeaderValue::<String>::try_from((*v).clone()) {
                        Ok(result) =>
                            Some(result.0),
                        Err(err) => {
                            return Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Invalid header Jenkins-Crumb - {}", err))).map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR });

                        },
                    },
                    None => {
                        None
                    }
                };
                let header_content_type = headers.get(HeaderName::from_static("content-type"));

                let header_content_type = match header_content_type {
                    Some(v) => match header::IntoHeaderValue::<String>::try_from((*v).clone()) {
                        Ok(result) =>
                            Some(result.0),
                        Err(err) => {
                            return Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Invalid header Content-Type - {}", err))).map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR });

                        },
                    },
                    None => {
                        None
                    }
                };

       models::PostCreateViewHeaderParams {
          jenkins_crumb: header_jenkins_crumb,
          content_type: header_content_type,
       }
  };


      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    post_create_view_validation(
        header_params,
        query_params,
          body,
    )
  ).await.unwrap();

  let Ok((
    header_params,
    query_params,
      body,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().post_create_view(
      method,
      host,
      cookies,
        header_params,
        query_params,
              body,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                PostCreateViewResponse::Status200_SuccessfullyCreatedTheView
                                                => {

                                                  let mut response = response.status(200);
                                                  response.body(Body::empty())
                                                },
                                                PostCreateViewResponse::Status400_AnErrorHasOccurred
                                                    (body)
                                                => {

                                                  let mut response = response.status(400);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("*/*").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                PostCreateViewResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                PostCreateViewResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn post_job_build_validation(
  header_params: models::PostJobBuildHeaderParams,
  path_params: models::PostJobBuildPathParams,
  query_params: models::PostJobBuildQueryParams,
) -> std::result::Result<(
  models::PostJobBuildHeaderParams,
  models::PostJobBuildPathParams,
  models::PostJobBuildQueryParams,
), ValidationErrors>
{
  header_params.validate()?;
  path_params.validate()?;
  query_params.validate()?;

Ok((
  header_params,
  path_params,
  query_params,
))
}

/// PostJobBuild - POST /job/{name}/build
#[tracing::instrument(skip_all)]
async fn post_job_build<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  headers: HeaderMap,
  Path(path_params): Path<models::PostJobBuildPathParams>,
  Query(query_params): Query<models::PostJobBuildQueryParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{
    // Header parameters
    let header_params = {
                let header_jenkins_crumb = headers.get(HeaderName::from_static("jenkins-crumb"));

                let header_jenkins_crumb = match header_jenkins_crumb {
                    Some(v) => match header::IntoHeaderValue::<String>::try_from((*v).clone()) {
                        Ok(result) =>
                            Some(result.0),
                        Err(err) => {
                            return Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Invalid header Jenkins-Crumb - {}", err))).map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR });

                        },
                    },
                    None => {
                        None
                    }
                };

       models::PostJobBuildHeaderParams {
          jenkins_crumb: header_jenkins_crumb,
       }
  };


      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    post_job_build_validation(
        header_params,
        path_params,
        query_params,
    )
  ).await.unwrap();

  let Ok((
    header_params,
    path_params,
    query_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().post_job_build(
      method,
      host,
      cookies,
        header_params,
        path_params,
        query_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                PostJobBuildResponse::Status200_SuccessfullyBuiltTheJob
                                                => {

                                                  let mut response = response.status(200);
                                                  response.body(Body::empty())
                                                },
                                                PostJobBuildResponse::Status201_SuccessfullyBuiltTheJob
                                                => {

                                                  let mut response = response.status(201);
                                                  response.body(Body::empty())
                                                },
                                                PostJobBuildResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                PostJobBuildResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                                PostJobBuildResponse::Status404_JobCannotBeFoundOnJenkinsInstance
                                                => {

                                                  let mut response = response.status(404);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}

    #[derive(validator::Validate)]
    #[allow(dead_code)]
    struct PostJobConfigBodyValidator<'a> {
            #[validate]
          body: &'a String,
    }


#[tracing::instrument(skip_all)]
fn post_job_config_validation(
  header_params: models::PostJobConfigHeaderParams,
  path_params: models::PostJobConfigPathParams,
        body: String,
) -> std::result::Result<(
  models::PostJobConfigHeaderParams,
  models::PostJobConfigPathParams,
        String,
), ValidationErrors>
{
  header_params.validate()?;
  path_params.validate()?;
              let b = PostJobConfigBodyValidator { body: &body };
              b.validate()?;

Ok((
  header_params,
  path_params,
    body,
))
}

/// PostJobConfig - POST /job/{name}/config.xml
#[tracing::instrument(skip_all)]
async fn post_job_config<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  headers: HeaderMap,
  Path(path_params): Path<models::PostJobConfigPathParams>,
 State(api_impl): State<I>,
          Json(body): Json<String>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{
    // Header parameters
    let header_params = {
                let header_jenkins_crumb = headers.get(HeaderName::from_static("jenkins-crumb"));

                let header_jenkins_crumb = match header_jenkins_crumb {
                    Some(v) => match header::IntoHeaderValue::<String>::try_from((*v).clone()) {
                        Ok(result) =>
                            Some(result.0),
                        Err(err) => {
                            return Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Invalid header Jenkins-Crumb - {}", err))).map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR });

                        },
                    },
                    None => {
                        None
                    }
                };

       models::PostJobConfigHeaderParams {
          jenkins_crumb: header_jenkins_crumb,
       }
  };


      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    post_job_config_validation(
        header_params,
        path_params,
          body,
    )
  ).await.unwrap();

  let Ok((
    header_params,
    path_params,
      body,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().post_job_config(
      method,
      host,
      cookies,
        header_params,
        path_params,
              body,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                PostJobConfigResponse::Status200_SuccessfullyRetrievedJobConfigurationInConfig
                                                => {

                                                  let mut response = response.status(200);
                                                  response.body(Body::empty())
                                                },
                                                PostJobConfigResponse::Status400_AnErrorHasOccurred
                                                    (body)
                                                => {

                                                  let mut response = response.status(400);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("*/*").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                PostJobConfigResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                PostJobConfigResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                                PostJobConfigResponse::Status404_JobCannotBeFoundOnJenkinsInstance
                                                => {

                                                  let mut response = response.status(404);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn post_job_delete_validation(
  header_params: models::PostJobDeleteHeaderParams,
  path_params: models::PostJobDeletePathParams,
) -> std::result::Result<(
  models::PostJobDeleteHeaderParams,
  models::PostJobDeletePathParams,
), ValidationErrors>
{
  header_params.validate()?;
  path_params.validate()?;

Ok((
  header_params,
  path_params,
))
}

/// PostJobDelete - POST /job/{name}/doDelete
#[tracing::instrument(skip_all)]
async fn post_job_delete<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  headers: HeaderMap,
  Path(path_params): Path<models::PostJobDeletePathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{
    // Header parameters
    let header_params = {
                let header_jenkins_crumb = headers.get(HeaderName::from_static("jenkins-crumb"));

                let header_jenkins_crumb = match header_jenkins_crumb {
                    Some(v) => match header::IntoHeaderValue::<String>::try_from((*v).clone()) {
                        Ok(result) =>
                            Some(result.0),
                        Err(err) => {
                            return Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Invalid header Jenkins-Crumb - {}", err))).map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR });

                        },
                    },
                    None => {
                        None
                    }
                };

       models::PostJobDeleteHeaderParams {
          jenkins_crumb: header_jenkins_crumb,
       }
  };


      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    post_job_delete_validation(
        header_params,
        path_params,
    )
  ).await.unwrap();

  let Ok((
    header_params,
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().post_job_delete(
      method,
      host,
      cookies,
        header_params,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                PostJobDeleteResponse::Status200_SuccessfullyDeletedTheJob
                                                => {

                                                  let mut response = response.status(200);
                                                  response.body(Body::empty())
                                                },
                                                PostJobDeleteResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                PostJobDeleteResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                                PostJobDeleteResponse::Status404_JobCannotBeFoundOnJenkinsInstance
                                                => {

                                                  let mut response = response.status(404);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn post_job_disable_validation(
  header_params: models::PostJobDisableHeaderParams,
  path_params: models::PostJobDisablePathParams,
) -> std::result::Result<(
  models::PostJobDisableHeaderParams,
  models::PostJobDisablePathParams,
), ValidationErrors>
{
  header_params.validate()?;
  path_params.validate()?;

Ok((
  header_params,
  path_params,
))
}

/// PostJobDisable - POST /job/{name}/disable
#[tracing::instrument(skip_all)]
async fn post_job_disable<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  headers: HeaderMap,
  Path(path_params): Path<models::PostJobDisablePathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{
    // Header parameters
    let header_params = {
                let header_jenkins_crumb = headers.get(HeaderName::from_static("jenkins-crumb"));

                let header_jenkins_crumb = match header_jenkins_crumb {
                    Some(v) => match header::IntoHeaderValue::<String>::try_from((*v).clone()) {
                        Ok(result) =>
                            Some(result.0),
                        Err(err) => {
                            return Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Invalid header Jenkins-Crumb - {}", err))).map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR });

                        },
                    },
                    None => {
                        None
                    }
                };

       models::PostJobDisableHeaderParams {
          jenkins_crumb: header_jenkins_crumb,
       }
  };


      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    post_job_disable_validation(
        header_params,
        path_params,
    )
  ).await.unwrap();

  let Ok((
    header_params,
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().post_job_disable(
      method,
      host,
      cookies,
        header_params,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                PostJobDisableResponse::Status200_SuccessfullyDisabledTheJob
                                                => {

                                                  let mut response = response.status(200);
                                                  response.body(Body::empty())
                                                },
                                                PostJobDisableResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                PostJobDisableResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                                PostJobDisableResponse::Status404_JobCannotBeFoundOnJenkinsInstance
                                                => {

                                                  let mut response = response.status(404);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn post_job_enable_validation(
  header_params: models::PostJobEnableHeaderParams,
  path_params: models::PostJobEnablePathParams,
) -> std::result::Result<(
  models::PostJobEnableHeaderParams,
  models::PostJobEnablePathParams,
), ValidationErrors>
{
  header_params.validate()?;
  path_params.validate()?;

Ok((
  header_params,
  path_params,
))
}

/// PostJobEnable - POST /job/{name}/enable
#[tracing::instrument(skip_all)]
async fn post_job_enable<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  headers: HeaderMap,
  Path(path_params): Path<models::PostJobEnablePathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{
    // Header parameters
    let header_params = {
                let header_jenkins_crumb = headers.get(HeaderName::from_static("jenkins-crumb"));

                let header_jenkins_crumb = match header_jenkins_crumb {
                    Some(v) => match header::IntoHeaderValue::<String>::try_from((*v).clone()) {
                        Ok(result) =>
                            Some(result.0),
                        Err(err) => {
                            return Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Invalid header Jenkins-Crumb - {}", err))).map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR });

                        },
                    },
                    None => {
                        None
                    }
                };

       models::PostJobEnableHeaderParams {
          jenkins_crumb: header_jenkins_crumb,
       }
  };


      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    post_job_enable_validation(
        header_params,
        path_params,
    )
  ).await.unwrap();

  let Ok((
    header_params,
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().post_job_enable(
      method,
      host,
      cookies,
        header_params,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                PostJobEnableResponse::Status200_SuccessfullyEnabledTheJob
                                                => {

                                                  let mut response = response.status(200);
                                                  response.body(Body::empty())
                                                },
                                                PostJobEnableResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                PostJobEnableResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                                PostJobEnableResponse::Status404_JobCannotBeFoundOnJenkinsInstance
                                                => {

                                                  let mut response = response.status(404);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}


#[tracing::instrument(skip_all)]
fn post_job_last_build_stop_validation(
  header_params: models::PostJobLastBuildStopHeaderParams,
  path_params: models::PostJobLastBuildStopPathParams,
) -> std::result::Result<(
  models::PostJobLastBuildStopHeaderParams,
  models::PostJobLastBuildStopPathParams,
), ValidationErrors>
{
  header_params.validate()?;
  path_params.validate()?;

Ok((
  header_params,
  path_params,
))
}

/// PostJobLastBuildStop - POST /job/{name}/lastBuild/stop
#[tracing::instrument(skip_all)]
async fn post_job_last_build_stop<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  headers: HeaderMap,
  Path(path_params): Path<models::PostJobLastBuildStopPathParams>,
 State(api_impl): State<I>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{
    // Header parameters
    let header_params = {
                let header_jenkins_crumb = headers.get(HeaderName::from_static("jenkins-crumb"));

                let header_jenkins_crumb = match header_jenkins_crumb {
                    Some(v) => match header::IntoHeaderValue::<String>::try_from((*v).clone()) {
                        Ok(result) =>
                            Some(result.0),
                        Err(err) => {
                            return Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Invalid header Jenkins-Crumb - {}", err))).map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR });

                        },
                    },
                    None => {
                        None
                    }
                };

       models::PostJobLastBuildStopHeaderParams {
          jenkins_crumb: header_jenkins_crumb,
       }
  };


      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    post_job_last_build_stop_validation(
        header_params,
        path_params,
    )
  ).await.unwrap();

  let Ok((
    header_params,
    path_params,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().post_job_last_build_stop(
      method,
      host,
      cookies,
        header_params,
        path_params,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                PostJobLastBuildStopResponse::Status200_SuccessfullyStoppedTheJob
                                                => {

                                                  let mut response = response.status(200);
                                                  response.body(Body::empty())
                                                },
                                                PostJobLastBuildStopResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                PostJobLastBuildStopResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                                PostJobLastBuildStopResponse::Status404_JobCannotBeFoundOnJenkinsInstance
                                                => {

                                                  let mut response = response.status(404);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}

    #[derive(validator::Validate)]
    #[allow(dead_code)]
    struct PostViewConfigBodyValidator<'a> {
            #[validate]
          body: &'a String,
    }


#[tracing::instrument(skip_all)]
fn post_view_config_validation(
  header_params: models::PostViewConfigHeaderParams,
  path_params: models::PostViewConfigPathParams,
        body: String,
) -> std::result::Result<(
  models::PostViewConfigHeaderParams,
  models::PostViewConfigPathParams,
        String,
), ValidationErrors>
{
  header_params.validate()?;
  path_params.validate()?;
              let b = PostViewConfigBodyValidator { body: &body };
              b.validate()?;

Ok((
  header_params,
  path_params,
    body,
))
}

/// PostViewConfig - POST /view/{name}/config.xml
#[tracing::instrument(skip_all)]
async fn post_view_config<I, A>(
  method: Method,
  host: Host,
  cookies: CookieJar,
  headers: HeaderMap,
  Path(path_params): Path<models::PostViewConfigPathParams>,
 State(api_impl): State<I>,
          Json(body): Json<String>,
) -> Result<Response, StatusCode>
where 
    I: AsRef<A> + Send + Sync,
    A: Api,
{
    // Header parameters
    let header_params = {
                let header_jenkins_crumb = headers.get(HeaderName::from_static("jenkins-crumb"));

                let header_jenkins_crumb = match header_jenkins_crumb {
                    Some(v) => match header::IntoHeaderValue::<String>::try_from((*v).clone()) {
                        Ok(result) =>
                            Some(result.0),
                        Err(err) => {
                            return Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Invalid header Jenkins-Crumb - {}", err))).map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR });

                        },
                    },
                    None => {
                        None
                    }
                };

       models::PostViewConfigHeaderParams {
          jenkins_crumb: header_jenkins_crumb,
       }
  };


      #[allow(clippy::redundant_closure)]
      let validation = tokio::task::spawn_blocking(move || 
    post_view_config_validation(
        header_params,
        path_params,
          body,
    )
  ).await.unwrap();

  let Ok((
    header_params,
    path_params,
      body,
  )) = validation else {
    return Response::builder()
            .status(StatusCode::BAD_REQUEST)
            .body(Body::from(validation.unwrap_err().to_string()))
            .map_err(|_| StatusCode::BAD_REQUEST); 
  };

  let result = api_impl.as_ref().post_view_config(
      method,
      host,
      cookies,
        header_params,
        path_params,
              body,
  ).await;

  let mut response = Response::builder();

  let resp = match result {
                                            Ok(rsp) => match rsp {
                                                PostViewConfigResponse::Status200_SuccessfullyUpdatedViewConfiguration
                                                => {

                                                  let mut response = response.status(200);
                                                  response.body(Body::empty())
                                                },
                                                PostViewConfigResponse::Status400_AnErrorHasOccurred
                                                    (body)
                                                => {

                                                  let mut response = response.status(400);
                                                  {
                                                    let mut response_headers = response.headers_mut().unwrap();
                                                    response_headers.insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("*/*").map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })?);
                                                  }

                                                  let body_content =  tokio::task::spawn_blocking(move ||
                                                      serde_json::to_vec(&body).map_err(|e| {
                                                        error!(error = ?e);
                                                        StatusCode::INTERNAL_SERVER_ERROR
                                                      })).await.unwrap()?;
                                                  response.body(Body::from(body_content))
                                                },
                                                PostViewConfigResponse::Status401_AuthenticationFailed
                                                => {

                                                  let mut response = response.status(401);
                                                  response.body(Body::empty())
                                                },
                                                PostViewConfigResponse::Status403_JenkinsRequiresAuthentication
                                                => {

                                                  let mut response = response.status(403);
                                                  response.body(Body::empty())
                                                },
                                                PostViewConfigResponse::Status404_ViewCannotBeFoundOnJenkinsInstance
                                                => {

                                                  let mut response = response.status(404);
                                                  response.body(Body::empty())
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.status(500).body(Body::empty())
                                            },
                                        };

                                        resp.map_err(|e| { error!(error = ?e); StatusCode::INTERNAL_SERVER_ERROR })
}

