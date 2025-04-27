//! Main library entry point for openapi_client implementation.

#![allow(unused_imports)]

use async_trait::async_trait;
use futures::{future, Stream, StreamExt, TryFutureExt, TryStreamExt};
use hyper::server::conn::Http;
use hyper::service::Service;
use log::info;
use std::future::Future;
use std::marker::PhantomData;
use std::net::SocketAddr;
use std::sync::{Arc, Mutex};
use std::task::{Context, Poll};
use swagger::{Has, XSpanIdString};
use swagger::auth::MakeAllowAllAuthenticator;
use swagger::EmptyContext;
use tokio::net::TcpListener;

#[cfg(not(any(target_os = "macos", target_os = "windows", target_os = "ios")))]
use openssl::ssl::{Ssl, SslAcceptor, SslAcceptorBuilder, SslFiletype, SslMethod};

use openapi_client::models;

/// Builds an SSL implementation for Simple HTTPS from some hard-coded file names
pub async fn create(addr: &str, https: bool) {
    let addr = addr.parse().expect("Failed to parse bind address");

    let server = Server::new();

    let service = MakeService::new(server);

    let service = MakeAllowAllAuthenticator::new(service, "cosmo");

    #[allow(unused_mut)]
    let mut service =
        openapi_client::server::context::MakeAddContext::<_, EmptyContext>::new(
            service
        );

    if https {
        #[cfg(any(target_os = "macos", target_os = "windows", target_os = "ios"))]
        {
            unimplemented!("SSL is not implemented for the examples on MacOS, Windows or iOS");
        }

        #[cfg(not(any(target_os = "macos", target_os = "windows", target_os = "ios")))]
        {
            let mut ssl = SslAcceptor::mozilla_intermediate_v5(SslMethod::tls()).expect("Failed to create SSL Acceptor");

            // Server authentication
            ssl.set_private_key_file("examples/server-key.pem", SslFiletype::PEM).expect("Failed to set private key");
            ssl.set_certificate_chain_file("examples/server-chain.pem").expect("Failed to set certificate chain");
            ssl.check_private_key().expect("Failed to check private key");

            let tls_acceptor = ssl.build();
            let tcp_listener = TcpListener::bind(&addr).await.unwrap();

            info!("Starting a server (with https)");
            loop {
                if let Ok((tcp, _)) = tcp_listener.accept().await {
                    let ssl = Ssl::new(tls_acceptor.context()).unwrap();
                    let addr = tcp.peer_addr().expect("Unable to get remote address");
                    let service = service.call(addr);

                    tokio::spawn(async move {
                        let tls = tokio_openssl::SslStream::new(ssl, tcp).map_err(|_| ())?;
                        let service = service.await.map_err(|_| ())?;

                        Http::new()
                            .serve_connection(tls, service)
                            .await
                            .map_err(|_| ())
                    });
                }
            }
        }
    } else {
        info!("Starting a server (over http, so no TLS)");
        // Using HTTP
        hyper::server::Server::bind(&addr).serve(service).await.unwrap()
    }
}

#[derive(Copy, Clone)]
pub struct Server<C> {
    marker: PhantomData<C>,
}

impl<C> Server<C> {
    pub fn new() -> Self {
        Server{marker: PhantomData}
    }
}


use jsonwebtoken::{decode, encode, errors::Error as JwtError, Algorithm, DecodingKey, EncodingKey, Header, TokenData, Validation};
use serde::{Deserialize, Serialize};
use swagger::auth::Authorization;
use crate::server_auth;


use openapi_client::{
    Api,
    GetCrumbResponse,
    GetJsonWebTokenResponse,
    GetOrganisationsResponse,
    SearchResponse,
    SearchClassesResponse,
    GetAuthenticatedUserResponse,
    GetClassesResponse,
    GetJsonWebKeyResponse,
    GetOrganisationResponse,
    GetPipelinesResponse,
    GetUserFavoritesResponse,
    GetUsersResponse,
    GetPipelineResponse,
    GetPipelineActivitiesResponse,
    GetPipelineBranchesResponse,
    GetPipelineFolderResponse,
    GetPipelineQueueResponse,
    GetPipelineRunsResponse,
    GetScmResponse,
    GetScmOrganisationsResponse,
    GetUserResponse,
    PostPipelineRunsResponse,
    PutPipelineFavoriteResponse,
    DeletePipelineQueueItemResponse,
    GetPipelineBranchResponse,
    GetPipelineFolderPipelineResponse,
    GetPipelineRunResponse,
    GetPipelineRunLogResponse,
    GetPipelineRunNodesResponse,
    GetScmOrganisationRepositoriesResponse,
    PostPipelineRunResponse,
    PutPipelineRunResponse,
    GetPipelineBranchRunResponse,
    GetPipelineRunNodeResponse,
    GetPipelineRunNodeStepsResponse,
    GetScmOrganisationRepositoryResponse,
    GetPipelineRunNodeStepResponse,
    GetPipelineRunNodeStepLogResponse,
    GetComputerResponse,
    GetJenkinsResponse,
    GetQueueResponse,
    HeadJenkinsResponse,
    PostCreateItemResponse,
    PostCreateViewResponse,
    GetJobResponse,
    GetJobConfigResponse,
    GetJobLastBuildResponse,
    GetQueueItemResponse,
    GetViewResponse,
    GetViewConfigResponse,
    PostJobBuildResponse,
    PostJobConfigResponse,
    PostJobDeleteResponse,
    PostJobDisableResponse,
    PostJobEnableResponse,
    PostJobLastBuildStopResponse,
    PostViewConfigResponse,
    GetJobProgressiveTextResponse,
};
use openapi_client::server::MakeService;
use std::error::Error;
use swagger::ApiError;

#[async_trait]
impl<C> Api<C> for Server<C> where C: Has<XSpanIdString> + Send + Sync
{
    async fn get_crumb(
        &self,
        context: &C) -> Result<GetCrumbResponse, ApiError>
    {
        info!("get_crumb() - X-Span-ID: {:?}", context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_json_web_token(
        &self,
        expiry_time_in_mins: Option<i32>,
        max_expiry_time_in_mins: Option<i32>,
        context: &C) -> Result<GetJsonWebTokenResponse, ApiError>
    {
        info!("get_json_web_token({:?}, {:?}) - X-Span-ID: {:?}", expiry_time_in_mins, max_expiry_time_in_mins, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_organisations(
        &self,
        context: &C) -> Result<GetOrganisationsResponse, ApiError>
    {
        info!("get_organisations() - X-Span-ID: {:?}", context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn search(
        &self,
        q: String,
        context: &C) -> Result<SearchResponse, ApiError>
    {
        info!("search(\"{}\") - X-Span-ID: {:?}", q, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn search_classes(
        &self,
        q: String,
        context: &C) -> Result<SearchClassesResponse, ApiError>
    {
        info!("search_classes(\"{}\") - X-Span-ID: {:?}", q, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_authenticated_user(
        &self,
        organization: String,
        context: &C) -> Result<GetAuthenticatedUserResponse, ApiError>
    {
        info!("get_authenticated_user(\"{}\") - X-Span-ID: {:?}", organization, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_classes(
        &self,
        class: String,
        context: &C) -> Result<GetClassesResponse, ApiError>
    {
        info!("get_classes(\"{}\") - X-Span-ID: {:?}", class, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_json_web_key(
        &self,
        key: i32,
        context: &C) -> Result<GetJsonWebKeyResponse, ApiError>
    {
        info!("get_json_web_key({}) - X-Span-ID: {:?}", key, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_organisation(
        &self,
        organization: String,
        context: &C) -> Result<GetOrganisationResponse, ApiError>
    {
        info!("get_organisation(\"{}\") - X-Span-ID: {:?}", organization, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_pipelines(
        &self,
        organization: String,
        context: &C) -> Result<GetPipelinesResponse, ApiError>
    {
        info!("get_pipelines(\"{}\") - X-Span-ID: {:?}", organization, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_user_favorites(
        &self,
        user: String,
        context: &C) -> Result<GetUserFavoritesResponse, ApiError>
    {
        info!("get_user_favorites(\"{}\") - X-Span-ID: {:?}", user, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_users(
        &self,
        organization: String,
        context: &C) -> Result<GetUsersResponse, ApiError>
    {
        info!("get_users(\"{}\") - X-Span-ID: {:?}", organization, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_pipeline(
        &self,
        organization: String,
        pipeline: String,
        context: &C) -> Result<GetPipelineResponse, ApiError>
    {
        info!("get_pipeline(\"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_pipeline_activities(
        &self,
        organization: String,
        pipeline: String,
        context: &C) -> Result<GetPipelineActivitiesResponse, ApiError>
    {
        info!("get_pipeline_activities(\"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_pipeline_branches(
        &self,
        organization: String,
        pipeline: String,
        context: &C) -> Result<GetPipelineBranchesResponse, ApiError>
    {
        info!("get_pipeline_branches(\"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_pipeline_folder(
        &self,
        organization: String,
        folder: String,
        context: &C) -> Result<GetPipelineFolderResponse, ApiError>
    {
        info!("get_pipeline_folder(\"{}\", \"{}\") - X-Span-ID: {:?}", organization, folder, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_pipeline_queue(
        &self,
        organization: String,
        pipeline: String,
        context: &C) -> Result<GetPipelineQueueResponse, ApiError>
    {
        info!("get_pipeline_queue(\"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_pipeline_runs(
        &self,
        organization: String,
        pipeline: String,
        context: &C) -> Result<GetPipelineRunsResponse, ApiError>
    {
        info!("get_pipeline_runs(\"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_scm(
        &self,
        organization: String,
        scm: String,
        context: &C) -> Result<GetScmResponse, ApiError>
    {
        info!("get_scm(\"{}\", \"{}\") - X-Span-ID: {:?}", organization, scm, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_scm_organisations(
        &self,
        organization: String,
        scm: String,
        credential_id: Option<String>,
        context: &C) -> Result<GetScmOrganisationsResponse, ApiError>
    {
        info!("get_scm_organisations(\"{}\", \"{}\", {:?}) - X-Span-ID: {:?}", organization, scm, credential_id, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_user(
        &self,
        organization: String,
        user: String,
        context: &C) -> Result<GetUserResponse, ApiError>
    {
        info!("get_user(\"{}\", \"{}\") - X-Span-ID: {:?}", organization, user, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn post_pipeline_runs(
        &self,
        organization: String,
        pipeline: String,
        context: &C) -> Result<PostPipelineRunsResponse, ApiError>
    {
        info!("post_pipeline_runs(\"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn put_pipeline_favorite(
        &self,
        organization: String,
        pipeline: String,
        body: bool,
        context: &C) -> Result<PutPipelineFavoriteResponse, ApiError>
    {
        info!("put_pipeline_favorite(\"{}\", \"{}\", {}) - X-Span-ID: {:?}", organization, pipeline, body, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn delete_pipeline_queue_item(
        &self,
        organization: String,
        pipeline: String,
        queue: String,
        context: &C) -> Result<DeletePipelineQueueItemResponse, ApiError>
    {
        info!("delete_pipeline_queue_item(\"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, queue, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_pipeline_branch(
        &self,
        organization: String,
        pipeline: String,
        branch: String,
        context: &C) -> Result<GetPipelineBranchResponse, ApiError>
    {
        info!("get_pipeline_branch(\"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, branch, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_pipeline_folder_pipeline(
        &self,
        organization: String,
        pipeline: String,
        folder: String,
        context: &C) -> Result<GetPipelineFolderPipelineResponse, ApiError>
    {
        info!("get_pipeline_folder_pipeline(\"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, folder, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_pipeline_run(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        context: &C) -> Result<GetPipelineRunResponse, ApiError>
    {
        info!("get_pipeline_run(\"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, run, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_pipeline_run_log(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        start: Option<i32>,
        download: Option<bool>,
        context: &C) -> Result<GetPipelineRunLogResponse, ApiError>
    {
        info!("get_pipeline_run_log(\"{}\", \"{}\", \"{}\", {:?}, {:?}) - X-Span-ID: {:?}", organization, pipeline, run, start, download, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_pipeline_run_nodes(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        context: &C) -> Result<GetPipelineRunNodesResponse, ApiError>
    {
        info!("get_pipeline_run_nodes(\"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, run, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_scm_organisation_repositories(
        &self,
        organization: String,
        scm: String,
        scm_organisation: String,
        credential_id: Option<String>,
        page_size: Option<i32>,
        page_number: Option<i32>,
        context: &C) -> Result<GetScmOrganisationRepositoriesResponse, ApiError>
    {
        info!("get_scm_organisation_repositories(\"{}\", \"{}\", \"{}\", {:?}, {:?}, {:?}) - X-Span-ID: {:?}", organization, scm, scm_organisation, credential_id, page_size, page_number, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn post_pipeline_run(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        context: &C) -> Result<PostPipelineRunResponse, ApiError>
    {
        info!("post_pipeline_run(\"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, run, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn put_pipeline_run(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        blocking: Option<String>,
        time_out_in_secs: Option<i32>,
        context: &C) -> Result<PutPipelineRunResponse, ApiError>
    {
        info!("put_pipeline_run(\"{}\", \"{}\", \"{}\", {:?}, {:?}) - X-Span-ID: {:?}", organization, pipeline, run, blocking, time_out_in_secs, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_pipeline_branch_run(
        &self,
        organization: String,
        pipeline: String,
        branch: String,
        run: String,
        context: &C) -> Result<GetPipelineBranchRunResponse, ApiError>
    {
        info!("get_pipeline_branch_run(\"{}\", \"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, branch, run, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_pipeline_run_node(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        node: String,
        context: &C) -> Result<GetPipelineRunNodeResponse, ApiError>
    {
        info!("get_pipeline_run_node(\"{}\", \"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, run, node, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_pipeline_run_node_steps(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        node: String,
        context: &C) -> Result<GetPipelineRunNodeStepsResponse, ApiError>
    {
        info!("get_pipeline_run_node_steps(\"{}\", \"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, run, node, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_scm_organisation_repository(
        &self,
        organization: String,
        scm: String,
        scm_organisation: String,
        repository: String,
        credential_id: Option<String>,
        context: &C) -> Result<GetScmOrganisationRepositoryResponse, ApiError>
    {
        info!("get_scm_organisation_repository(\"{}\", \"{}\", \"{}\", \"{}\", {:?}) - X-Span-ID: {:?}", organization, scm, scm_organisation, repository, credential_id, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_pipeline_run_node_step(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        node: String,
        step: String,
        context: &C) -> Result<GetPipelineRunNodeStepResponse, ApiError>
    {
        info!("get_pipeline_run_node_step(\"{}\", \"{}\", \"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, run, node, step, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_pipeline_run_node_step_log(
        &self,
        organization: String,
        pipeline: String,
        run: String,
        node: String,
        step: String,
        context: &C) -> Result<GetPipelineRunNodeStepLogResponse, ApiError>
    {
        info!("get_pipeline_run_node_step_log(\"{}\", \"{}\", \"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, run, node, step, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_computer(
        &self,
        depth: i32,
        context: &C) -> Result<GetComputerResponse, ApiError>
    {
        info!("get_computer({}) - X-Span-ID: {:?}", depth, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_jenkins(
        &self,
        context: &C) -> Result<GetJenkinsResponse, ApiError>
    {
        info!("get_jenkins() - X-Span-ID: {:?}", context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_queue(
        &self,
        context: &C) -> Result<GetQueueResponse, ApiError>
    {
        info!("get_queue() - X-Span-ID: {:?}", context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn head_jenkins(
        &self,
        context: &C) -> Result<HeadJenkinsResponse, ApiError>
    {
        info!("head_jenkins() - X-Span-ID: {:?}", context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn post_create_item(
        &self,
        name: String,
        from: Option<String>,
        mode: Option<String>,
        jenkins_crumb: Option<String>,
        content_type: Option<String>,
        body: Option<String>,
        context: &C) -> Result<PostCreateItemResponse, ApiError>
    {
        info!("post_create_item(\"{}\", {:?}, {:?}, {:?}, {:?}, {:?}) - X-Span-ID: {:?}", name, from, mode, jenkins_crumb, content_type, body, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn post_create_view(
        &self,
        name: String,
        jenkins_crumb: Option<String>,
        content_type: Option<String>,
        body: Option<String>,
        context: &C) -> Result<PostCreateViewResponse, ApiError>
    {
        info!("post_create_view(\"{}\", {:?}, {:?}, {:?}) - X-Span-ID: {:?}", name, jenkins_crumb, content_type, body, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_job(
        &self,
        name: String,
        context: &C) -> Result<GetJobResponse, ApiError>
    {
        info!("get_job(\"{}\") - X-Span-ID: {:?}", name, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_job_config(
        &self,
        name: String,
        context: &C) -> Result<GetJobConfigResponse, ApiError>
    {
        info!("get_job_config(\"{}\") - X-Span-ID: {:?}", name, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_job_last_build(
        &self,
        name: String,
        context: &C) -> Result<GetJobLastBuildResponse, ApiError>
    {
        info!("get_job_last_build(\"{}\") - X-Span-ID: {:?}", name, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_queue_item(
        &self,
        number: String,
        context: &C) -> Result<GetQueueItemResponse, ApiError>
    {
        info!("get_queue_item(\"{}\") - X-Span-ID: {:?}", number, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_view(
        &self,
        name: String,
        context: &C) -> Result<GetViewResponse, ApiError>
    {
        info!("get_view(\"{}\") - X-Span-ID: {:?}", name, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_view_config(
        &self,
        name: String,
        context: &C) -> Result<GetViewConfigResponse, ApiError>
    {
        info!("get_view_config(\"{}\") - X-Span-ID: {:?}", name, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn post_job_build(
        &self,
        name: String,
        json: String,
        token: Option<String>,
        jenkins_crumb: Option<String>,
        context: &C) -> Result<PostJobBuildResponse, ApiError>
    {
        info!("post_job_build(\"{}\", \"{}\", {:?}, {:?}) - X-Span-ID: {:?}", name, json, token, jenkins_crumb, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn post_job_config(
        &self,
        name: String,
        body: String,
        jenkins_crumb: Option<String>,
        context: &C) -> Result<PostJobConfigResponse, ApiError>
    {
        info!("post_job_config(\"{}\", \"{}\", {:?}) - X-Span-ID: {:?}", name, body, jenkins_crumb, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn post_job_delete(
        &self,
        name: String,
        jenkins_crumb: Option<String>,
        context: &C) -> Result<PostJobDeleteResponse, ApiError>
    {
        info!("post_job_delete(\"{}\", {:?}) - X-Span-ID: {:?}", name, jenkins_crumb, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn post_job_disable(
        &self,
        name: String,
        jenkins_crumb: Option<String>,
        context: &C) -> Result<PostJobDisableResponse, ApiError>
    {
        info!("post_job_disable(\"{}\", {:?}) - X-Span-ID: {:?}", name, jenkins_crumb, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn post_job_enable(
        &self,
        name: String,
        jenkins_crumb: Option<String>,
        context: &C) -> Result<PostJobEnableResponse, ApiError>
    {
        info!("post_job_enable(\"{}\", {:?}) - X-Span-ID: {:?}", name, jenkins_crumb, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn post_job_last_build_stop(
        &self,
        name: String,
        jenkins_crumb: Option<String>,
        context: &C) -> Result<PostJobLastBuildStopResponse, ApiError>
    {
        info!("post_job_last_build_stop(\"{}\", {:?}) - X-Span-ID: {:?}", name, jenkins_crumb, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn post_view_config(
        &self,
        name: String,
        body: String,
        jenkins_crumb: Option<String>,
        context: &C) -> Result<PostViewConfigResponse, ApiError>
    {
        info!("post_view_config(\"{}\", \"{}\", {:?}) - X-Span-ID: {:?}", name, body, jenkins_crumb, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

    async fn get_job_progressive_text(
        &self,
        name: String,
        number: String,
        start: String,
        context: &C) -> Result<GetJobProgressiveTextResponse, ApiError>
    {
        info!("get_job_progressive_text(\"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", name, number, start, context.get().0.clone());
        Err(ApiError("Api-Error: Operation is NOT implemented".into()))
    }

}
