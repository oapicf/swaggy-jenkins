#![allow(unused_extern_crates)]
extern crate serde_ignored;
extern crate tokio_core;
extern crate native_tls;
extern crate hyper_tls;
extern crate openssl;
extern crate mime;
extern crate uuid;
extern crate chrono;
extern crate percent_encoding;
extern crate url;


use std::sync::Arc;
use std::marker::PhantomData;
use futures::{Future, future, Stream, stream};
use hyper;
use hyper::{Request, Response, Error, StatusCode};
use hyper::header::{Headers, ContentType};
use self::url::form_urlencoded;
use mimetypes;

use serde_json;


#[allow(unused_imports)]
use std::collections::{HashMap, BTreeMap};
#[allow(unused_imports)]
use swagger;
use std::io;

#[allow(unused_imports)]
use std::collections::BTreeSet;

pub use swagger::auth::Authorization;
use swagger::{ApiError, XSpanId, XSpanIdString, Has, RequestParser};
use swagger::auth::Scopes;

use {Api,
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
#[allow(unused_imports)]
use models;

pub mod context;

header! { (Warning, "Warning") => [String] }

mod paths {
    extern crate regex;

    lazy_static! {
        pub static ref GLOBAL_REGEX_SET: regex::RegexSet = regex::RegexSet::new(&[
            r"^//api/json$",
            r"^//blue/rest/classes/$",
            r"^//blue/rest/classes/(?P<class>[^/?#]*)$",
            r"^//blue/rest/organizations/$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<folder>[^/?#]*)/$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<folder>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/activities$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/branches$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/branches/(?P<branch>[^/?#]*)/$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/branches/(?P<branch>[^/?#]*)/runs/(?P<run>[^/?#]*)$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/favorite$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/queue$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/queue/(?P<queue>[^/?#]*)$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/log$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/nodes$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/nodes/(?P<node>[^/?#]*)$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/nodes/(?P<node>[^/?#]*)/steps$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/nodes/(?P<node>[^/?#]*)/steps/(?P<step>[^/?#]*)$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/nodes/(?P<node>[^/?#]*)/steps/(?P<step>[^/?#]*)/log$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/replay$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/stop$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/scm/(?P<scm>[^/?#]*)$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/scm/(?P<scm>[^/?#]*)/organizations$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/scm/(?P<scm>[^/?#]*)/organizations/(?P<scmOrganisation>[^/?#]*)/repositories$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/scm/(?P<scm>[^/?#]*)/organizations/(?P<scmOrganisation>[^/?#]*)/repositories/(?P<repository>[^/?#]*)$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/user/$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/users/$",
            r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/users/(?P<user>[^/?#]*)$",
            r"^//blue/rest/search/$",
            r"^//blue/rest/users/(?P<user>[^/?#]*)/favorites$",
            r"^//computer/api/json$",
            r"^//createItem$",
            r"^//createView$",
            r"^//crumbIssuer/api/json$",
            r"^//job/(?P<name>[^/?#]*)/api/json$",
            r"^//job/(?P<name>[^/?#]*)/build$",
            r"^//job/(?P<name>[^/?#]*)/config.xml$",
            r"^//job/(?P<name>[^/?#]*)/disable$",
            r"^//job/(?P<name>[^/?#]*)/doDelete$",
            r"^//job/(?P<name>[^/?#]*)/enable$",
            r"^//job/(?P<name>[^/?#]*)/lastBuild/api/json$",
            r"^//job/(?P<name>[^/?#]*)/lastBuild/stop$",
            r"^//job/(?P<name>[^/?#]*)/(?P<number>[^/?#]*)/logText/progressiveText$",
            r"^//jwt-auth/jwks/(?P<key>[^/?#]*)$",
            r"^//jwt-auth/token$",
            r"^//queue/api/json$",
            r"^//queue/item/(?P<number>[^/?#]*)/api/json$",
            r"^//view/(?P<name>[^/?#]*)/api/json$",
            r"^//view/(?P<name>[^/?#]*)/config.xml$"
        ]).unwrap();
    }
    pub static ID_API_JSON: usize = 0;
    pub static ID_BLUE_REST_CLASSES_: usize = 1;
    pub static ID_BLUE_REST_CLASSES_CLASS: usize = 2;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_CLASSES_CLASS: regex::Regex = regex::Regex::new(r"^//blue/rest/classes/(?P<class>[^/?#]*)$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_: usize = 3;
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION: usize = 4;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_: usize = 5;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_: usize = 6;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<folder>[^/?#]*)/$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_PIPELINES_PIPELINE: usize = 7;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_PIPELINES_PIPELINE: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<folder>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE: usize = 8;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_ACTIVITIES: usize = 9;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_ACTIVITIES: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/activities$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES: usize = 10;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/branches$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_: usize = 11;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/branches/(?P<branch>[^/?#]*)/$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_RUNS_RUN: usize = 12;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_RUNS_RUN: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/branches/(?P<branch>[^/?#]*)/runs/(?P<run>[^/?#]*)$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_FAVORITE: usize = 13;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_FAVORITE: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/favorite$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE: usize = 14;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/queue$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE_QUEUE: usize = 15;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE_QUEUE: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/queue/(?P<queue>[^/?#]*)$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS: usize = 16;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN: usize = 17;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_LOG: usize = 18;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_LOG: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/log$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES: usize = 19;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/nodes$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE: usize = 20;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/nodes/(?P<node>[^/?#]*)$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS: usize = 21;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/nodes/(?P<node>[^/?#]*)/steps$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP: usize = 22;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/nodes/(?P<node>[^/?#]*)/steps/(?P<step>[^/?#]*)$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP_LOG: usize = 23;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP_LOG: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/nodes/(?P<node>[^/?#]*)/steps/(?P<step>[^/?#]*)/log$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_REPLAY: usize = 24;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_REPLAY: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/replay$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_STOP: usize = 25;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_STOP: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/stop$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM: usize = 26;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/scm/(?P<scm>[^/?#]*)$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS: usize = 27;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/scm/(?P<scm>[^/?#]*)/organizations$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES: usize = 28;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/scm/(?P<scm>[^/?#]*)/organizations/(?P<scmOrganisation>[^/?#]*)/repositories$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES_REPOSITORY: usize = 29;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES_REPOSITORY: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/scm/(?P<scm>[^/?#]*)/organizations/(?P<scmOrganisation>[^/?#]*)/repositories/(?P<repository>[^/?#]*)$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USER_: usize = 30;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USER_: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/user/$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_: usize = 31;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/users/$").unwrap();
    }
    pub static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_USER: usize = 32;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_USER: regex::Regex = regex::Regex::new(r"^//blue/rest/organizations/(?P<organization>[^/?#]*)/users/(?P<user>[^/?#]*)$").unwrap();
    }
    pub static ID_BLUE_REST_SEARCH_: usize = 33;
    pub static ID_BLUE_REST_USERS_USER_FAVORITES: usize = 34;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_USERS_USER_FAVORITES: regex::Regex = regex::Regex::new(r"^//blue/rest/users/(?P<user>[^/?#]*)/favorites$").unwrap();
    }
    pub static ID_COMPUTER_API_JSON: usize = 35;
    pub static ID_CREATEITEM: usize = 36;
    pub static ID_CREATEVIEW: usize = 37;
    pub static ID_CRUMBISSUER_API_JSON: usize = 38;
    pub static ID_JOB_NAME_API_JSON: usize = 39;
    lazy_static! {
        pub static ref REGEX_JOB_NAME_API_JSON: regex::Regex = regex::Regex::new(r"^//job/(?P<name>[^/?#]*)/api/json$").unwrap();
    }
    pub static ID_JOB_NAME_BUILD: usize = 40;
    lazy_static! {
        pub static ref REGEX_JOB_NAME_BUILD: regex::Regex = regex::Regex::new(r"^//job/(?P<name>[^/?#]*)/build$").unwrap();
    }
    pub static ID_JOB_NAME_CONFIG_XML: usize = 41;
    lazy_static! {
        pub static ref REGEX_JOB_NAME_CONFIG_XML: regex::Regex = regex::Regex::new(r"^//job/(?P<name>[^/?#]*)/config.xml$").unwrap();
    }
    pub static ID_JOB_NAME_DISABLE: usize = 42;
    lazy_static! {
        pub static ref REGEX_JOB_NAME_DISABLE: regex::Regex = regex::Regex::new(r"^//job/(?P<name>[^/?#]*)/disable$").unwrap();
    }
    pub static ID_JOB_NAME_DODELETE: usize = 43;
    lazy_static! {
        pub static ref REGEX_JOB_NAME_DODELETE: regex::Regex = regex::Regex::new(r"^//job/(?P<name>[^/?#]*)/doDelete$").unwrap();
    }
    pub static ID_JOB_NAME_ENABLE: usize = 44;
    lazy_static! {
        pub static ref REGEX_JOB_NAME_ENABLE: regex::Regex = regex::Regex::new(r"^//job/(?P<name>[^/?#]*)/enable$").unwrap();
    }
    pub static ID_JOB_NAME_LASTBUILD_API_JSON: usize = 45;
    lazy_static! {
        pub static ref REGEX_JOB_NAME_LASTBUILD_API_JSON: regex::Regex = regex::Regex::new(r"^//job/(?P<name>[^/?#]*)/lastBuild/api/json$").unwrap();
    }
    pub static ID_JOB_NAME_LASTBUILD_STOP: usize = 46;
    lazy_static! {
        pub static ref REGEX_JOB_NAME_LASTBUILD_STOP: regex::Regex = regex::Regex::new(r"^//job/(?P<name>[^/?#]*)/lastBuild/stop$").unwrap();
    }
    pub static ID_JOB_NAME_NUMBER_LOGTEXT_PROGRESSIVETEXT: usize = 47;
    lazy_static! {
        pub static ref REGEX_JOB_NAME_NUMBER_LOGTEXT_PROGRESSIVETEXT: regex::Regex = regex::Regex::new(r"^//job/(?P<name>[^/?#]*)/(?P<number>[^/?#]*)/logText/progressiveText$").unwrap();
    }
    pub static ID_JWT_AUTH_JWKS_KEY: usize = 48;
    lazy_static! {
        pub static ref REGEX_JWT_AUTH_JWKS_KEY: regex::Regex = regex::Regex::new(r"^//jwt-auth/jwks/(?P<key>[^/?#]*)$").unwrap();
    }
    pub static ID_JWT_AUTH_TOKEN: usize = 49;
    pub static ID_QUEUE_API_JSON: usize = 50;
    pub static ID_QUEUE_ITEM_NUMBER_API_JSON: usize = 51;
    lazy_static! {
        pub static ref REGEX_QUEUE_ITEM_NUMBER_API_JSON: regex::Regex = regex::Regex::new(r"^//queue/item/(?P<number>[^/?#]*)/api/json$").unwrap();
    }
    pub static ID_VIEW_NAME_API_JSON: usize = 52;
    lazy_static! {
        pub static ref REGEX_VIEW_NAME_API_JSON: regex::Regex = regex::Regex::new(r"^//view/(?P<name>[^/?#]*)/api/json$").unwrap();
    }
    pub static ID_VIEW_NAME_CONFIG_XML: usize = 53;
    lazy_static! {
        pub static ref REGEX_VIEW_NAME_CONFIG_XML: regex::Regex = regex::Regex::new(r"^//view/(?P<name>[^/?#]*)/config.xml$").unwrap();
    }
}

pub struct NewService<T, C> {
    api_impl: Arc<T>,
    marker: PhantomData<C>,
}

impl<T, C> NewService<T, C>
where
    T: Api<C> + Clone + 'static,
    C: Has<XSpanIdString> + Has<Option<Authorization>> + 'static
{
    pub fn new<U: Into<Arc<T>>>(api_impl: U) -> NewService<T, C> {
        NewService{api_impl: api_impl.into(), marker: PhantomData}
    }
}

impl<T, C> hyper::server::NewService for NewService<T, C>
where
    T: Api<C> + Clone + 'static,
    C: Has<XSpanIdString> + Has<Option<Authorization>> + 'static
{
    type Request = (Request, C);
    type Response = Response;
    type Error = Error;
    type Instance = Service<T, C>;

    fn new_service(&self) -> Result<Self::Instance, io::Error> {
        Ok(Service::new(self.api_impl.clone()))
    }
}

pub struct Service<T, C> {
    api_impl: Arc<T>,
    marker: PhantomData<C>,
}

impl<T, C> Service<T, C>
where
    T: Api<C> + Clone + 'static,
    C: Has<XSpanIdString> + Has<Option<Authorization>> + 'static {
    pub fn new<U: Into<Arc<T>>>(api_impl: U) -> Service<T, C> {
        Service{api_impl: api_impl.into(), marker: PhantomData}
    }
}

impl<T, C> hyper::server::Service for Service<T, C>
where
    T: Api<C> + Clone + 'static,
    C: Has<XSpanIdString> + Has<Option<Authorization>> + 'static
{
    type Request = (Request, C);
    type Response = Response;
    type Error = Error;
    type Future = Box<Future<Item=Response, Error=Error>>;

    fn call(&self, (req, mut context): Self::Request) -> Self::Future {
        let api_impl = self.api_impl.clone();
        let (method, uri, _, headers, body) = req.deconstruct();
        let path = paths::GLOBAL_REGEX_SET.matches(uri.path());

        // This match statement is duplicated below in `parse_operation_id()`.
        // Please update both places if changing how this code is autogenerated.
        match &method {

            // GetCrumb - GET /crumbIssuer/api/json
            &hyper::Method::Get if path.matched(paths::ID_CRUMBISSUER_API_JSON) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }







                Box::new({
                        {{

                                Box::new(api_impl.get_crumb(&context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetCrumbResponse::SuccessfullyRetrievedCSRFProtectionToken

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_CRUMB_SUCCESSFULLY_RETRIEVED_CSRF_PROTECTION_TOKEN.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetCrumbResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetCrumbResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // DeletePipelineQueueItem - DELETE /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}
            &hyper::Method::Delete if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE_QUEUE) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE_QUEUE
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE_QUEUE in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE_QUEUE.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter pipeline: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"]))))
                };
                let param_queue = match percent_encoding::percent_decode(path_params["queue"].as_bytes()).decode_utf8() {
                    Ok(param_queue) => match param_queue.parse::<String>() {
                        Ok(param_queue) => param_queue,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter queue: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["queue"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.delete_pipeline_queue_item(param_organization, param_pipeline, param_queue, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                DeletePipelineQueueItemResponse::SuccessfullyDeletedQueueItem


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                },
                                                DeletePipelineQueueItemResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                DeletePipelineQueueItemResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetAuthenticatedUser - GET /blue/rest/organizations/{organization}/user/
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USER_) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USER_
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_USER_ in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USER_.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_authenticated_user(param_organization, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetAuthenticatedUserResponse::SuccessfullyRetrievedAuthenticatedUserDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_AUTHENTICATED_USER_SUCCESSFULLY_RETRIEVED_AUTHENTICATED_USER_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetAuthenticatedUserResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetAuthenticatedUserResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetClasses - GET /blue/rest/classes/{class}
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_CLASSES_CLASS) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_CLASSES_CLASS
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_CLASSES_CLASS in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_CLASSES_CLASS.as_str())
                    );

                let param_class = match percent_encoding::percent_decode(path_params["class"].as_bytes()).decode_utf8() {
                    Ok(param_class) => match param_class.parse::<String>() {
                        Ok(param_class) => param_class,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter class: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["class"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_classes(param_class, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetClassesResponse::SuccessfullyRetrievedClassNames

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_CLASSES_SUCCESSFULLY_RETRIEVED_CLASS_NAMES.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetClassesResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetClassesResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetJsonWebKey - GET /jwt-auth/jwks/{key}
            &hyper::Method::Get if path.matched(paths::ID_JWT_AUTH_JWKS_KEY) => {


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_JWT_AUTH_JWKS_KEY
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE JWT_AUTH_JWKS_KEY in set but failed match against \"{}\"", path, paths::REGEX_JWT_AUTH_JWKS_KEY.as_str())
                    );

                let param_key = match percent_encoding::percent_decode(path_params["key"].as_bytes()).decode_utf8() {
                    Ok(param_key) => match param_key.parse::<i32>() {
                        Ok(param_key) => param_key,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter key: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["key"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_json_web_key(param_key, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetJsonWebKeyResponse::SuccessfullyRetrievedJWTToken

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_JSON_WEB_KEY_SUCCESSFULLY_RETRIEVED_JWT_TOKEN.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetJsonWebKeyResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetJsonWebKeyResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetJsonWebToken - GET /jwt-auth/token
            &hyper::Method::Get if path.matched(paths::ID_JWT_AUTH_TOKEN) => {





                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_expiry_time_in_mins = query_params.iter().filter(|e| e.0 == "expiryTimeInMins").map(|e| e.1.to_owned())

                    .nth(0);

                let param_expiry_time_in_mins = param_expiry_time_in_mins.and_then(|param_expiry_time_in_mins| param_expiry_time_in_mins.parse::<>().ok());
                let param_max_expiry_time_in_mins = query_params.iter().filter(|e| e.0 == "maxExpiryTimeInMins").map(|e| e.1.to_owned())

                    .nth(0);

                let param_max_expiry_time_in_mins = param_max_expiry_time_in_mins.and_then(|param_max_expiry_time_in_mins| param_max_expiry_time_in_mins.parse::<>().ok());



                Box::new({
                        {{

                                Box::new(api_impl.get_json_web_token(param_expiry_time_in_mins, param_max_expiry_time_in_mins, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetJsonWebTokenResponse::SuccessfullyRetrievedJWTToken

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_JSON_WEB_TOKEN_SUCCESSFULLY_RETRIEVED_JWT_TOKEN.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetJsonWebTokenResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetJsonWebTokenResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetOrganisation - GET /blue/rest/organizations/{organization}
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_organisation(param_organization, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetOrganisationResponse::SuccessfullyRetrievedPipelineDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_ORGANISATION_SUCCESSFULLY_RETRIEVED_PIPELINE_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetOrganisationResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetOrganisationResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                                GetOrganisationResponse::PipelineCannotBeFoundOnJenkinsInstance


                                                => {
                                                    response.set_status(StatusCode::try_from(404).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetOrganisations - GET /blue/rest/organizations/
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }







                Box::new({
                        {{

                                Box::new(api_impl.get_organisations(&context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetOrganisationsResponse::SuccessfullyRetrievedPipelinesDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_ORGANISATIONS_SUCCESSFULLY_RETRIEVED_PIPELINES_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetOrganisationsResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetOrganisationsResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetPipeline - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter pipeline: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_pipeline(param_organization, param_pipeline, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineResponse::SuccessfullyRetrievedPipelineDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_PIPELINE_SUCCESSFULLY_RETRIEVED_PIPELINE_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetPipelineResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetPipelineResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                                GetPipelineResponse::PipelineCannotBeFoundOnJenkinsInstance


                                                => {
                                                    response.set_status(StatusCode::try_from(404).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetPipelineActivities - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_ACTIVITIES) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_ACTIVITIES
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_ACTIVITIES in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_ACTIVITIES.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter pipeline: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_pipeline_activities(param_organization, param_pipeline, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineActivitiesResponse::SuccessfullyRetrievedAllActivitiesDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_PIPELINE_ACTIVITIES_SUCCESSFULLY_RETRIEVED_ALL_ACTIVITIES_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetPipelineActivitiesResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetPipelineActivitiesResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetPipelineBranch - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_ in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter pipeline: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"]))))
                };
                let param_branch = match percent_encoding::percent_decode(path_params["branch"].as_bytes()).decode_utf8() {
                    Ok(param_branch) => match param_branch.parse::<String>() {
                        Ok(param_branch) => param_branch,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter branch: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["branch"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_pipeline_branch(param_organization, param_pipeline, param_branch, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineBranchResponse::SuccessfullyRetrievedBranchDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_PIPELINE_BRANCH_SUCCESSFULLY_RETRIEVED_BRANCH_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetPipelineBranchResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetPipelineBranchResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetPipelineBranchRun - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_RUNS_RUN) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_RUNS_RUN
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_RUNS_RUN in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_RUNS_RUN.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter pipeline: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"]))))
                };
                let param_branch = match percent_encoding::percent_decode(path_params["branch"].as_bytes()).decode_utf8() {
                    Ok(param_branch) => match param_branch.parse::<String>() {
                        Ok(param_branch) => param_branch,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter branch: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["branch"]))))
                };
                let param_run = match percent_encoding::percent_decode(path_params["run"].as_bytes()).decode_utf8() {
                    Ok(param_run) => match param_run.parse::<String>() {
                        Ok(param_run) => param_run,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter run: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["run"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_pipeline_branch_run(param_organization, param_pipeline, param_branch, param_run, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineBranchRunResponse::SuccessfullyRetrievedRunDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_PIPELINE_BRANCH_RUN_SUCCESSFULLY_RETRIEVED_RUN_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetPipelineBranchRunResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetPipelineBranchRunResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetPipelineBranches - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter pipeline: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_pipeline_branches(param_organization, param_pipeline, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineBranchesResponse::SuccessfullyRetrievedAllBranchesDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_PIPELINE_BRANCHES_SUCCESSFULLY_RETRIEVED_ALL_BRANCHES_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetPipelineBranchesResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetPipelineBranchesResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetPipelineFolder - GET /blue/rest/organizations/{organization}/pipelines/{folder}/
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_ in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_folder = match percent_encoding::percent_decode(path_params["folder"].as_bytes()).decode_utf8() {
                    Ok(param_folder) => match param_folder.parse::<String>() {
                        Ok(param_folder) => param_folder,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter folder: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["folder"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_pipeline_folder(param_organization, param_folder, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineFolderResponse::SuccessfullyRetrievedFolderDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_PIPELINE_FOLDER_SUCCESSFULLY_RETRIEVED_FOLDER_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetPipelineFolderResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetPipelineFolderResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetPipelineFolderPipeline - GET /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_PIPELINES_PIPELINE) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_PIPELINES_PIPELINE
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_PIPELINES_PIPELINE in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_PIPELINES_PIPELINE.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter pipeline: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"]))))
                };
                let param_folder = match percent_encoding::percent_decode(path_params["folder"].as_bytes()).decode_utf8() {
                    Ok(param_folder) => match param_folder.parse::<String>() {
                        Ok(param_folder) => param_folder,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter folder: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["folder"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_pipeline_folder_pipeline(param_organization, param_pipeline, param_folder, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineFolderPipelineResponse::SuccessfullyRetrievedPipelineDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_PIPELINE_FOLDER_PIPELINE_SUCCESSFULLY_RETRIEVED_PIPELINE_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetPipelineFolderPipelineResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetPipelineFolderPipelineResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetPipelineQueue - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter pipeline: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_pipeline_queue(param_organization, param_pipeline, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineQueueResponse::SuccessfullyRetrievedQueueDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_PIPELINE_QUEUE_SUCCESSFULLY_RETRIEVED_QUEUE_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetPipelineQueueResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetPipelineQueueResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetPipelineRun - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter pipeline: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"]))))
                };
                let param_run = match percent_encoding::percent_decode(path_params["run"].as_bytes()).decode_utf8() {
                    Ok(param_run) => match param_run.parse::<String>() {
                        Ok(param_run) => param_run,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter run: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["run"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_pipeline_run(param_organization, param_pipeline, param_run, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunResponse::SuccessfullyRetrievedRunDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_PIPELINE_RUN_SUCCESSFULLY_RETRIEVED_RUN_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetPipelineRunResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetPipelineRunResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetPipelineRunLog - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_LOG) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_LOG
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_LOG in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_LOG.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter pipeline: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"]))))
                };
                let param_run = match percent_encoding::percent_decode(path_params["run"].as_bytes()).decode_utf8() {
                    Ok(param_run) => match param_run.parse::<String>() {
                        Ok(param_run) => param_run,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter run: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["run"]))))
                };



                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_start = query_params.iter().filter(|e| e.0 == "start").map(|e| e.1.to_owned())

                    .nth(0);

                let param_start = param_start.and_then(|param_start| param_start.parse::<>().ok());
                let param_download = query_params.iter().filter(|e| e.0 == "download").map(|e| e.1.to_owned())

                    .nth(0);

                let param_download = param_download.and_then(|param_download| param_download.parse::<>().ok());



                Box::new({
                        {{

                                Box::new(api_impl.get_pipeline_run_log(param_organization, param_pipeline, param_run, param_start, param_download, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunLogResponse::SuccessfullyRetrievedPipelineRunLog

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_PIPELINE_RUN_LOG_SUCCESSFULLY_RETRIEVED_PIPELINE_RUN_LOG.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetPipelineRunLogResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetPipelineRunLogResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetPipelineRunNode - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter pipeline: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"]))))
                };
                let param_run = match percent_encoding::percent_decode(path_params["run"].as_bytes()).decode_utf8() {
                    Ok(param_run) => match param_run.parse::<String>() {
                        Ok(param_run) => param_run,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter run: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["run"]))))
                };
                let param_node = match percent_encoding::percent_decode(path_params["node"].as_bytes()).decode_utf8() {
                    Ok(param_node) => match param_node.parse::<String>() {
                        Ok(param_node) => param_node,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter node: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["node"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_pipeline_run_node(param_organization, param_pipeline, param_run, param_node, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunNodeResponse::SuccessfullyRetrievedRunNodeDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_PIPELINE_RUN_NODE_SUCCESSFULLY_RETRIEVED_RUN_NODE_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetPipelineRunNodeResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetPipelineRunNodeResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetPipelineRunNodeStep - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter pipeline: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"]))))
                };
                let param_run = match percent_encoding::percent_decode(path_params["run"].as_bytes()).decode_utf8() {
                    Ok(param_run) => match param_run.parse::<String>() {
                        Ok(param_run) => param_run,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter run: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["run"]))))
                };
                let param_node = match percent_encoding::percent_decode(path_params["node"].as_bytes()).decode_utf8() {
                    Ok(param_node) => match param_node.parse::<String>() {
                        Ok(param_node) => param_node,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter node: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["node"]))))
                };
                let param_step = match percent_encoding::percent_decode(path_params["step"].as_bytes()).decode_utf8() {
                    Ok(param_step) => match param_step.parse::<String>() {
                        Ok(param_step) => param_step,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter step: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["step"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_pipeline_run_node_step(param_organization, param_pipeline, param_run, param_node, param_step, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunNodeStepResponse::SuccessfullyRetrievedRunNodeStepDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_PIPELINE_RUN_NODE_STEP_SUCCESSFULLY_RETRIEVED_RUN_NODE_STEP_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetPipelineRunNodeStepResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetPipelineRunNodeStepResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetPipelineRunNodeStepLog - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP_LOG) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP_LOG
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP_LOG in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP_LOG.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter pipeline: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"]))))
                };
                let param_run = match percent_encoding::percent_decode(path_params["run"].as_bytes()).decode_utf8() {
                    Ok(param_run) => match param_run.parse::<String>() {
                        Ok(param_run) => param_run,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter run: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["run"]))))
                };
                let param_node = match percent_encoding::percent_decode(path_params["node"].as_bytes()).decode_utf8() {
                    Ok(param_node) => match param_node.parse::<String>() {
                        Ok(param_node) => param_node,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter node: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["node"]))))
                };
                let param_step = match percent_encoding::percent_decode(path_params["step"].as_bytes()).decode_utf8() {
                    Ok(param_step) => match param_step.parse::<String>() {
                        Ok(param_step) => param_step,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter step: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["step"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_pipeline_run_node_step_log(param_organization, param_pipeline, param_run, param_node, param_step, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunNodeStepLogResponse::SuccessfullyRetrievedPipelineRunNodeStepLog

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_PIPELINE_RUN_NODE_STEP_LOG_SUCCESSFULLY_RETRIEVED_PIPELINE_RUN_NODE_STEP_LOG.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetPipelineRunNodeStepLogResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetPipelineRunNodeStepLogResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetPipelineRunNodeSteps - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter pipeline: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"]))))
                };
                let param_run = match percent_encoding::percent_decode(path_params["run"].as_bytes()).decode_utf8() {
                    Ok(param_run) => match param_run.parse::<String>() {
                        Ok(param_run) => param_run,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter run: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["run"]))))
                };
                let param_node = match percent_encoding::percent_decode(path_params["node"].as_bytes()).decode_utf8() {
                    Ok(param_node) => match param_node.parse::<String>() {
                        Ok(param_node) => param_node,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter node: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["node"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_pipeline_run_node_steps(param_organization, param_pipeline, param_run, param_node, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunNodeStepsResponse::SuccessfullyRetrievedRunNodeStepsDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_PIPELINE_RUN_NODE_STEPS_SUCCESSFULLY_RETRIEVED_RUN_NODE_STEPS_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetPipelineRunNodeStepsResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetPipelineRunNodeStepsResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetPipelineRunNodes - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter pipeline: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"]))))
                };
                let param_run = match percent_encoding::percent_decode(path_params["run"].as_bytes()).decode_utf8() {
                    Ok(param_run) => match param_run.parse::<String>() {
                        Ok(param_run) => param_run,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter run: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["run"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_pipeline_run_nodes(param_organization, param_pipeline, param_run, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunNodesResponse::SuccessfullyRetrievedRunNodesDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_PIPELINE_RUN_NODES_SUCCESSFULLY_RETRIEVED_RUN_NODES_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetPipelineRunNodesResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetPipelineRunNodesResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetPipelineRuns - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter pipeline: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_pipeline_runs(param_organization, param_pipeline, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunsResponse::SuccessfullyRetrievedRunsDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_PIPELINE_RUNS_SUCCESSFULLY_RETRIEVED_RUNS_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetPipelineRunsResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetPipelineRunsResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetPipelines - GET /blue/rest/organizations/{organization}/pipelines/
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_ in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_pipelines(param_organization, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelinesResponse::SuccessfullyRetrievedPipelinesDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_PIPELINES_SUCCESSFULLY_RETRIEVED_PIPELINES_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetPipelinesResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetPipelinesResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetSCM - GET /blue/rest/organizations/{organization}/scm/{scm}
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_scm = match percent_encoding::percent_decode(path_params["scm"].as_bytes()).decode_utf8() {
                    Ok(param_scm) => match param_scm.parse::<String>() {
                        Ok(param_scm) => param_scm,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter scm: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["scm"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_scm(param_organization, param_scm, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetSCMResponse::SuccessfullyRetrievedSCMDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_SCM_SUCCESSFULLY_RETRIEVED_SCM_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetSCMResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetSCMResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetSCMOrganisationRepositories - GET /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_scm = match percent_encoding::percent_decode(path_params["scm"].as_bytes()).decode_utf8() {
                    Ok(param_scm) => match param_scm.parse::<String>() {
                        Ok(param_scm) => param_scm,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter scm: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["scm"]))))
                };
                let param_scm_organisation = match percent_encoding::percent_decode(path_params["scmOrganisation"].as_bytes()).decode_utf8() {
                    Ok(param_scm_organisation) => match param_scm_organisation.parse::<String>() {
                        Ok(param_scm_organisation) => param_scm_organisation,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter scmOrganisation: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["scmOrganisation"]))))
                };



                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_credential_id = query_params.iter().filter(|e| e.0 == "credentialId").map(|e| e.1.to_owned())

                    .nth(0);

                let param_credential_id = param_credential_id.and_then(|param_credential_id| param_credential_id.parse::<>().ok());
                let param_page_size = query_params.iter().filter(|e| e.0 == "pageSize").map(|e| e.1.to_owned())

                    .nth(0);

                let param_page_size = param_page_size.and_then(|param_page_size| param_page_size.parse::<>().ok());
                let param_page_number = query_params.iter().filter(|e| e.0 == "pageNumber").map(|e| e.1.to_owned())

                    .nth(0);

                let param_page_number = param_page_number.and_then(|param_page_number| param_page_number.parse::<>().ok());



                Box::new({
                        {{

                                Box::new(api_impl.get_scm_organisation_repositories(param_organization, param_scm, param_scm_organisation, param_credential_id, param_page_size, param_page_number, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetSCMOrganisationRepositoriesResponse::SuccessfullyRetrievedSCMOrganizationRepositoriesDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_SCM_ORGANISATION_REPOSITORIES_SUCCESSFULLY_RETRIEVED_SCM_ORGANIZATION_REPOSITORIES_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetSCMOrganisationRepositoriesResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetSCMOrganisationRepositoriesResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetSCMOrganisationRepository - GET /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES_REPOSITORY) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES_REPOSITORY
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES_REPOSITORY in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES_REPOSITORY.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_scm = match percent_encoding::percent_decode(path_params["scm"].as_bytes()).decode_utf8() {
                    Ok(param_scm) => match param_scm.parse::<String>() {
                        Ok(param_scm) => param_scm,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter scm: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["scm"]))))
                };
                let param_scm_organisation = match percent_encoding::percent_decode(path_params["scmOrganisation"].as_bytes()).decode_utf8() {
                    Ok(param_scm_organisation) => match param_scm_organisation.parse::<String>() {
                        Ok(param_scm_organisation) => param_scm_organisation,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter scmOrganisation: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["scmOrganisation"]))))
                };
                let param_repository = match percent_encoding::percent_decode(path_params["repository"].as_bytes()).decode_utf8() {
                    Ok(param_repository) => match param_repository.parse::<String>() {
                        Ok(param_repository) => param_repository,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter repository: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["repository"]))))
                };



                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_credential_id = query_params.iter().filter(|e| e.0 == "credentialId").map(|e| e.1.to_owned())

                    .nth(0);

                let param_credential_id = param_credential_id.and_then(|param_credential_id| param_credential_id.parse::<>().ok());



                Box::new({
                        {{

                                Box::new(api_impl.get_scm_organisation_repository(param_organization, param_scm, param_scm_organisation, param_repository, param_credential_id, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetSCMOrganisationRepositoryResponse::SuccessfullyRetrievedSCMOrganizationsDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_SCM_ORGANISATION_REPOSITORY_SUCCESSFULLY_RETRIEVED_SCM_ORGANIZATIONS_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetSCMOrganisationRepositoryResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetSCMOrganisationRepositoryResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetSCMOrganisations - GET /blue/rest/organizations/{organization}/scm/{scm}/organizations
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_scm = match percent_encoding::percent_decode(path_params["scm"].as_bytes()).decode_utf8() {
                    Ok(param_scm) => match param_scm.parse::<String>() {
                        Ok(param_scm) => param_scm,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter scm: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["scm"]))))
                };



                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_credential_id = query_params.iter().filter(|e| e.0 == "credentialId").map(|e| e.1.to_owned())

                    .nth(0);

                let param_credential_id = param_credential_id.and_then(|param_credential_id| param_credential_id.parse::<>().ok());



                Box::new({
                        {{

                                Box::new(api_impl.get_scm_organisations(param_organization, param_scm, param_credential_id, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetSCMOrganisationsResponse::SuccessfullyRetrievedSCMOrganizationsDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_SCM_ORGANISATIONS_SUCCESSFULLY_RETRIEVED_SCM_ORGANIZATIONS_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetSCMOrganisationsResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetSCMOrganisationsResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetUser - GET /blue/rest/organizations/{organization}/users/{user}
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_USER) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_USER
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_USER in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_USER.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_user = match percent_encoding::percent_decode(path_params["user"].as_bytes()).decode_utf8() {
                    Ok(param_user) => match param_user.parse::<String>() {
                        Ok(param_user) => param_user,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter user: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["user"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_user(param_organization, param_user, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetUserResponse::SuccessfullyRetrievedUsersDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_USER_SUCCESSFULLY_RETRIEVED_USERS_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetUserResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetUserResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetUserFavorites - GET /blue/rest/users/{user}/favorites
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_USERS_USER_FAVORITES) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_USERS_USER_FAVORITES
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_USERS_USER_FAVORITES in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_USERS_USER_FAVORITES.as_str())
                    );

                let param_user = match percent_encoding::percent_decode(path_params["user"].as_bytes()).decode_utf8() {
                    Ok(param_user) => match param_user.parse::<String>() {
                        Ok(param_user) => param_user,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter user: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["user"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_user_favorites(param_user, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetUserFavoritesResponse::SuccessfullyRetrievedUsersFavoritesDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_USER_FAVORITES_SUCCESSFULLY_RETRIEVED_USERS_FAVORITES_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetUserFavoritesResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetUserFavoritesResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetUsers - GET /blue/rest/organizations/{organization}/users/
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_ in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_users(param_organization, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetUsersResponse::SuccessfullyRetrievedUsersDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_USERS_SUCCESSFULLY_RETRIEVED_USERS_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetUsersResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetUsersResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // PostPipelineRun - POST /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay
            &hyper::Method::Post if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_REPLAY) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_REPLAY
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_REPLAY in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_REPLAY.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter pipeline: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"]))))
                };
                let param_run = match percent_encoding::percent_decode(path_params["run"].as_bytes()).decode_utf8() {
                    Ok(param_run) => match param_run.parse::<String>() {
                        Ok(param_run) => param_run,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter run: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["run"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.post_pipeline_run(param_organization, param_pipeline, param_run, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PostPipelineRunResponse::SuccessfullyReplayedAPipelineRun

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::POST_PIPELINE_RUN_SUCCESSFULLY_REPLAYED_A_PIPELINE_RUN.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                PostPipelineRunResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                PostPipelineRunResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // PostPipelineRuns - POST /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs
            &hyper::Method::Post if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter pipeline: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.post_pipeline_runs(param_organization, param_pipeline, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PostPipelineRunsResponse::SuccessfullyStartedABuild

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::POST_PIPELINE_RUNS_SUCCESSFULLY_STARTED_A_BUILD.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                PostPipelineRunsResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                PostPipelineRunsResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // PutPipelineFavorite - PUT /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite
            &hyper::Method::Put if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_FAVORITE) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_FAVORITE
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_FAVORITE in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_FAVORITE.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter pipeline: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"]))))
                };




                // Body parameters (note that non-required body parameters will ignore garbage
                // values, rather than causing a 400 response). Produce warning header and logs for
                // any unused fields.
                Box::new(body.concat2()
                    .then(move |result| -> Box<Future<Item=Response, Error=Error>> {
                        match result {
                            Ok(body) => {

                                let mut unused_elements = Vec::new();
                                let param_body: Option<models::Body> = if !body.is_empty() {

                                    let deserializer = &mut serde_json::Deserializer::from_slice(&*body);

                                    match serde_ignored::deserialize(deserializer, |path| {
                                            warn!("Ignoring unknown field in body: {}", path);
                                            unused_elements.push(path.to_string());
                                    }) {
                                        Ok(param_body) => param_body,
                                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse body parameter Body - doesn't match schema: {}", e)))),
                                    }

                                } else {
                                    None
                                };
                                let param_body = match param_body {
                                    Some(param_body) => param_body,
                                    None => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body("Missing required body parameter Body"))),
                                };


                                Box::new(api_impl.put_pipeline_favorite(param_organization, param_pipeline, param_body, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        if !unused_elements.is_empty() {
                                            response.headers_mut().set(Warning(format!("Ignoring unknown fields in body: {:?}", unused_elements)));
                                        }

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PutPipelineFavoriteResponse::SuccessfullyFavorited

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::PUT_PIPELINE_FAVORITE_SUCCESSFULLY_FAVORITED.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                PutPipelineFavoriteResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                PutPipelineFavoriteResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))


                            },
                            Err(e) => Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't read body parameter Body: {}", e)))),
                        }
                    })
                ) as Box<Future<Item=Response, Error=Error>>

            },


            // PutPipelineRun - PUT /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop
            &hyper::Method::Put if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_STOP) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_STOP
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_STOP in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_STOP.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter organization: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"]))))
                };
                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter pipeline: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"]))))
                };
                let param_run = match percent_encoding::percent_decode(path_params["run"].as_bytes()).decode_utf8() {
                    Ok(param_run) => match param_run.parse::<String>() {
                        Ok(param_run) => param_run,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter run: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["run"]))))
                };



                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_blocking = query_params.iter().filter(|e| e.0 == "blocking").map(|e| e.1.to_owned())

                    .nth(0);

                let param_blocking = param_blocking.and_then(|param_blocking| param_blocking.parse::<>().ok());
                let param_time_out_in_secs = query_params.iter().filter(|e| e.0 == "timeOutInSecs").map(|e| e.1.to_owned())

                    .nth(0);

                let param_time_out_in_secs = param_time_out_in_secs.and_then(|param_time_out_in_secs| param_time_out_in_secs.parse::<>().ok());



                Box::new({
                        {{

                                Box::new(api_impl.put_pipeline_run(param_organization, param_pipeline, param_run, param_blocking, param_time_out_in_secs, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PutPipelineRunResponse::SuccessfullyStoppedABuild

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::PUT_PIPELINE_RUN_SUCCESSFULLY_STOPPED_A_BUILD.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                PutPipelineRunResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                PutPipelineRunResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // Search - GET /blue/rest/search/
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_SEARCH_) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }





                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_q = query_params.iter().filter(|e| e.0 == "q").map(|e| e.1.to_owned())

                    .nth(0);
                let param_q = match param_q {
                    Some(param_q) => match param_q.parse::<String>() {
                        Ok(param_q) => param_q,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse query parameter q - doesn't match schema: {}", e)))),
                    },
                    None => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body("Missing required query parameter q"))),
                };



                Box::new({
                        {{

                                Box::new(api_impl.search(param_q, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                SearchResponse::SuccessfullyRetrievedSearchResult

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::SEARCH_SUCCESSFULLY_RETRIEVED_SEARCH_RESULT.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                SearchResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                SearchResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // SearchClasses - GET /blue/rest/classes/
            &hyper::Method::Get if path.matched(paths::ID_BLUE_REST_CLASSES_) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }





                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_q = query_params.iter().filter(|e| e.0 == "q").map(|e| e.1.to_owned())

                    .nth(0);
                let param_q = match param_q {
                    Some(param_q) => match param_q.parse::<String>() {
                        Ok(param_q) => param_q,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse query parameter q - doesn't match schema: {}", e)))),
                    },
                    None => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body("Missing required query parameter q"))),
                };



                Box::new({
                        {{

                                Box::new(api_impl.search_classes(param_q, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                SearchClassesResponse::SuccessfullyRetrievedSearchResult

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::SEARCH_CLASSES_SUCCESSFULLY_RETRIEVED_SEARCH_RESULT.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                SearchClassesResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                SearchClassesResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetComputer - GET /computer/api/json
            &hyper::Method::Get if path.matched(paths::ID_COMPUTER_API_JSON) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }





                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_depth = query_params.iter().filter(|e| e.0 == "depth").map(|e| e.1.to_owned())

                    .nth(0);
                let param_depth = match param_depth {
                    Some(param_depth) => match param_depth.parse::<i32>() {
                        Ok(param_depth) => param_depth,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse query parameter depth - doesn't match schema: {}", e)))),
                    },
                    None => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body("Missing required query parameter depth"))),
                };



                Box::new({
                        {{

                                Box::new(api_impl.get_computer(param_depth, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetComputerResponse::SuccessfullyRetrievedComputerDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_COMPUTER_SUCCESSFULLY_RETRIEVED_COMPUTER_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetComputerResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetComputerResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetJenkins - GET /api/json
            &hyper::Method::Get if path.matched(paths::ID_API_JSON) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }







                Box::new({
                        {{

                                Box::new(api_impl.get_jenkins(&context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetJenkinsResponse::SuccessfullyRetrievedJenkinsDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_JENKINS_SUCCESSFULLY_RETRIEVED_JENKINS_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetJenkinsResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetJenkinsResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetJob - GET /job/{name}/api/json
            &hyper::Method::Get if path.matched(paths::ID_JOB_NAME_API_JSON) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_JOB_NAME_API_JSON
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE JOB_NAME_API_JSON in set but failed match against \"{}\"", path, paths::REGEX_JOB_NAME_API_JSON.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter name: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_job(param_name, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetJobResponse::SuccessfullyRetrievedJobDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_JOB_SUCCESSFULLY_RETRIEVED_JOB_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetJobResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetJobResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                                GetJobResponse::JobCannotBeFoundOnJenkinsInstance


                                                => {
                                                    response.set_status(StatusCode::try_from(404).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetJobConfig - GET /job/{name}/config.xml
            &hyper::Method::Get if path.matched(paths::ID_JOB_NAME_CONFIG_XML) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_JOB_NAME_CONFIG_XML
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE JOB_NAME_CONFIG_XML in set but failed match against \"{}\"", path, paths::REGEX_JOB_NAME_CONFIG_XML.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter name: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_job_config(param_name, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetJobConfigResponse::SuccessfullyRetrievedJobConfigurationInConfig

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_JOB_CONFIG_SUCCESSFULLY_RETRIEVED_JOB_CONFIGURATION_IN_CONFIG.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetJobConfigResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetJobConfigResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                                GetJobConfigResponse::JobCannotBeFoundOnJenkinsInstance


                                                => {
                                                    response.set_status(StatusCode::try_from(404).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetJobLastBuild - GET /job/{name}/lastBuild/api/json
            &hyper::Method::Get if path.matched(paths::ID_JOB_NAME_LASTBUILD_API_JSON) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_JOB_NAME_LASTBUILD_API_JSON
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE JOB_NAME_LASTBUILD_API_JSON in set but failed match against \"{}\"", path, paths::REGEX_JOB_NAME_LASTBUILD_API_JSON.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter name: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_job_last_build(param_name, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetJobLastBuildResponse::SuccessfullyRetrievedJob

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_JOB_LAST_BUILD_SUCCESSFULLY_RETRIEVED_JOB.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetJobLastBuildResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetJobLastBuildResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                                GetJobLastBuildResponse::JobCannotBeFoundOnJenkinsInstance


                                                => {
                                                    response.set_status(StatusCode::try_from(404).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetJobProgressiveText - GET /job/{name}/{number}/logText/progressiveText
            &hyper::Method::Get if path.matched(paths::ID_JOB_NAME_NUMBER_LOGTEXT_PROGRESSIVETEXT) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_JOB_NAME_NUMBER_LOGTEXT_PROGRESSIVETEXT
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE JOB_NAME_NUMBER_LOGTEXT_PROGRESSIVETEXT in set but failed match against \"{}\"", path, paths::REGEX_JOB_NAME_NUMBER_LOGTEXT_PROGRESSIVETEXT.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter name: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"]))))
                };
                let param_number = match percent_encoding::percent_decode(path_params["number"].as_bytes()).decode_utf8() {
                    Ok(param_number) => match param_number.parse::<String>() {
                        Ok(param_number) => param_number,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter number: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["number"]))))
                };



                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_start = query_params.iter().filter(|e| e.0 == "start").map(|e| e.1.to_owned())

                    .nth(0);
                let param_start = match param_start {
                    Some(param_start) => match param_start.parse::<String>() {
                        Ok(param_start) => param_start,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse query parameter start - doesn't match schema: {}", e)))),
                    },
                    None => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body("Missing required query parameter start"))),
                };



                Box::new({
                        {{

                                Box::new(api_impl.get_job_progressive_text(param_name, param_number, param_start, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetJobProgressiveTextResponse::SuccessfullyRetrievedJob


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                },
                                                GetJobProgressiveTextResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetJobProgressiveTextResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                                GetJobProgressiveTextResponse::JobCannotBeFoundOnJenkinsInstance


                                                => {
                                                    response.set_status(StatusCode::try_from(404).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetQueue - GET /queue/api/json
            &hyper::Method::Get if path.matched(paths::ID_QUEUE_API_JSON) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }







                Box::new({
                        {{

                                Box::new(api_impl.get_queue(&context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetQueueResponse::SuccessfullyRetrievedQueueDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_QUEUE_SUCCESSFULLY_RETRIEVED_QUEUE_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetQueueResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetQueueResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetQueueItem - GET /queue/item/{number}/api/json
            &hyper::Method::Get if path.matched(paths::ID_QUEUE_ITEM_NUMBER_API_JSON) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_QUEUE_ITEM_NUMBER_API_JSON
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE QUEUE_ITEM_NUMBER_API_JSON in set but failed match against \"{}\"", path, paths::REGEX_QUEUE_ITEM_NUMBER_API_JSON.as_str())
                    );

                let param_number = match percent_encoding::percent_decode(path_params["number"].as_bytes()).decode_utf8() {
                    Ok(param_number) => match param_number.parse::<String>() {
                        Ok(param_number) => param_number,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter number: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["number"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_queue_item(param_number, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetQueueItemResponse::SuccessfullyRetrievedQueuedItemDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_QUEUE_ITEM_SUCCESSFULLY_RETRIEVED_QUEUED_ITEM_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetQueueItemResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetQueueItemResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetView - GET /view/{name}/api/json
            &hyper::Method::Get if path.matched(paths::ID_VIEW_NAME_API_JSON) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_VIEW_NAME_API_JSON
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE VIEW_NAME_API_JSON in set but failed match against \"{}\"", path, paths::REGEX_VIEW_NAME_API_JSON.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter name: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_view(param_name, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetViewResponse::SuccessfullyRetrievedViewDetails

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_VIEW_SUCCESSFULLY_RETRIEVED_VIEW_DETAILS.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetViewResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetViewResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                                GetViewResponse::ViewCannotBeFoundOnJenkinsInstance


                                                => {
                                                    response.set_status(StatusCode::try_from(404).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // GetViewConfig - GET /view/{name}/config.xml
            &hyper::Method::Get if path.matched(paths::ID_VIEW_NAME_CONFIG_XML) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_VIEW_NAME_CONFIG_XML
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE VIEW_NAME_CONFIG_XML in set but failed match against \"{}\"", path, paths::REGEX_VIEW_NAME_CONFIG_XML.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter name: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"]))))
                };





                Box::new({
                        {{

                                Box::new(api_impl.get_view_config(param_name, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetViewConfigResponse::SuccessfullyRetrievedViewConfigurationInConfig

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::GET_VIEW_CONFIG_SUCCESSFULLY_RETRIEVED_VIEW_CONFIGURATION_IN_CONFIG.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                GetViewConfigResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                GetViewConfigResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                                GetViewConfigResponse::ViewCannotBeFoundOnJenkinsInstance


                                                => {
                                                    response.set_status(StatusCode::try_from(404).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // HeadJenkins - HEAD /api/json
            &hyper::Method::Head if path.matched(paths::ID_API_JSON) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }







                Box::new({
                        {{

                                Box::new(api_impl.head_jenkins(&context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                HeadJenkinsResponse::SuccessfullyRetrievedJenkinsHeaders


                                                    {
                                                        x_jenkins
                                                    }

                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());
                                                    header! { (ResponseXJenkins, "x-jenkins") => [String] }
                                                    response.headers_mut().set(ResponseXJenkins(x_jenkins));

                                                },
                                                HeadJenkinsResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                HeadJenkinsResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // PostCreateItem - POST /createItem
            &hyper::Method::Post if path.matched(paths::ID_CREATEITEM) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }



                // Header parameters
                header! { (RequestJenkinsCrumb, "Jenkins-Crumb") => [String] }
                let param_jenkins_crumb = headers.get::<RequestJenkinsCrumb>().map(|header| header.0.clone());
                header! { (RequestContentType, "Content-Type") => [String] }
                let param_content_type = headers.get::<RequestContentType>().map(|header| header.0.clone());



                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_name = query_params.iter().filter(|e| e.0 == "name").map(|e| e.1.to_owned())

                    .nth(0);
                let param_name = match param_name {
                    Some(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse query parameter name - doesn't match schema: {}", e)))),
                    },
                    None => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body("Missing required query parameter name"))),
                };
                let param_from = query_params.iter().filter(|e| e.0 == "from").map(|e| e.1.to_owned())

                    .nth(0);

                let param_from = param_from.and_then(|param_from| param_from.parse::<>().ok());
                let param_mode = query_params.iter().filter(|e| e.0 == "mode").map(|e| e.1.to_owned())

                    .nth(0);

                let param_mode = param_mode.and_then(|param_mode| param_mode.parse::<>().ok());


                // Body parameters (note that non-required body parameters will ignore garbage
                // values, rather than causing a 400 response). Produce warning header and logs for
                // any unused fields.
                Box::new(body.concat2()
                    .then(move |result| -> Box<Future<Item=Response, Error=Error>> {
                        match result {
                            Ok(body) => {

                                let mut unused_elements = Vec::new();
                                let param_body: Option<String> = if !body.is_empty() {

                                    let deserializer = &mut serde_json::Deserializer::from_slice(&*body);

                                    match serde_ignored::deserialize(deserializer, |path| {
                                            warn!("Ignoring unknown field in body: {}", path);
                                            unused_elements.push(path.to_string());
                                    }) {
                                        Ok(param_body) => param_body,

                                        Err(_) => None,
                                    }

                                } else {
                                    None
                                };


                                Box::new(api_impl.post_create_item(param_name, param_from, param_mode, param_jenkins_crumb, param_content_type, param_body, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        if !unused_elements.is_empty() {
                                            response.headers_mut().set(Warning(format!("Ignoring unknown fields in body: {:?}", unused_elements)));
                                        }

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PostCreateItemResponse::SuccessfullyCreatedANewJob


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                },
                                                PostCreateItemResponse::AnErrorHasOccurred

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(400).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::POST_CREATE_ITEM_AN_ERROR_HAS_OCCURRED.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                PostCreateItemResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                PostCreateItemResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))


                            },
                            Err(e) => Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't read body parameter body: {}", e)))),
                        }
                    })
                ) as Box<Future<Item=Response, Error=Error>>

            },


            // PostCreateView - POST /createView
            &hyper::Method::Post if path.matched(paths::ID_CREATEVIEW) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }



                // Header parameters
                header! { (RequestJenkinsCrumb, "Jenkins-Crumb") => [String] }
                let param_jenkins_crumb = headers.get::<RequestJenkinsCrumb>().map(|header| header.0.clone());
                header! { (RequestContentType, "Content-Type") => [String] }
                let param_content_type = headers.get::<RequestContentType>().map(|header| header.0.clone());



                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_name = query_params.iter().filter(|e| e.0 == "name").map(|e| e.1.to_owned())

                    .nth(0);
                let param_name = match param_name {
                    Some(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse query parameter name - doesn't match schema: {}", e)))),
                    },
                    None => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body("Missing required query parameter name"))),
                };


                // Body parameters (note that non-required body parameters will ignore garbage
                // values, rather than causing a 400 response). Produce warning header and logs for
                // any unused fields.
                Box::new(body.concat2()
                    .then(move |result| -> Box<Future<Item=Response, Error=Error>> {
                        match result {
                            Ok(body) => {

                                let mut unused_elements = Vec::new();
                                let param_body: Option<String> = if !body.is_empty() {

                                    let deserializer = &mut serde_json::Deserializer::from_slice(&*body);

                                    match serde_ignored::deserialize(deserializer, |path| {
                                            warn!("Ignoring unknown field in body: {}", path);
                                            unused_elements.push(path.to_string());
                                    }) {
                                        Ok(param_body) => param_body,

                                        Err(_) => None,
                                    }

                                } else {
                                    None
                                };


                                Box::new(api_impl.post_create_view(param_name, param_jenkins_crumb, param_content_type, param_body, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        if !unused_elements.is_empty() {
                                            response.headers_mut().set(Warning(format!("Ignoring unknown fields in body: {:?}", unused_elements)));
                                        }

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PostCreateViewResponse::SuccessfullyCreatedTheView


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                },
                                                PostCreateViewResponse::AnErrorHasOccurred

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(400).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::POST_CREATE_VIEW_AN_ERROR_HAS_OCCURRED.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                PostCreateViewResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                PostCreateViewResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))


                            },
                            Err(e) => Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't read body parameter body: {}", e)))),
                        }
                    })
                ) as Box<Future<Item=Response, Error=Error>>

            },


            // PostJobBuild - POST /job/{name}/build
            &hyper::Method::Post if path.matched(paths::ID_JOB_NAME_BUILD) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_JOB_NAME_BUILD
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE JOB_NAME_BUILD in set but failed match against \"{}\"", path, paths::REGEX_JOB_NAME_BUILD.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter name: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"]))))
                };

                // Header parameters
                header! { (RequestJenkinsCrumb, "Jenkins-Crumb") => [String] }
                let param_jenkins_crumb = headers.get::<RequestJenkinsCrumb>().map(|header| header.0.clone());



                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_json = query_params.iter().filter(|e| e.0 == "json").map(|e| e.1.to_owned())

                    .nth(0);
                let param_json = match param_json {
                    Some(param_json) => match param_json.parse::<String>() {
                        Ok(param_json) => param_json,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse query parameter json - doesn't match schema: {}", e)))),
                    },
                    None => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body("Missing required query parameter json"))),
                };
                let param_token = query_params.iter().filter(|e| e.0 == "token").map(|e| e.1.to_owned())

                    .nth(0);

                let param_token = param_token.and_then(|param_token| param_token.parse::<>().ok());



                Box::new({
                        {{

                                Box::new(api_impl.post_job_build(param_name, param_json, param_token, param_jenkins_crumb, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PostJobBuildResponse::SuccessfullyBuiltTheJob


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                },
                                                PostJobBuildResponse::SuccessfullyBuiltTheJob


                                                => {
                                                    response.set_status(StatusCode::try_from(201).unwrap());

                                                },
                                                PostJobBuildResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                PostJobBuildResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                                PostJobBuildResponse::JobCannotBeFoundOnJenkinsInstance


                                                => {
                                                    response.set_status(StatusCode::try_from(404).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // PostJobConfig - POST /job/{name}/config.xml
            &hyper::Method::Post if path.matched(paths::ID_JOB_NAME_CONFIG_XML) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_JOB_NAME_CONFIG_XML
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE JOB_NAME_CONFIG_XML in set but failed match against \"{}\"", path, paths::REGEX_JOB_NAME_CONFIG_XML.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter name: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"]))))
                };

                // Header parameters
                header! { (RequestJenkinsCrumb, "Jenkins-Crumb") => [String] }
                let param_jenkins_crumb = headers.get::<RequestJenkinsCrumb>().map(|header| header.0.clone());




                // Body parameters (note that non-required body parameters will ignore garbage
                // values, rather than causing a 400 response). Produce warning header and logs for
                // any unused fields.
                Box::new(body.concat2()
                    .then(move |result| -> Box<Future<Item=Response, Error=Error>> {
                        match result {
                            Ok(body) => {

                                let mut unused_elements = Vec::new();
                                let param_body: Option<String> = if !body.is_empty() {

                                    let deserializer = &mut serde_json::Deserializer::from_slice(&*body);

                                    match serde_ignored::deserialize(deserializer, |path| {
                                            warn!("Ignoring unknown field in body: {}", path);
                                            unused_elements.push(path.to_string());
                                    }) {
                                        Ok(param_body) => param_body,
                                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse body parameter body - doesn't match schema: {}", e)))),
                                    }

                                } else {
                                    None
                                };
                                let param_body = match param_body {
                                    Some(param_body) => param_body,
                                    None => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body("Missing required body parameter body"))),
                                };


                                Box::new(api_impl.post_job_config(param_name, param_body, param_jenkins_crumb, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        if !unused_elements.is_empty() {
                                            response.headers_mut().set(Warning(format!("Ignoring unknown fields in body: {:?}", unused_elements)));
                                        }

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PostJobConfigResponse::SuccessfullyRetrievedJobConfigurationInConfig


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                },
                                                PostJobConfigResponse::AnErrorHasOccurred

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(400).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::POST_JOB_CONFIG_AN_ERROR_HAS_OCCURRED.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                PostJobConfigResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                PostJobConfigResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                                PostJobConfigResponse::JobCannotBeFoundOnJenkinsInstance


                                                => {
                                                    response.set_status(StatusCode::try_from(404).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))


                            },
                            Err(e) => Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't read body parameter body: {}", e)))),
                        }
                    })
                ) as Box<Future<Item=Response, Error=Error>>

            },


            // PostJobDelete - POST /job/{name}/doDelete
            &hyper::Method::Post if path.matched(paths::ID_JOB_NAME_DODELETE) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_JOB_NAME_DODELETE
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE JOB_NAME_DODELETE in set but failed match against \"{}\"", path, paths::REGEX_JOB_NAME_DODELETE.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter name: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"]))))
                };

                // Header parameters
                header! { (RequestJenkinsCrumb, "Jenkins-Crumb") => [String] }
                let param_jenkins_crumb = headers.get::<RequestJenkinsCrumb>().map(|header| header.0.clone());





                Box::new({
                        {{

                                Box::new(api_impl.post_job_delete(param_name, param_jenkins_crumb, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PostJobDeleteResponse::SuccessfullyDeletedTheJob


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                },
                                                PostJobDeleteResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                PostJobDeleteResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                                PostJobDeleteResponse::JobCannotBeFoundOnJenkinsInstance


                                                => {
                                                    response.set_status(StatusCode::try_from(404).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // PostJobDisable - POST /job/{name}/disable
            &hyper::Method::Post if path.matched(paths::ID_JOB_NAME_DISABLE) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_JOB_NAME_DISABLE
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE JOB_NAME_DISABLE in set but failed match against \"{}\"", path, paths::REGEX_JOB_NAME_DISABLE.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter name: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"]))))
                };

                // Header parameters
                header! { (RequestJenkinsCrumb, "Jenkins-Crumb") => [String] }
                let param_jenkins_crumb = headers.get::<RequestJenkinsCrumb>().map(|header| header.0.clone());





                Box::new({
                        {{

                                Box::new(api_impl.post_job_disable(param_name, param_jenkins_crumb, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PostJobDisableResponse::SuccessfullyDisabledTheJob


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                },
                                                PostJobDisableResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                PostJobDisableResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                                PostJobDisableResponse::JobCannotBeFoundOnJenkinsInstance


                                                => {
                                                    response.set_status(StatusCode::try_from(404).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // PostJobEnable - POST /job/{name}/enable
            &hyper::Method::Post if path.matched(paths::ID_JOB_NAME_ENABLE) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_JOB_NAME_ENABLE
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE JOB_NAME_ENABLE in set but failed match against \"{}\"", path, paths::REGEX_JOB_NAME_ENABLE.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter name: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"]))))
                };

                // Header parameters
                header! { (RequestJenkinsCrumb, "Jenkins-Crumb") => [String] }
                let param_jenkins_crumb = headers.get::<RequestJenkinsCrumb>().map(|header| header.0.clone());





                Box::new({
                        {{

                                Box::new(api_impl.post_job_enable(param_name, param_jenkins_crumb, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PostJobEnableResponse::SuccessfullyEnabledTheJob


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                },
                                                PostJobEnableResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                PostJobEnableResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                                PostJobEnableResponse::JobCannotBeFoundOnJenkinsInstance


                                                => {
                                                    response.set_status(StatusCode::try_from(404).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // PostJobLastBuildStop - POST /job/{name}/lastBuild/stop
            &hyper::Method::Post if path.matched(paths::ID_JOB_NAME_LASTBUILD_STOP) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_JOB_NAME_LASTBUILD_STOP
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE JOB_NAME_LASTBUILD_STOP in set but failed match against \"{}\"", path, paths::REGEX_JOB_NAME_LASTBUILD_STOP.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter name: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"]))))
                };

                // Header parameters
                header! { (RequestJenkinsCrumb, "Jenkins-Crumb") => [String] }
                let param_jenkins_crumb = headers.get::<RequestJenkinsCrumb>().map(|header| header.0.clone());





                Box::new({
                        {{

                                Box::new(api_impl.post_job_last_build_stop(param_name, param_jenkins_crumb, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PostJobLastBuildStopResponse::SuccessfullyStoppedTheJob


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                },
                                                PostJobLastBuildStopResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                PostJobLastBuildStopResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                                PostJobLastBuildStopResponse::JobCannotBeFoundOnJenkinsInstance


                                                => {
                                                    response.set_status(StatusCode::try_from(404).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))

                        }}
                }) as Box<Future<Item=Response, Error=Error>>


            },


            // PostViewConfig - POST /view/{name}/config.xml
            &hyper::Method::Post if path.matched(paths::ID_VIEW_NAME_CONFIG_XML) => {
                {
                    let authorization = match (&context as &Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Box::new(future::ok(Response::new()
                                                .with_status(StatusCode::Forbidden)
                                                .with_body("Unauthenticated"))),
                    };

                }


                // Path parameters
                let path = uri.path().to_string();
                let path_params =
                    paths::REGEX_VIEW_NAME_CONFIG_XML
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE VIEW_NAME_CONFIG_XML in set but failed match against \"{}\"", path, paths::REGEX_VIEW_NAME_CONFIG_XML.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse path parameter name: {}", e)))),
                    },
                    Err(_) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"]))))
                };

                // Header parameters
                header! { (RequestJenkinsCrumb, "Jenkins-Crumb") => [String] }
                let param_jenkins_crumb = headers.get::<RequestJenkinsCrumb>().map(|header| header.0.clone());




                // Body parameters (note that non-required body parameters will ignore garbage
                // values, rather than causing a 400 response). Produce warning header and logs for
                // any unused fields.
                Box::new(body.concat2()
                    .then(move |result| -> Box<Future<Item=Response, Error=Error>> {
                        match result {
                            Ok(body) => {

                                let mut unused_elements = Vec::new();
                                let param_body: Option<String> = if !body.is_empty() {

                                    let deserializer = &mut serde_json::Deserializer::from_slice(&*body);

                                    match serde_ignored::deserialize(deserializer, |path| {
                                            warn!("Ignoring unknown field in body: {}", path);
                                            unused_elements.push(path.to_string());
                                    }) {
                                        Ok(param_body) => param_body,
                                        Err(e) => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't parse body parameter body - doesn't match schema: {}", e)))),
                                    }

                                } else {
                                    None
                                };
                                let param_body = match param_body {
                                    Some(param_body) => param_body,
                                    None => return Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body("Missing required body parameter body"))),
                                };


                                Box::new(api_impl.post_view_config(param_name, param_body, param_jenkins_crumb, &context)
                                    .then(move |result| {
                                        let mut response = Response::new();
                                        response.headers_mut().set(XSpanId((&context as &Has<XSpanIdString>).get().0.to_string()));

                                        if !unused_elements.is_empty() {
                                            response.headers_mut().set(Warning(format!("Ignoring unknown fields in body: {:?}", unused_elements)));
                                        }

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PostViewConfigResponse::SuccessfullyUpdatedViewConfiguration


                                                => {
                                                    response.set_status(StatusCode::try_from(200).unwrap());

                                                },
                                                PostViewConfigResponse::AnErrorHasOccurred

                                                    (body)


                                                => {
                                                    response.set_status(StatusCode::try_from(400).unwrap());

                                                    response.headers_mut().set(ContentType(mimetypes::responses::POST_VIEW_CONFIG_AN_ERROR_HAS_OCCURRED.clone()));


                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");

                                                    response.set_body(body);
                                                },
                                                PostViewConfigResponse::AuthenticationFailed


                                                => {
                                                    response.set_status(StatusCode::try_from(401).unwrap());

                                                },
                                                PostViewConfigResponse::JenkinsRequiresAuthentication


                                                => {
                                                    response.set_status(StatusCode::try_from(403).unwrap());

                                                },
                                                PostViewConfigResponse::ViewCannotBeFoundOnJenkinsInstance


                                                => {
                                                    response.set_status(StatusCode::try_from(404).unwrap());

                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                response.set_status(StatusCode::InternalServerError);
                                                response.set_body("An internal error occurred");
                                            },
                                        }

                                        future::ok(response)
                                    }
                                ))


                            },
                            Err(e) => Box::new(future::ok(Response::new().with_status(StatusCode::BadRequest).with_body(format!("Couldn't read body parameter body: {}", e)))),
                        }
                    })
                ) as Box<Future<Item=Response, Error=Error>>

            },


            _ => Box::new(future::ok(Response::new().with_status(StatusCode::NotFound))) as Box<Future<Item=Response, Error=Error>>,
        }
    }
}

impl<T, C> Clone for Service<T, C>
{
    fn clone(&self) -> Self {
        Service {
            api_impl: self.api_impl.clone(),
            marker: self.marker.clone(),
        }
    }
}
