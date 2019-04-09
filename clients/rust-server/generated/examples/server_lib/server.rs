//! Server implementation of swagger_client.

#![allow(unused_imports)]

use futures::{self, Future};
use chrono;
use std::collections::HashMap;
use std::marker::PhantomData;

use swagger;
use swagger::{Has, XSpanIdString};

use swagger_client::{Api, ApiError,
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
                      GetSCMResponse,
                      GetSCMOrganisationRepositoriesResponse,
                      GetSCMOrganisationRepositoryResponse,
                      GetSCMOrganisationsResponse,
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
                      GetCrumbResponse,
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
use swagger_client::models;

#[derive(Copy, Clone)]
pub struct Server<C> {
    marker: PhantomData<C>,
}

impl<C> Server<C> {
    pub fn new() -> Self {
        Server{marker: PhantomData}
    }
}

impl<C> Api<C> for Server<C> where C: Has<XSpanIdString>{


    fn get_crumb(&self, context: &C) -> Box<Future<Item=GetCrumbResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_crumb() - X-Span-ID: {:?}", context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn delete_pipeline_queue_item(&self, organization: String, pipeline: String, queue: String, context: &C) -> Box<Future<Item=DeletePipelineQueueItemResponse, Error=ApiError>> {
        let context = context.clone();
        println!("delete_pipeline_queue_item(\"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, queue, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_authenticated_user(&self, organization: String, context: &C) -> Box<Future<Item=GetAuthenticatedUserResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_authenticated_user(\"{}\") - X-Span-ID: {:?}", organization, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_classes(&self, class: String, context: &C) -> Box<Future<Item=GetClassesResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_classes(\"{}\") - X-Span-ID: {:?}", class, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_json_web_key(&self, key: i32, context: &C) -> Box<Future<Item=GetJsonWebKeyResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_json_web_key({}) - X-Span-ID: {:?}", key, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_json_web_token(&self, expiry_time_in_mins: Option<i32>, max_expiry_time_in_mins: Option<i32>, context: &C) -> Box<Future<Item=GetJsonWebTokenResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_json_web_token({:?}, {:?}) - X-Span-ID: {:?}", expiry_time_in_mins, max_expiry_time_in_mins, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_organisation(&self, organization: String, context: &C) -> Box<Future<Item=GetOrganisationResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_organisation(\"{}\") - X-Span-ID: {:?}", organization, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_organisations(&self, context: &C) -> Box<Future<Item=GetOrganisationsResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_organisations() - X-Span-ID: {:?}", context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_pipeline(&self, organization: String, pipeline: String, context: &C) -> Box<Future<Item=GetPipelineResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_pipeline(\"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_pipeline_activities(&self, organization: String, pipeline: String, context: &C) -> Box<Future<Item=GetPipelineActivitiesResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_pipeline_activities(\"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_pipeline_branch(&self, organization: String, pipeline: String, branch: String, context: &C) -> Box<Future<Item=GetPipelineBranchResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_pipeline_branch(\"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, branch, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_pipeline_branch_run(&self, organization: String, pipeline: String, branch: String, run: String, context: &C) -> Box<Future<Item=GetPipelineBranchRunResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_pipeline_branch_run(\"{}\", \"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, branch, run, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_pipeline_branches(&self, organization: String, pipeline: String, context: &C) -> Box<Future<Item=GetPipelineBranchesResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_pipeline_branches(\"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_pipeline_folder(&self, organization: String, folder: String, context: &C) -> Box<Future<Item=GetPipelineFolderResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_pipeline_folder(\"{}\", \"{}\") - X-Span-ID: {:?}", organization, folder, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_pipeline_folder_pipeline(&self, organization: String, pipeline: String, folder: String, context: &C) -> Box<Future<Item=GetPipelineFolderPipelineResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_pipeline_folder_pipeline(\"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, folder, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_pipeline_queue(&self, organization: String, pipeline: String, context: &C) -> Box<Future<Item=GetPipelineQueueResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_pipeline_queue(\"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_pipeline_run(&self, organization: String, pipeline: String, run: String, context: &C) -> Box<Future<Item=GetPipelineRunResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_pipeline_run(\"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, run, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_pipeline_run_log(&self, organization: String, pipeline: String, run: String, start: Option<i32>, download: Option<bool>, context: &C) -> Box<Future<Item=GetPipelineRunLogResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_pipeline_run_log(\"{}\", \"{}\", \"{}\", {:?}, {:?}) - X-Span-ID: {:?}", organization, pipeline, run, start, download, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_pipeline_run_node(&self, organization: String, pipeline: String, run: String, node: String, context: &C) -> Box<Future<Item=GetPipelineRunNodeResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_pipeline_run_node(\"{}\", \"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, run, node, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_pipeline_run_node_step(&self, organization: String, pipeline: String, run: String, node: String, step: String, context: &C) -> Box<Future<Item=GetPipelineRunNodeStepResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_pipeline_run_node_step(\"{}\", \"{}\", \"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, run, node, step, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_pipeline_run_node_step_log(&self, organization: String, pipeline: String, run: String, node: String, step: String, context: &C) -> Box<Future<Item=GetPipelineRunNodeStepLogResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_pipeline_run_node_step_log(\"{}\", \"{}\", \"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, run, node, step, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_pipeline_run_node_steps(&self, organization: String, pipeline: String, run: String, node: String, context: &C) -> Box<Future<Item=GetPipelineRunNodeStepsResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_pipeline_run_node_steps(\"{}\", \"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, run, node, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_pipeline_run_nodes(&self, organization: String, pipeline: String, run: String, context: &C) -> Box<Future<Item=GetPipelineRunNodesResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_pipeline_run_nodes(\"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, run, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_pipeline_runs(&self, organization: String, pipeline: String, context: &C) -> Box<Future<Item=GetPipelineRunsResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_pipeline_runs(\"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_pipelines(&self, organization: String, context: &C) -> Box<Future<Item=GetPipelinesResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_pipelines(\"{}\") - X-Span-ID: {:?}", organization, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_scm(&self, organization: String, scm: String, context: &C) -> Box<Future<Item=GetSCMResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_scm(\"{}\", \"{}\") - X-Span-ID: {:?}", organization, scm, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_scm_organisation_repositories(&self, organization: String, scm: String, scm_organisation: String, credential_id: Option<String>, page_size: Option<i32>, page_number: Option<i32>, context: &C) -> Box<Future<Item=GetSCMOrganisationRepositoriesResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_scm_organisation_repositories(\"{}\", \"{}\", \"{}\", {:?}, {:?}, {:?}) - X-Span-ID: {:?}", organization, scm, scm_organisation, credential_id, page_size, page_number, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_scm_organisation_repository(&self, organization: String, scm: String, scm_organisation: String, repository: String, credential_id: Option<String>, context: &C) -> Box<Future<Item=GetSCMOrganisationRepositoryResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_scm_organisation_repository(\"{}\", \"{}\", \"{}\", \"{}\", {:?}) - X-Span-ID: {:?}", organization, scm, scm_organisation, repository, credential_id, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_scm_organisations(&self, organization: String, scm: String, credential_id: Option<String>, context: &C) -> Box<Future<Item=GetSCMOrganisationsResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_scm_organisations(\"{}\", \"{}\", {:?}) - X-Span-ID: {:?}", organization, scm, credential_id, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_user(&self, organization: String, user: String, context: &C) -> Box<Future<Item=GetUserResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_user(\"{}\", \"{}\") - X-Span-ID: {:?}", organization, user, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_user_favorites(&self, user: String, context: &C) -> Box<Future<Item=GetUserFavoritesResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_user_favorites(\"{}\") - X-Span-ID: {:?}", user, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_users(&self, organization: String, context: &C) -> Box<Future<Item=GetUsersResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_users(\"{}\") - X-Span-ID: {:?}", organization, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn post_pipeline_run(&self, organization: String, pipeline: String, run: String, context: &C) -> Box<Future<Item=PostPipelineRunResponse, Error=ApiError>> {
        let context = context.clone();
        println!("post_pipeline_run(\"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, run, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn post_pipeline_runs(&self, organization: String, pipeline: String, context: &C) -> Box<Future<Item=PostPipelineRunsResponse, Error=ApiError>> {
        let context = context.clone();
        println!("post_pipeline_runs(\"{}\", \"{}\") - X-Span-ID: {:?}", organization, pipeline, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn put_pipeline_favorite(&self, organization: String, pipeline: String, body: models::Body, context: &C) -> Box<Future<Item=PutPipelineFavoriteResponse, Error=ApiError>> {
        let context = context.clone();
        println!("put_pipeline_favorite(\"{}\", \"{}\", {:?}) - X-Span-ID: {:?}", organization, pipeline, body, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn put_pipeline_run(&self, organization: String, pipeline: String, run: String, blocking: Option<String>, time_out_in_secs: Option<i32>, context: &C) -> Box<Future<Item=PutPipelineRunResponse, Error=ApiError>> {
        let context = context.clone();
        println!("put_pipeline_run(\"{}\", \"{}\", \"{}\", {:?}, {:?}) - X-Span-ID: {:?}", organization, pipeline, run, blocking, time_out_in_secs, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn search(&self, q: String, context: &C) -> Box<Future<Item=SearchResponse, Error=ApiError>> {
        let context = context.clone();
        println!("search(\"{}\") - X-Span-ID: {:?}", q, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn search_classes(&self, q: String, context: &C) -> Box<Future<Item=SearchClassesResponse, Error=ApiError>> {
        let context = context.clone();
        println!("search_classes(\"{}\") - X-Span-ID: {:?}", q, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_computer(&self, depth: i32, context: &C) -> Box<Future<Item=GetComputerResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_computer({}) - X-Span-ID: {:?}", depth, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_crumb(&self, context: &C) -> Box<Future<Item=GetCrumbResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_crumb() - X-Span-ID: {:?}", context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_jenkins(&self, context: &C) -> Box<Future<Item=GetJenkinsResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_jenkins() - X-Span-ID: {:?}", context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_job(&self, name: String, context: &C) -> Box<Future<Item=GetJobResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_job(\"{}\") - X-Span-ID: {:?}", name, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_job_config(&self, name: String, context: &C) -> Box<Future<Item=GetJobConfigResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_job_config(\"{}\") - X-Span-ID: {:?}", name, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_job_last_build(&self, name: String, context: &C) -> Box<Future<Item=GetJobLastBuildResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_job_last_build(\"{}\") - X-Span-ID: {:?}", name, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_job_progressive_text(&self, name: String, number: String, start: String, context: &C) -> Box<Future<Item=GetJobProgressiveTextResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_job_progressive_text(\"{}\", \"{}\", \"{}\") - X-Span-ID: {:?}", name, number, start, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_queue(&self, context: &C) -> Box<Future<Item=GetQueueResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_queue() - X-Span-ID: {:?}", context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_queue_item(&self, number: String, context: &C) -> Box<Future<Item=GetQueueItemResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_queue_item(\"{}\") - X-Span-ID: {:?}", number, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_view(&self, name: String, context: &C) -> Box<Future<Item=GetViewResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_view(\"{}\") - X-Span-ID: {:?}", name, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn get_view_config(&self, name: String, context: &C) -> Box<Future<Item=GetViewConfigResponse, Error=ApiError>> {
        let context = context.clone();
        println!("get_view_config(\"{}\") - X-Span-ID: {:?}", name, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn head_jenkins(&self, context: &C) -> Box<Future<Item=HeadJenkinsResponse, Error=ApiError>> {
        let context = context.clone();
        println!("head_jenkins() - X-Span-ID: {:?}", context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn post_create_item(&self, name: String, from: Option<String>, mode: Option<String>, jenkins_crumb: Option<String>, content_type: Option<String>, body: Option<String>, context: &C) -> Box<Future<Item=PostCreateItemResponse, Error=ApiError>> {
        let context = context.clone();
        println!("post_create_item(\"{}\", {:?}, {:?}, {:?}, {:?}, {:?}) - X-Span-ID: {:?}", name, from, mode, jenkins_crumb, content_type, body, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn post_create_view(&self, name: String, jenkins_crumb: Option<String>, content_type: Option<String>, body: Option<String>, context: &C) -> Box<Future<Item=PostCreateViewResponse, Error=ApiError>> {
        let context = context.clone();
        println!("post_create_view(\"{}\", {:?}, {:?}, {:?}) - X-Span-ID: {:?}", name, jenkins_crumb, content_type, body, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn post_job_build(&self, name: String, json: String, token: Option<String>, jenkins_crumb: Option<String>, context: &C) -> Box<Future<Item=PostJobBuildResponse, Error=ApiError>> {
        let context = context.clone();
        println!("post_job_build(\"{}\", \"{}\", {:?}, {:?}) - X-Span-ID: {:?}", name, json, token, jenkins_crumb, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn post_job_config(&self, name: String, body: String, jenkins_crumb: Option<String>, context: &C) -> Box<Future<Item=PostJobConfigResponse, Error=ApiError>> {
        let context = context.clone();
        println!("post_job_config(\"{}\", \"{}\", {:?}) - X-Span-ID: {:?}", name, body, jenkins_crumb, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn post_job_delete(&self, name: String, jenkins_crumb: Option<String>, context: &C) -> Box<Future<Item=PostJobDeleteResponse, Error=ApiError>> {
        let context = context.clone();
        println!("post_job_delete(\"{}\", {:?}) - X-Span-ID: {:?}", name, jenkins_crumb, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn post_job_disable(&self, name: String, jenkins_crumb: Option<String>, context: &C) -> Box<Future<Item=PostJobDisableResponse, Error=ApiError>> {
        let context = context.clone();
        println!("post_job_disable(\"{}\", {:?}) - X-Span-ID: {:?}", name, jenkins_crumb, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn post_job_enable(&self, name: String, jenkins_crumb: Option<String>, context: &C) -> Box<Future<Item=PostJobEnableResponse, Error=ApiError>> {
        let context = context.clone();
        println!("post_job_enable(\"{}\", {:?}) - X-Span-ID: {:?}", name, jenkins_crumb, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn post_job_last_build_stop(&self, name: String, jenkins_crumb: Option<String>, context: &C) -> Box<Future<Item=PostJobLastBuildStopResponse, Error=ApiError>> {
        let context = context.clone();
        println!("post_job_last_build_stop(\"{}\", {:?}) - X-Span-ID: {:?}", name, jenkins_crumb, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }


    fn post_view_config(&self, name: String, body: String, jenkins_crumb: Option<String>, context: &C) -> Box<Future<Item=PostViewConfigResponse, Error=ApiError>> {
        let context = context.clone();
        println!("post_view_config(\"{}\", \"{}\", {:?}) - X-Span-ID: {:?}", name, body, jenkins_crumb, context.get().0.clone());
        Box::new(futures::failed("Generic failure".into()))
    }

}
