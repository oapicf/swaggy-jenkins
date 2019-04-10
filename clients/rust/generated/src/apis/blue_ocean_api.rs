/* 
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 * Generated by: https://openapi-generator.tech
 */

use std::rc::Rc;
use std::borrow::Borrow;

use hyper;
use serde_json;
use futures::Future;

use super::{Error, configuration};
use super::request as __internal_request;

pub struct BlueOceanApiClient<C: hyper::client::Connect> {
    configuration: Rc<configuration::Configuration<C>>,
}

impl<C: hyper::client::Connect> BlueOceanApiClient<C> {
    pub fn new(configuration: Rc<configuration::Configuration<C>>) -> BlueOceanApiClient<C> {
        BlueOceanApiClient {
            configuration: configuration,
        }
    }
}

pub trait BlueOceanApi {
    fn delete_pipeline_queue_item(&self, organization: &str, pipeline: &str, queue: &str) -> Box<Future<Item = (), Error = Error<serde_json::Value>>>;
    fn get_authenticated_user(&self, organization: &str) -> Box<Future<Item = ::models::User, Error = Error<serde_json::Value>>>;
    fn get_classes(&self, class: &str) -> Box<Future<Item = String, Error = Error<serde_json::Value>>>;
    fn get_json_web_key(&self, key: i32) -> Box<Future<Item = String, Error = Error<serde_json::Value>>>;
    fn get_json_web_token(&self, expiry_time_in_mins: i32, max_expiry_time_in_mins: i32) -> Box<Future<Item = String, Error = Error<serde_json::Value>>>;
    fn get_organisation(&self, organization: &str) -> Box<Future<Item = ::models::Organisation, Error = Error<serde_json::Value>>>;
    fn get_organisations(&self, ) -> Box<Future<Item = ::models::Organisations, Error = Error<serde_json::Value>>>;
    fn get_pipeline(&self, organization: &str, pipeline: &str) -> Box<Future<Item = ::models::Pipeline, Error = Error<serde_json::Value>>>;
    fn get_pipeline_activities(&self, organization: &str, pipeline: &str) -> Box<Future<Item = ::models::PipelineActivities, Error = Error<serde_json::Value>>>;
    fn get_pipeline_branch(&self, organization: &str, pipeline: &str, branch: &str) -> Box<Future<Item = ::models::BranchImpl, Error = Error<serde_json::Value>>>;
    fn get_pipeline_branch_run(&self, organization: &str, pipeline: &str, branch: &str, run: &str) -> Box<Future<Item = ::models::PipelineRun, Error = Error<serde_json::Value>>>;
    fn get_pipeline_branches(&self, organization: &str, pipeline: &str) -> Box<Future<Item = ::models::MultibranchPipeline, Error = Error<serde_json::Value>>>;
    fn get_pipeline_folder(&self, organization: &str, folder: &str) -> Box<Future<Item = ::models::PipelineFolderImpl, Error = Error<serde_json::Value>>>;
    fn get_pipeline_folder_pipeline(&self, organization: &str, pipeline: &str, folder: &str) -> Box<Future<Item = ::models::PipelineImpl, Error = Error<serde_json::Value>>>;
    fn get_pipeline_queue(&self, organization: &str, pipeline: &str) -> Box<Future<Item = ::models::PipelineQueue, Error = Error<serde_json::Value>>>;
    fn get_pipeline_run(&self, organization: &str, pipeline: &str, run: &str) -> Box<Future<Item = ::models::PipelineRun, Error = Error<serde_json::Value>>>;
    fn get_pipeline_run_log(&self, organization: &str, pipeline: &str, run: &str, start: i32, download: bool) -> Box<Future<Item = String, Error = Error<serde_json::Value>>>;
    fn get_pipeline_run_node(&self, organization: &str, pipeline: &str, run: &str, node: &str) -> Box<Future<Item = ::models::PipelineRunNode, Error = Error<serde_json::Value>>>;
    fn get_pipeline_run_node_step(&self, organization: &str, pipeline: &str, run: &str, node: &str, step: &str) -> Box<Future<Item = ::models::PipelineStepImpl, Error = Error<serde_json::Value>>>;
    fn get_pipeline_run_node_step_log(&self, organization: &str, pipeline: &str, run: &str, node: &str, step: &str) -> Box<Future<Item = String, Error = Error<serde_json::Value>>>;
    fn get_pipeline_run_node_steps(&self, organization: &str, pipeline: &str, run: &str, node: &str) -> Box<Future<Item = ::models::PipelineRunNodeSteps, Error = Error<serde_json::Value>>>;
    fn get_pipeline_run_nodes(&self, organization: &str, pipeline: &str, run: &str) -> Box<Future<Item = ::models::PipelineRunNodes, Error = Error<serde_json::Value>>>;
    fn get_pipeline_runs(&self, organization: &str, pipeline: &str) -> Box<Future<Item = ::models::PipelineRuns, Error = Error<serde_json::Value>>>;
    fn get_pipelines(&self, organization: &str) -> Box<Future<Item = ::models::Pipelines, Error = Error<serde_json::Value>>>;
    fn get_scm(&self, organization: &str, scm: &str) -> Box<Future<Item = ::models::GithubScm, Error = Error<serde_json::Value>>>;
    fn get_scm_organisation_repositories(&self, organization: &str, scm: &str, scm_organisation: &str, credential_id: &str, page_size: i32, page_number: i32) -> Box<Future<Item = ::models::ScmOrganisations, Error = Error<serde_json::Value>>>;
    fn get_scm_organisation_repository(&self, organization: &str, scm: &str, scm_organisation: &str, repository: &str, credential_id: &str) -> Box<Future<Item = ::models::ScmOrganisations, Error = Error<serde_json::Value>>>;
    fn get_scm_organisations(&self, organization: &str, scm: &str, credential_id: &str) -> Box<Future<Item = ::models::ScmOrganisations, Error = Error<serde_json::Value>>>;
    fn get_user(&self, organization: &str, user: &str) -> Box<Future<Item = ::models::User, Error = Error<serde_json::Value>>>;
    fn get_user_favorites(&self, user: &str) -> Box<Future<Item = ::models::UserFavorites, Error = Error<serde_json::Value>>>;
    fn get_users(&self, organization: &str) -> Box<Future<Item = ::models::User, Error = Error<serde_json::Value>>>;
    fn post_pipeline_run(&self, organization: &str, pipeline: &str, run: &str) -> Box<Future<Item = ::models::QueueItemImpl, Error = Error<serde_json::Value>>>;
    fn post_pipeline_runs(&self, organization: &str, pipeline: &str) -> Box<Future<Item = ::models::QueueItemImpl, Error = Error<serde_json::Value>>>;
    fn put_pipeline_favorite(&self, organization: &str, pipeline: &str, body: ::models::Body) -> Box<Future<Item = ::models::FavoriteImpl, Error = Error<serde_json::Value>>>;
    fn put_pipeline_run(&self, organization: &str, pipeline: &str, run: &str, blocking: &str, time_out_in_secs: i32) -> Box<Future<Item = ::models::PipelineRun, Error = Error<serde_json::Value>>>;
    fn search(&self, q: &str) -> Box<Future<Item = String, Error = Error<serde_json::Value>>>;
    fn search_classes(&self, q: &str) -> Box<Future<Item = String, Error = Error<serde_json::Value>>>;
}


impl<C: hyper::client::Connect>BlueOceanApi for BlueOceanApiClient<C> {
    fn delete_pipeline_queue_item(&self, organization: &str, pipeline: &str, queue: &str) -> Box<Future<Item = (), Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Delete, "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("pipeline".to_string(), pipeline.to_string())
            .with_path_param("queue".to_string(), queue.to_string())
            .returns_nothing()
            .execute(self.configuration.borrow())
    }

    fn get_authenticated_user(&self, organization: &str) -> Box<Future<Item = ::models::User, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/user/".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_classes(&self, class: &str) -> Box<Future<Item = String, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/classes/{class}".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("class".to_string(), class.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_json_web_key(&self, key: i32) -> Box<Future<Item = String, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/jwt-auth/jwks/{key}".to_string())
            .with_path_param("key".to_string(), key.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_json_web_token(&self, expiry_time_in_mins: i32, max_expiry_time_in_mins: i32) -> Box<Future<Item = String, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/jwt-auth/token".to_string())
            .with_query_param("expiryTimeInMins".to_string(), expiry_time_in_mins.to_string())
            .with_query_param("maxExpiryTimeInMins".to_string(), max_expiry_time_in_mins.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_organisation(&self, organization: &str) -> Box<Future<Item = ::models::Organisation, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_organisations(&self, ) -> Box<Future<Item = ::models::Organisations, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .execute(self.configuration.borrow())
    }

    fn get_pipeline(&self, organization: &str, pipeline: &str) -> Box<Future<Item = ::models::Pipeline, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/pipelines/{pipeline}".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("pipeline".to_string(), pipeline.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_pipeline_activities(&self, organization: &str, pipeline: &str) -> Box<Future<Item = ::models::PipelineActivities, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("pipeline".to_string(), pipeline.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_pipeline_branch(&self, organization: &str, pipeline: &str, branch: &str) -> Box<Future<Item = ::models::BranchImpl, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("pipeline".to_string(), pipeline.to_string())
            .with_path_param("branch".to_string(), branch.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_pipeline_branch_run(&self, organization: &str, pipeline: &str, branch: &str, run: &str) -> Box<Future<Item = ::models::PipelineRun, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("pipeline".to_string(), pipeline.to_string())
            .with_path_param("branch".to_string(), branch.to_string())
            .with_path_param("run".to_string(), run.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_pipeline_branches(&self, organization: &str, pipeline: &str) -> Box<Future<Item = ::models::MultibranchPipeline, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("pipeline".to_string(), pipeline.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_pipeline_folder(&self, organization: &str, folder: &str) -> Box<Future<Item = ::models::PipelineFolderImpl, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/pipelines/{folder}/".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("folder".to_string(), folder.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_pipeline_folder_pipeline(&self, organization: &str, pipeline: &str, folder: &str) -> Box<Future<Item = ::models::PipelineImpl, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("pipeline".to_string(), pipeline.to_string())
            .with_path_param("folder".to_string(), folder.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_pipeline_queue(&self, organization: &str, pipeline: &str) -> Box<Future<Item = ::models::PipelineQueue, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("pipeline".to_string(), pipeline.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_pipeline_run(&self, organization: &str, pipeline: &str, run: &str) -> Box<Future<Item = ::models::PipelineRun, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("pipeline".to_string(), pipeline.to_string())
            .with_path_param("run".to_string(), run.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_pipeline_run_log(&self, organization: &str, pipeline: &str, run: &str, start: i32, download: bool) -> Box<Future<Item = String, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_query_param("start".to_string(), start.to_string())
            .with_query_param("download".to_string(), download.to_string())
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("pipeline".to_string(), pipeline.to_string())
            .with_path_param("run".to_string(), run.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_pipeline_run_node(&self, organization: &str, pipeline: &str, run: &str, node: &str) -> Box<Future<Item = ::models::PipelineRunNode, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("pipeline".to_string(), pipeline.to_string())
            .with_path_param("run".to_string(), run.to_string())
            .with_path_param("node".to_string(), node.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_pipeline_run_node_step(&self, organization: &str, pipeline: &str, run: &str, node: &str, step: &str) -> Box<Future<Item = ::models::PipelineStepImpl, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("pipeline".to_string(), pipeline.to_string())
            .with_path_param("run".to_string(), run.to_string())
            .with_path_param("node".to_string(), node.to_string())
            .with_path_param("step".to_string(), step.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_pipeline_run_node_step_log(&self, organization: &str, pipeline: &str, run: &str, node: &str, step: &str) -> Box<Future<Item = String, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("pipeline".to_string(), pipeline.to_string())
            .with_path_param("run".to_string(), run.to_string())
            .with_path_param("node".to_string(), node.to_string())
            .with_path_param("step".to_string(), step.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_pipeline_run_node_steps(&self, organization: &str, pipeline: &str, run: &str, node: &str) -> Box<Future<Item = ::models::PipelineRunNodeSteps, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("pipeline".to_string(), pipeline.to_string())
            .with_path_param("run".to_string(), run.to_string())
            .with_path_param("node".to_string(), node.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_pipeline_run_nodes(&self, organization: &str, pipeline: &str, run: &str) -> Box<Future<Item = ::models::PipelineRunNodes, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("pipeline".to_string(), pipeline.to_string())
            .with_path_param("run".to_string(), run.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_pipeline_runs(&self, organization: &str, pipeline: &str) -> Box<Future<Item = ::models::PipelineRuns, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("pipeline".to_string(), pipeline.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_pipelines(&self, organization: &str) -> Box<Future<Item = ::models::Pipelines, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/pipelines/".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_scm(&self, organization: &str, scm: &str) -> Box<Future<Item = ::models::GithubScm, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/scm/{scm}".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("scm".to_string(), scm.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_scm_organisation_repositories(&self, organization: &str, scm: &str, scm_organisation: &str, credential_id: &str, page_size: i32, page_number: i32) -> Box<Future<Item = ::models::ScmOrganisations, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_query_param("credentialId".to_string(), credential_id.to_string())
            .with_query_param("pageSize".to_string(), page_size.to_string())
            .with_query_param("pageNumber".to_string(), page_number.to_string())
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("scm".to_string(), scm.to_string())
            .with_path_param("scmOrganisation".to_string(), scm_organisation.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_scm_organisation_repository(&self, organization: &str, scm: &str, scm_organisation: &str, repository: &str, credential_id: &str) -> Box<Future<Item = ::models::ScmOrganisations, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_query_param("credentialId".to_string(), credential_id.to_string())
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("scm".to_string(), scm.to_string())
            .with_path_param("scmOrganisation".to_string(), scm_organisation.to_string())
            .with_path_param("repository".to_string(), repository.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_scm_organisations(&self, organization: &str, scm: &str, credential_id: &str) -> Box<Future<Item = ::models::ScmOrganisations, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/scm/{scm}/organizations".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_query_param("credentialId".to_string(), credential_id.to_string())
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("scm".to_string(), scm.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_user(&self, organization: &str, user: &str) -> Box<Future<Item = ::models::User, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/users/{user}".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("user".to_string(), user.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_user_favorites(&self, user: &str) -> Box<Future<Item = ::models::UserFavorites, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/users/{user}/favorites".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("user".to_string(), user.to_string())
            .execute(self.configuration.borrow())
    }

    fn get_users(&self, organization: &str) -> Box<Future<Item = ::models::User, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/organizations/{organization}/users/".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .execute(self.configuration.borrow())
    }

    fn post_pipeline_run(&self, organization: &str, pipeline: &str, run: &str) -> Box<Future<Item = ::models::QueueItemImpl, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Post, "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("pipeline".to_string(), pipeline.to_string())
            .with_path_param("run".to_string(), run.to_string())
            .execute(self.configuration.borrow())
    }

    fn post_pipeline_runs(&self, organization: &str, pipeline: &str) -> Box<Future<Item = ::models::QueueItemImpl, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Post, "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("pipeline".to_string(), pipeline.to_string())
            .execute(self.configuration.borrow())
    }

    fn put_pipeline_favorite(&self, organization: &str, pipeline: &str, body: ::models::Body) -> Box<Future<Item = ::models::FavoriteImpl, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Put, "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("pipeline".to_string(), pipeline.to_string())
            .with_body_param(body)
            .execute(self.configuration.borrow())
    }

    fn put_pipeline_run(&self, organization: &str, pipeline: &str, run: &str, blocking: &str, time_out_in_secs: i32) -> Box<Future<Item = ::models::PipelineRun, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Put, "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_query_param("blocking".to_string(), blocking.to_string())
            .with_query_param("timeOutInSecs".to_string(), time_out_in_secs.to_string())
            .with_path_param("organization".to_string(), organization.to_string())
            .with_path_param("pipeline".to_string(), pipeline.to_string())
            .with_path_param("run".to_string(), run.to_string())
            .execute(self.configuration.borrow())
    }

    fn search(&self, q: &str) -> Box<Future<Item = String, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/search/".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_query_param("q".to_string(), q.to_string())
            .execute(self.configuration.borrow())
    }

    fn search_classes(&self, q: &str) -> Box<Future<Item = String, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/blue/rest/classes/".to_string())
            .with_auth(__internal_request::Auth::Basic)
            .with_query_param("q".to_string(), q.to_string())
            .execute(self.configuration.borrow())
    }

}
