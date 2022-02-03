use futures::{future, future::BoxFuture, Stream, stream, future::FutureExt, stream::TryStreamExt};
use hyper::{Request, Response, StatusCode, Body, HeaderMap};
use hyper::header::{HeaderName, HeaderValue, CONTENT_TYPE};
use log::warn;
#[allow(unused_imports)]
use std::convert::{TryFrom, TryInto};
use std::error::Error;
use std::future::Future;
use std::marker::PhantomData;
use std::task::{Context, Poll};
use swagger::{ApiError, BodyExt, Has, RequestParser, XSpanIdString};
pub use swagger::auth::Authorization;
use swagger::auth::Scopes;
use url::form_urlencoded;

#[allow(unused_imports)]
use crate::models;
use crate::header;

pub use crate::context;

type ServiceFuture = BoxFuture<'static, Result<Response<Body>, crate::ServiceError>>;

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

mod paths {
    use lazy_static::lazy_static;

    lazy_static! {
        pub static ref GLOBAL_REGEX_SET: regex::RegexSet = regex::RegexSet::new(vec![
            r"^/api/json$",
            r"^/blue/rest/classes/$",
            r"^/blue/rest/classes/(?P<class>[^/?#]*)$",
            r"^/blue/rest/organizations/$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<folder>[^/?#]*)/$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<folder>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/activities$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/branches$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/branches/(?P<branch>[^/?#]*)/$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/branches/(?P<branch>[^/?#]*)/runs/(?P<run>[^/?#]*)$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/favorite$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/queue$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/queue/(?P<queue>[^/?#]*)$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/log$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/nodes$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/nodes/(?P<node>[^/?#]*)$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/nodes/(?P<node>[^/?#]*)/steps$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/nodes/(?P<node>[^/?#]*)/steps/(?P<step>[^/?#]*)$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/nodes/(?P<node>[^/?#]*)/steps/(?P<step>[^/?#]*)/log$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/replay$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/stop$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/scm/(?P<scm>[^/?#]*)$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/scm/(?P<scm>[^/?#]*)/organizations$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/scm/(?P<scm>[^/?#]*)/organizations/(?P<scmOrganisation>[^/?#]*)/repositories$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/scm/(?P<scm>[^/?#]*)/organizations/(?P<scmOrganisation>[^/?#]*)/repositories/(?P<repository>[^/?#]*)$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/user/$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/users/$",
            r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/users/(?P<user>[^/?#]*)$",
            r"^/blue/rest/search/$",
            r"^/blue/rest/users/(?P<user>[^/?#]*)/favorites$",
            r"^/computer/api/json$",
            r"^/createItem$",
            r"^/createView$",
            r"^/crumbIssuer/api/json$",
            r"^/job/(?P<name>[^/?#]*)/api/json$",
            r"^/job/(?P<name>[^/?#]*)/build$",
            r"^/job/(?P<name>[^/?#]*)/config.xml$",
            r"^/job/(?P<name>[^/?#]*)/disable$",
            r"^/job/(?P<name>[^/?#]*)/doDelete$",
            r"^/job/(?P<name>[^/?#]*)/enable$",
            r"^/job/(?P<name>[^/?#]*)/lastBuild/api/json$",
            r"^/job/(?P<name>[^/?#]*)/lastBuild/stop$",
            r"^/job/(?P<name>[^/?#]*)/(?P<number>[^/?#]*)/logText/progressiveText$",
            r"^/jwt-auth/jwks/(?P<key>[^/?#]*)$",
            r"^/jwt-auth/token$",
            r"^/queue/api/json$",
            r"^/queue/item/(?P<number>[^/?#]*)/api/json$",
            r"^/view/(?P<name>[^/?#]*)/api/json$",
            r"^/view/(?P<name>[^/?#]*)/config.xml$"
        ])
        .expect("Unable to create global regex set");
    }
    pub(crate) static ID_API_JSON: usize = 0;
    pub(crate) static ID_BLUE_REST_CLASSES_: usize = 1;
    pub(crate) static ID_BLUE_REST_CLASSES_CLASS: usize = 2;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_CLASSES_CLASS: regex::Regex =
            regex::Regex::new(r"^/blue/rest/classes/(?P<class>[^/?#]*)$")
                .expect("Unable to create regex for BLUE_REST_CLASSES_CLASS");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_: usize = 3;
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION: usize = 4;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_: usize = 5;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_: usize = 6;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<folder>[^/?#]*)/$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_PIPELINES_PIPELINE: usize = 7;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_PIPELINES_PIPELINE: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<folder>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_PIPELINES_PIPELINE");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE: usize = 8;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_ACTIVITIES: usize = 9;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_ACTIVITIES: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/activities$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_ACTIVITIES");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES: usize = 10;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/branches$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_: usize = 11;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/branches/(?P<branch>[^/?#]*)/$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_RUNS_RUN: usize = 12;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_RUNS_RUN: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/branches/(?P<branch>[^/?#]*)/runs/(?P<run>[^/?#]*)$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_RUNS_RUN");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_FAVORITE: usize = 13;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_FAVORITE: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/favorite$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_FAVORITE");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE: usize = 14;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/queue$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE_QUEUE: usize = 15;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE_QUEUE: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/queue/(?P<queue>[^/?#]*)$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE_QUEUE");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS: usize = 16;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN: usize = 17;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_LOG: usize = 18;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_LOG: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/log$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_LOG");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES: usize = 19;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/nodes$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE: usize = 20;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/nodes/(?P<node>[^/?#]*)$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS: usize = 21;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/nodes/(?P<node>[^/?#]*)/steps$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP: usize = 22;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/nodes/(?P<node>[^/?#]*)/steps/(?P<step>[^/?#]*)$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP_LOG: usize = 23;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP_LOG: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/nodes/(?P<node>[^/?#]*)/steps/(?P<step>[^/?#]*)/log$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP_LOG");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_REPLAY: usize = 24;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_REPLAY: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/replay$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_REPLAY");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_STOP: usize = 25;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_STOP: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/pipelines/(?P<pipeline>[^/?#]*)/runs/(?P<run>[^/?#]*)/stop$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_STOP");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM: usize = 26;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/scm/(?P<scm>[^/?#]*)$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS: usize = 27;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/scm/(?P<scm>[^/?#]*)/organizations$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES: usize = 28;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/scm/(?P<scm>[^/?#]*)/organizations/(?P<scmOrganisation>[^/?#]*)/repositories$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES_REPOSITORY: usize = 29;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES_REPOSITORY: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/scm/(?P<scm>[^/?#]*)/organizations/(?P<scmOrganisation>[^/?#]*)/repositories/(?P<repository>[^/?#]*)$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES_REPOSITORY");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USER_: usize = 30;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USER_: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/user/$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_USER_");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_: usize = 31;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/users/$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_");
    }
    pub(crate) static ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_USER: usize = 32;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_USER: regex::Regex =
            regex::Regex::new(r"^/blue/rest/organizations/(?P<organization>[^/?#]*)/users/(?P<user>[^/?#]*)$")
                .expect("Unable to create regex for BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_USER");
    }
    pub(crate) static ID_BLUE_REST_SEARCH_: usize = 33;
    pub(crate) static ID_BLUE_REST_USERS_USER_FAVORITES: usize = 34;
    lazy_static! {
        pub static ref REGEX_BLUE_REST_USERS_USER_FAVORITES: regex::Regex =
            regex::Regex::new(r"^/blue/rest/users/(?P<user>[^/?#]*)/favorites$")
                .expect("Unable to create regex for BLUE_REST_USERS_USER_FAVORITES");
    }
    pub(crate) static ID_COMPUTER_API_JSON: usize = 35;
    pub(crate) static ID_CREATEITEM: usize = 36;
    pub(crate) static ID_CREATEVIEW: usize = 37;
    pub(crate) static ID_CRUMBISSUER_API_JSON: usize = 38;
    pub(crate) static ID_JOB_NAME_API_JSON: usize = 39;
    lazy_static! {
        pub static ref REGEX_JOB_NAME_API_JSON: regex::Regex =
            regex::Regex::new(r"^/job/(?P<name>[^/?#]*)/api/json$")
                .expect("Unable to create regex for JOB_NAME_API_JSON");
    }
    pub(crate) static ID_JOB_NAME_BUILD: usize = 40;
    lazy_static! {
        pub static ref REGEX_JOB_NAME_BUILD: regex::Regex =
            regex::Regex::new(r"^/job/(?P<name>[^/?#]*)/build$")
                .expect("Unable to create regex for JOB_NAME_BUILD");
    }
    pub(crate) static ID_JOB_NAME_CONFIG_XML: usize = 41;
    lazy_static! {
        pub static ref REGEX_JOB_NAME_CONFIG_XML: regex::Regex =
            regex::Regex::new(r"^/job/(?P<name>[^/?#]*)/config.xml$")
                .expect("Unable to create regex for JOB_NAME_CONFIG_XML");
    }
    pub(crate) static ID_JOB_NAME_DISABLE: usize = 42;
    lazy_static! {
        pub static ref REGEX_JOB_NAME_DISABLE: regex::Regex =
            regex::Regex::new(r"^/job/(?P<name>[^/?#]*)/disable$")
                .expect("Unable to create regex for JOB_NAME_DISABLE");
    }
    pub(crate) static ID_JOB_NAME_DODELETE: usize = 43;
    lazy_static! {
        pub static ref REGEX_JOB_NAME_DODELETE: regex::Regex =
            regex::Regex::new(r"^/job/(?P<name>[^/?#]*)/doDelete$")
                .expect("Unable to create regex for JOB_NAME_DODELETE");
    }
    pub(crate) static ID_JOB_NAME_ENABLE: usize = 44;
    lazy_static! {
        pub static ref REGEX_JOB_NAME_ENABLE: regex::Regex =
            regex::Regex::new(r"^/job/(?P<name>[^/?#]*)/enable$")
                .expect("Unable to create regex for JOB_NAME_ENABLE");
    }
    pub(crate) static ID_JOB_NAME_LASTBUILD_API_JSON: usize = 45;
    lazy_static! {
        pub static ref REGEX_JOB_NAME_LASTBUILD_API_JSON: regex::Regex =
            regex::Regex::new(r"^/job/(?P<name>[^/?#]*)/lastBuild/api/json$")
                .expect("Unable to create regex for JOB_NAME_LASTBUILD_API_JSON");
    }
    pub(crate) static ID_JOB_NAME_LASTBUILD_STOP: usize = 46;
    lazy_static! {
        pub static ref REGEX_JOB_NAME_LASTBUILD_STOP: regex::Regex =
            regex::Regex::new(r"^/job/(?P<name>[^/?#]*)/lastBuild/stop$")
                .expect("Unable to create regex for JOB_NAME_LASTBUILD_STOP");
    }
    pub(crate) static ID_JOB_NAME_NUMBER_LOGTEXT_PROGRESSIVETEXT: usize = 47;
    lazy_static! {
        pub static ref REGEX_JOB_NAME_NUMBER_LOGTEXT_PROGRESSIVETEXT: regex::Regex =
            regex::Regex::new(r"^/job/(?P<name>[^/?#]*)/(?P<number>[^/?#]*)/logText/progressiveText$")
                .expect("Unable to create regex for JOB_NAME_NUMBER_LOGTEXT_PROGRESSIVETEXT");
    }
    pub(crate) static ID_JWT_AUTH_JWKS_KEY: usize = 48;
    lazy_static! {
        pub static ref REGEX_JWT_AUTH_JWKS_KEY: regex::Regex =
            regex::Regex::new(r"^/jwt-auth/jwks/(?P<key>[^/?#]*)$")
                .expect("Unable to create regex for JWT_AUTH_JWKS_KEY");
    }
    pub(crate) static ID_JWT_AUTH_TOKEN: usize = 49;
    pub(crate) static ID_QUEUE_API_JSON: usize = 50;
    pub(crate) static ID_QUEUE_ITEM_NUMBER_API_JSON: usize = 51;
    lazy_static! {
        pub static ref REGEX_QUEUE_ITEM_NUMBER_API_JSON: regex::Regex =
            regex::Regex::new(r"^/queue/item/(?P<number>[^/?#]*)/api/json$")
                .expect("Unable to create regex for QUEUE_ITEM_NUMBER_API_JSON");
    }
    pub(crate) static ID_VIEW_NAME_API_JSON: usize = 52;
    lazy_static! {
        pub static ref REGEX_VIEW_NAME_API_JSON: regex::Regex =
            regex::Regex::new(r"^/view/(?P<name>[^/?#]*)/api/json$")
                .expect("Unable to create regex for VIEW_NAME_API_JSON");
    }
    pub(crate) static ID_VIEW_NAME_CONFIG_XML: usize = 53;
    lazy_static! {
        pub static ref REGEX_VIEW_NAME_CONFIG_XML: regex::Regex =
            regex::Regex::new(r"^/view/(?P<name>[^/?#]*)/config.xml$")
                .expect("Unable to create regex for VIEW_NAME_CONFIG_XML");
    }
}

pub struct MakeService<T, C> where
    T: Api<C> + Clone + Send + 'static,
    C: Has<XSpanIdString> + Has<Option<Authorization>> + Send + Sync + 'static
{
    api_impl: T,
    marker: PhantomData<C>,
}

impl<T, C> MakeService<T, C> where
    T: Api<C> + Clone + Send + 'static,
    C: Has<XSpanIdString> + Has<Option<Authorization>> + Send + Sync + 'static
{
    pub fn new(api_impl: T) -> Self {
        MakeService {
            api_impl,
            marker: PhantomData
        }
    }
}

impl<T, C, Target> hyper::service::Service<Target> for MakeService<T, C> where
    T: Api<C> + Clone + Send + 'static,
    C: Has<XSpanIdString> + Has<Option<Authorization>> + Send + Sync + 'static
{
    type Response = Service<T, C>;
    type Error = crate::ServiceError;
    type Future = future::Ready<Result<Self::Response, Self::Error>>;

    fn poll_ready(&mut self, cx: &mut Context<'_>) -> Poll<Result<(), Self::Error>> {
        Poll::Ready(Ok(()))
    }

    fn call(&mut self, target: Target) -> Self::Future {
        futures::future::ok(Service::new(
            self.api_impl.clone(),
        ))
    }
}

fn method_not_allowed() -> Result<Response<Body>, crate::ServiceError> {
    Ok(
        Response::builder().status(StatusCode::METHOD_NOT_ALLOWED)
            .body(Body::empty())
            .expect("Unable to create Method Not Allowed response")
    )
}

pub struct Service<T, C> where
    T: Api<C> + Clone + Send + 'static,
    C: Has<XSpanIdString> + Has<Option<Authorization>> + Send + Sync + 'static
{
    api_impl: T,
    marker: PhantomData<C>,
}

impl<T, C> Service<T, C> where
    T: Api<C> + Clone + Send + 'static,
    C: Has<XSpanIdString> + Has<Option<Authorization>> + Send + Sync + 'static
{
    pub fn new(api_impl: T) -> Self {
        Service {
            api_impl: api_impl,
            marker: PhantomData
        }
    }
}

impl<T, C> Clone for Service<T, C> where
    T: Api<C> + Clone + Send + 'static,
    C: Has<XSpanIdString> + Has<Option<Authorization>> + Send + Sync + 'static
{
    fn clone(&self) -> Self {
        Service {
            api_impl: self.api_impl.clone(),
            marker: self.marker.clone(),
        }
    }
}

impl<T, C> hyper::service::Service<(Request<Body>, C)> for Service<T, C> where
    T: Api<C> + Clone + Send + Sync + 'static,
    C: Has<XSpanIdString> + Has<Option<Authorization>> + Send + Sync + 'static
{
    type Response = Response<Body>;
    type Error = crate::ServiceError;
    type Future = ServiceFuture;

    fn poll_ready(&mut self, cx: &mut Context) -> Poll<Result<(), Self::Error>> {
        self.api_impl.poll_ready(cx)
    }

    fn call(&mut self, req: (Request<Body>, C)) -> Self::Future { async fn run<T, C>(mut api_impl: T, req: (Request<Body>, C)) -> Result<Response<Body>, crate::ServiceError> where
        T: Api<C> + Clone + Send + 'static,
        C: Has<XSpanIdString> + Has<Option<Authorization>> + Send + Sync + 'static
    {
        let (request, context) = req;
        let (parts, body) = request.into_parts();
        let (method, uri, headers) = (parts.method, parts.uri, parts.headers);
        let path = paths::GLOBAL_REGEX_SET.matches(uri.path());

        match &method {

            // GetCrumb - GET /crumbIssuer/api/json
            &hyper::Method::GET if path.matched(paths::ID_CRUMBISSUER_API_JSON) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                                let result = api_impl.get_crumb(
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetCrumbResponse::SuccessfullyRetrievedCSRFProtectionToken
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_CRUMB_SUCCESSFULLY_RETRIEVED_CSRF_PROTECTION_TOKEN"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetCrumbResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetCrumbResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // DeletePipelineQueueItem - DELETE /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}
            &hyper::Method::DELETE if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE_QUEUE) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE_QUEUE
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE_QUEUE in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE_QUEUE.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter pipeline: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_queue = match percent_encoding::percent_decode(path_params["queue"].as_bytes()).decode_utf8() {
                    Ok(param_queue) => match param_queue.parse::<String>() {
                        Ok(param_queue) => param_queue,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter queue: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["queue"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.delete_pipeline_queue_item(
                                            param_organization,
                                            param_pipeline,
                                            param_queue,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                DeletePipelineQueueItemResponse::SuccessfullyDeletedQueueItem
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                },
                                                DeletePipelineQueueItemResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                DeletePipelineQueueItemResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetAuthenticatedUser - GET /blue/rest/organizations/{organization}/user/
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USER_) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USER_
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_USER_ in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USER_.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_authenticated_user(
                                            param_organization,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetAuthenticatedUserResponse::SuccessfullyRetrievedAuthenticatedUserDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_AUTHENTICATED_USER_SUCCESSFULLY_RETRIEVED_AUTHENTICATED_USER_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetAuthenticatedUserResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetAuthenticatedUserResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetClasses - GET /blue/rest/classes/{class}
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_CLASSES_CLASS) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_CLASSES_CLASS
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_CLASSES_CLASS in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_CLASSES_CLASS.as_str())
                    );

                let param_class = match percent_encoding::percent_decode(path_params["class"].as_bytes()).decode_utf8() {
                    Ok(param_class) => match param_class.parse::<String>() {
                        Ok(param_class) => param_class,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter class: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["class"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_classes(
                                            param_class,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetClassesResponse::SuccessfullyRetrievedClassNames
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_CLASSES_SUCCESSFULLY_RETRIEVED_CLASS_NAMES"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetClassesResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetClassesResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetJsonWebKey - GET /jwt-auth/jwks/{key}
            &hyper::Method::GET if path.matched(paths::ID_JWT_AUTH_JWKS_KEY) => {
                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_JWT_AUTH_JWKS_KEY
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE JWT_AUTH_JWKS_KEY in set but failed match against \"{}\"", path, paths::REGEX_JWT_AUTH_JWKS_KEY.as_str())
                    );

                let param_key = match percent_encoding::percent_decode(path_params["key"].as_bytes()).decode_utf8() {
                    Ok(param_key) => match param_key.parse::<i32>() {
                        Ok(param_key) => param_key,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter key: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["key"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_json_web_key(
                                            param_key,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetJsonWebKeyResponse::SuccessfullyRetrievedJWTToken
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_JSON_WEB_KEY_SUCCESSFULLY_RETRIEVED_JWT_TOKEN"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetJsonWebKeyResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetJsonWebKeyResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetJsonWebToken - GET /jwt-auth/token
            &hyper::Method::GET if path.matched(paths::ID_JWT_AUTH_TOKEN) => {
                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_expiry_time_in_mins = query_params.iter().filter(|e| e.0 == "expiryTimeInMins").map(|e| e.1.to_owned())
                    .nth(0);
                let param_expiry_time_in_mins = match param_expiry_time_in_mins {
                    Some(param_expiry_time_in_mins) => {
                        let param_expiry_time_in_mins =
                            <i32 as std::str::FromStr>::from_str
                                (&param_expiry_time_in_mins);
                        match param_expiry_time_in_mins {
                            Ok(param_expiry_time_in_mins) => Some(param_expiry_time_in_mins),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter expiryTimeInMins - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter expiryTimeInMins")),
                        }
                    },
                    None => None,
                };
                let param_max_expiry_time_in_mins = query_params.iter().filter(|e| e.0 == "maxExpiryTimeInMins").map(|e| e.1.to_owned())
                    .nth(0);
                let param_max_expiry_time_in_mins = match param_max_expiry_time_in_mins {
                    Some(param_max_expiry_time_in_mins) => {
                        let param_max_expiry_time_in_mins =
                            <i32 as std::str::FromStr>::from_str
                                (&param_max_expiry_time_in_mins);
                        match param_max_expiry_time_in_mins {
                            Ok(param_max_expiry_time_in_mins) => Some(param_max_expiry_time_in_mins),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter maxExpiryTimeInMins - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter maxExpiryTimeInMins")),
                        }
                    },
                    None => None,
                };

                                let result = api_impl.get_json_web_token(
                                            param_expiry_time_in_mins,
                                            param_max_expiry_time_in_mins,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetJsonWebTokenResponse::SuccessfullyRetrievedJWTToken
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_JSON_WEB_TOKEN_SUCCESSFULLY_RETRIEVED_JWT_TOKEN"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetJsonWebTokenResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetJsonWebTokenResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetOrganisation - GET /blue/rest/organizations/{organization}
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_organisation(
                                            param_organization,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetOrganisationResponse::SuccessfullyRetrievedPipelineDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_ORGANISATION_SUCCESSFULLY_RETRIEVED_PIPELINE_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetOrganisationResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetOrganisationResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                                GetOrganisationResponse::PipelineCannotBeFoundOnJenkinsInstance
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(404).expect("Unable to turn 404 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetOrganisations - GET /blue/rest/organizations/
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                                let result = api_impl.get_organisations(
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetOrganisationsResponse::SuccessfullyRetrievedPipelinesDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_ORGANISATIONS_SUCCESSFULLY_RETRIEVED_PIPELINES_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetOrganisationsResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetOrganisationsResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetPipeline - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter pipeline: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_pipeline(
                                            param_organization,
                                            param_pipeline,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineResponse::SuccessfullyRetrievedPipelineDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_PIPELINE_SUCCESSFULLY_RETRIEVED_PIPELINE_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetPipelineResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetPipelineResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                                GetPipelineResponse::PipelineCannotBeFoundOnJenkinsInstance
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(404).expect("Unable to turn 404 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetPipelineActivities - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_ACTIVITIES) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_ACTIVITIES
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_ACTIVITIES in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_ACTIVITIES.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter pipeline: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_pipeline_activities(
                                            param_organization,
                                            param_pipeline,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineActivitiesResponse::SuccessfullyRetrievedAllActivitiesDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_PIPELINE_ACTIVITIES_SUCCESSFULLY_RETRIEVED_ALL_ACTIVITIES_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetPipelineActivitiesResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetPipelineActivitiesResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetPipelineBranch - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_ in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter pipeline: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_branch = match percent_encoding::percent_decode(path_params["branch"].as_bytes()).decode_utf8() {
                    Ok(param_branch) => match param_branch.parse::<String>() {
                        Ok(param_branch) => param_branch,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter branch: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["branch"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_pipeline_branch(
                                            param_organization,
                                            param_pipeline,
                                            param_branch,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineBranchResponse::SuccessfullyRetrievedBranchDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_PIPELINE_BRANCH_SUCCESSFULLY_RETRIEVED_BRANCH_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetPipelineBranchResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetPipelineBranchResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetPipelineBranchRun - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_RUNS_RUN) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_RUNS_RUN
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_RUNS_RUN in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_RUNS_RUN.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter pipeline: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_branch = match percent_encoding::percent_decode(path_params["branch"].as_bytes()).decode_utf8() {
                    Ok(param_branch) => match param_branch.parse::<String>() {
                        Ok(param_branch) => param_branch,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter branch: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["branch"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_run = match percent_encoding::percent_decode(path_params["run"].as_bytes()).decode_utf8() {
                    Ok(param_run) => match param_run.parse::<String>() {
                        Ok(param_run) => param_run,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter run: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["run"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_pipeline_branch_run(
                                            param_organization,
                                            param_pipeline,
                                            param_branch,
                                            param_run,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineBranchRunResponse::SuccessfullyRetrievedRunDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_PIPELINE_BRANCH_RUN_SUCCESSFULLY_RETRIEVED_RUN_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetPipelineBranchRunResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetPipelineBranchRunResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetPipelineBranches - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter pipeline: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_pipeline_branches(
                                            param_organization,
                                            param_pipeline,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineBranchesResponse::SuccessfullyRetrievedAllBranchesDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_PIPELINE_BRANCHES_SUCCESSFULLY_RETRIEVED_ALL_BRANCHES_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetPipelineBranchesResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetPipelineBranchesResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetPipelineFolder - GET /blue/rest/organizations/{organization}/pipelines/{folder}/
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_ in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_folder = match percent_encoding::percent_decode(path_params["folder"].as_bytes()).decode_utf8() {
                    Ok(param_folder) => match param_folder.parse::<String>() {
                        Ok(param_folder) => param_folder,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter folder: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["folder"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_pipeline_folder(
                                            param_organization,
                                            param_folder,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineFolderResponse::SuccessfullyRetrievedFolderDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_PIPELINE_FOLDER_SUCCESSFULLY_RETRIEVED_FOLDER_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetPipelineFolderResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetPipelineFolderResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetPipelineFolderPipeline - GET /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_PIPELINES_PIPELINE) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_PIPELINES_PIPELINE
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_PIPELINES_PIPELINE in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_PIPELINES_PIPELINE.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter pipeline: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_folder = match percent_encoding::percent_decode(path_params["folder"].as_bytes()).decode_utf8() {
                    Ok(param_folder) => match param_folder.parse::<String>() {
                        Ok(param_folder) => param_folder,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter folder: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["folder"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_pipeline_folder_pipeline(
                                            param_organization,
                                            param_pipeline,
                                            param_folder,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineFolderPipelineResponse::SuccessfullyRetrievedPipelineDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_PIPELINE_FOLDER_PIPELINE_SUCCESSFULLY_RETRIEVED_PIPELINE_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetPipelineFolderPipelineResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetPipelineFolderPipelineResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetPipelineQueue - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter pipeline: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_pipeline_queue(
                                            param_organization,
                                            param_pipeline,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineQueueResponse::SuccessfullyRetrievedQueueDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_PIPELINE_QUEUE_SUCCESSFULLY_RETRIEVED_QUEUE_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetPipelineQueueResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetPipelineQueueResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetPipelineRun - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter pipeline: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_run = match percent_encoding::percent_decode(path_params["run"].as_bytes()).decode_utf8() {
                    Ok(param_run) => match param_run.parse::<String>() {
                        Ok(param_run) => param_run,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter run: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["run"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_pipeline_run(
                                            param_organization,
                                            param_pipeline,
                                            param_run,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunResponse::SuccessfullyRetrievedRunDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_PIPELINE_RUN_SUCCESSFULLY_RETRIEVED_RUN_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetPipelineRunResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetPipelineRunResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetPipelineRunLog - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_LOG) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_LOG
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_LOG in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_LOG.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter pipeline: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_run = match percent_encoding::percent_decode(path_params["run"].as_bytes()).decode_utf8() {
                    Ok(param_run) => match param_run.parse::<String>() {
                        Ok(param_run) => param_run,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter run: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["run"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_start = query_params.iter().filter(|e| e.0 == "start").map(|e| e.1.to_owned())
                    .nth(0);
                let param_start = match param_start {
                    Some(param_start) => {
                        let param_start =
                            <i32 as std::str::FromStr>::from_str
                                (&param_start);
                        match param_start {
                            Ok(param_start) => Some(param_start),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter start - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter start")),
                        }
                    },
                    None => None,
                };
                let param_download = query_params.iter().filter(|e| e.0 == "download").map(|e| e.1.to_owned())
                    .nth(0);
                let param_download = match param_download {
                    Some(param_download) => {
                        let param_download =
                            <bool as std::str::FromStr>::from_str
                                (&param_download);
                        match param_download {
                            Ok(param_download) => Some(param_download),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter download - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter download")),
                        }
                    },
                    None => None,
                };

                                let result = api_impl.get_pipeline_run_log(
                                            param_organization,
                                            param_pipeline,
                                            param_run,
                                            param_start,
                                            param_download,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunLogResponse::SuccessfullyRetrievedPipelineRunLog
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_PIPELINE_RUN_LOG_SUCCESSFULLY_RETRIEVED_PIPELINE_RUN_LOG"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetPipelineRunLogResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetPipelineRunLogResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetPipelineRunNode - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter pipeline: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_run = match percent_encoding::percent_decode(path_params["run"].as_bytes()).decode_utf8() {
                    Ok(param_run) => match param_run.parse::<String>() {
                        Ok(param_run) => param_run,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter run: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["run"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_node = match percent_encoding::percent_decode(path_params["node"].as_bytes()).decode_utf8() {
                    Ok(param_node) => match param_node.parse::<String>() {
                        Ok(param_node) => param_node,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter node: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["node"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_pipeline_run_node(
                                            param_organization,
                                            param_pipeline,
                                            param_run,
                                            param_node,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunNodeResponse::SuccessfullyRetrievedRunNodeDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_PIPELINE_RUN_NODE_SUCCESSFULLY_RETRIEVED_RUN_NODE_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetPipelineRunNodeResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetPipelineRunNodeResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetPipelineRunNodeStep - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter pipeline: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_run = match percent_encoding::percent_decode(path_params["run"].as_bytes()).decode_utf8() {
                    Ok(param_run) => match param_run.parse::<String>() {
                        Ok(param_run) => param_run,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter run: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["run"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_node = match percent_encoding::percent_decode(path_params["node"].as_bytes()).decode_utf8() {
                    Ok(param_node) => match param_node.parse::<String>() {
                        Ok(param_node) => param_node,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter node: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["node"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_step = match percent_encoding::percent_decode(path_params["step"].as_bytes()).decode_utf8() {
                    Ok(param_step) => match param_step.parse::<String>() {
                        Ok(param_step) => param_step,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter step: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["step"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_pipeline_run_node_step(
                                            param_organization,
                                            param_pipeline,
                                            param_run,
                                            param_node,
                                            param_step,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunNodeStepResponse::SuccessfullyRetrievedRunNodeStepDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_PIPELINE_RUN_NODE_STEP_SUCCESSFULLY_RETRIEVED_RUN_NODE_STEP_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetPipelineRunNodeStepResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetPipelineRunNodeStepResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetPipelineRunNodeStepLog - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP_LOG) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP_LOG
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP_LOG in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP_LOG.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter pipeline: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_run = match percent_encoding::percent_decode(path_params["run"].as_bytes()).decode_utf8() {
                    Ok(param_run) => match param_run.parse::<String>() {
                        Ok(param_run) => param_run,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter run: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["run"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_node = match percent_encoding::percent_decode(path_params["node"].as_bytes()).decode_utf8() {
                    Ok(param_node) => match param_node.parse::<String>() {
                        Ok(param_node) => param_node,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter node: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["node"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_step = match percent_encoding::percent_decode(path_params["step"].as_bytes()).decode_utf8() {
                    Ok(param_step) => match param_step.parse::<String>() {
                        Ok(param_step) => param_step,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter step: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["step"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_pipeline_run_node_step_log(
                                            param_organization,
                                            param_pipeline,
                                            param_run,
                                            param_node,
                                            param_step,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunNodeStepLogResponse::SuccessfullyRetrievedPipelineRunNodeStepLog
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_PIPELINE_RUN_NODE_STEP_LOG_SUCCESSFULLY_RETRIEVED_PIPELINE_RUN_NODE_STEP_LOG"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetPipelineRunNodeStepLogResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetPipelineRunNodeStepLogResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetPipelineRunNodeSteps - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter pipeline: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_run = match percent_encoding::percent_decode(path_params["run"].as_bytes()).decode_utf8() {
                    Ok(param_run) => match param_run.parse::<String>() {
                        Ok(param_run) => param_run,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter run: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["run"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_node = match percent_encoding::percent_decode(path_params["node"].as_bytes()).decode_utf8() {
                    Ok(param_node) => match param_node.parse::<String>() {
                        Ok(param_node) => param_node,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter node: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["node"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_pipeline_run_node_steps(
                                            param_organization,
                                            param_pipeline,
                                            param_run,
                                            param_node,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunNodeStepsResponse::SuccessfullyRetrievedRunNodeStepsDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_PIPELINE_RUN_NODE_STEPS_SUCCESSFULLY_RETRIEVED_RUN_NODE_STEPS_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetPipelineRunNodeStepsResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetPipelineRunNodeStepsResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetPipelineRunNodes - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter pipeline: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_run = match percent_encoding::percent_decode(path_params["run"].as_bytes()).decode_utf8() {
                    Ok(param_run) => match param_run.parse::<String>() {
                        Ok(param_run) => param_run,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter run: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["run"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_pipeline_run_nodes(
                                            param_organization,
                                            param_pipeline,
                                            param_run,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunNodesResponse::SuccessfullyRetrievedRunNodesDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_PIPELINE_RUN_NODES_SUCCESSFULLY_RETRIEVED_RUN_NODES_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetPipelineRunNodesResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetPipelineRunNodesResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetPipelineRuns - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter pipeline: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_pipeline_runs(
                                            param_organization,
                                            param_pipeline,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelineRunsResponse::SuccessfullyRetrievedRunsDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_PIPELINE_RUNS_SUCCESSFULLY_RETRIEVED_RUNS_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetPipelineRunsResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetPipelineRunsResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetPipelines - GET /blue/rest/organizations/{organization}/pipelines/
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_ in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_pipelines(
                                            param_organization,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetPipelinesResponse::SuccessfullyRetrievedPipelinesDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_PIPELINES_SUCCESSFULLY_RETRIEVED_PIPELINES_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetPipelinesResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetPipelinesResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetSCM - GET /blue/rest/organizations/{organization}/scm/{scm}
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_scm = match percent_encoding::percent_decode(path_params["scm"].as_bytes()).decode_utf8() {
                    Ok(param_scm) => match param_scm.parse::<String>() {
                        Ok(param_scm) => param_scm,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter scm: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["scm"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_scm(
                                            param_organization,
                                            param_scm,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetSCMResponse::SuccessfullyRetrievedSCMDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_SCM_SUCCESSFULLY_RETRIEVED_SCM_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetSCMResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetSCMResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetSCMOrganisationRepositories - GET /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_scm = match percent_encoding::percent_decode(path_params["scm"].as_bytes()).decode_utf8() {
                    Ok(param_scm) => match param_scm.parse::<String>() {
                        Ok(param_scm) => param_scm,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter scm: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["scm"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_scm_organisation = match percent_encoding::percent_decode(path_params["scmOrganisation"].as_bytes()).decode_utf8() {
                    Ok(param_scm_organisation) => match param_scm_organisation.parse::<String>() {
                        Ok(param_scm_organisation) => param_scm_organisation,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter scmOrganisation: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["scmOrganisation"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_credential_id = query_params.iter().filter(|e| e.0 == "credentialId").map(|e| e.1.to_owned())
                    .nth(0);
                let param_credential_id = match param_credential_id {
                    Some(param_credential_id) => {
                        let param_credential_id =
                            <String as std::str::FromStr>::from_str
                                (&param_credential_id);
                        match param_credential_id {
                            Ok(param_credential_id) => Some(param_credential_id),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter credentialId - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter credentialId")),
                        }
                    },
                    None => None,
                };
                let param_page_size = query_params.iter().filter(|e| e.0 == "pageSize").map(|e| e.1.to_owned())
                    .nth(0);
                let param_page_size = match param_page_size {
                    Some(param_page_size) => {
                        let param_page_size =
                            <i32 as std::str::FromStr>::from_str
                                (&param_page_size);
                        match param_page_size {
                            Ok(param_page_size) => Some(param_page_size),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter pageSize - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter pageSize")),
                        }
                    },
                    None => None,
                };
                let param_page_number = query_params.iter().filter(|e| e.0 == "pageNumber").map(|e| e.1.to_owned())
                    .nth(0);
                let param_page_number = match param_page_number {
                    Some(param_page_number) => {
                        let param_page_number =
                            <i32 as std::str::FromStr>::from_str
                                (&param_page_number);
                        match param_page_number {
                            Ok(param_page_number) => Some(param_page_number),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter pageNumber - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter pageNumber")),
                        }
                    },
                    None => None,
                };

                                let result = api_impl.get_scm_organisation_repositories(
                                            param_organization,
                                            param_scm,
                                            param_scm_organisation,
                                            param_credential_id,
                                            param_page_size,
                                            param_page_number,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetSCMOrganisationRepositoriesResponse::SuccessfullyRetrievedSCMOrganizationRepositoriesDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_SCM_ORGANISATION_REPOSITORIES_SUCCESSFULLY_RETRIEVED_SCM_ORGANIZATION_REPOSITORIES_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetSCMOrganisationRepositoriesResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetSCMOrganisationRepositoriesResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetSCMOrganisationRepository - GET /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES_REPOSITORY) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES_REPOSITORY
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES_REPOSITORY in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES_REPOSITORY.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_scm = match percent_encoding::percent_decode(path_params["scm"].as_bytes()).decode_utf8() {
                    Ok(param_scm) => match param_scm.parse::<String>() {
                        Ok(param_scm) => param_scm,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter scm: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["scm"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_scm_organisation = match percent_encoding::percent_decode(path_params["scmOrganisation"].as_bytes()).decode_utf8() {
                    Ok(param_scm_organisation) => match param_scm_organisation.parse::<String>() {
                        Ok(param_scm_organisation) => param_scm_organisation,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter scmOrganisation: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["scmOrganisation"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_repository = match percent_encoding::percent_decode(path_params["repository"].as_bytes()).decode_utf8() {
                    Ok(param_repository) => match param_repository.parse::<String>() {
                        Ok(param_repository) => param_repository,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter repository: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["repository"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_credential_id = query_params.iter().filter(|e| e.0 == "credentialId").map(|e| e.1.to_owned())
                    .nth(0);
                let param_credential_id = match param_credential_id {
                    Some(param_credential_id) => {
                        let param_credential_id =
                            <String as std::str::FromStr>::from_str
                                (&param_credential_id);
                        match param_credential_id {
                            Ok(param_credential_id) => Some(param_credential_id),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter credentialId - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter credentialId")),
                        }
                    },
                    None => None,
                };

                                let result = api_impl.get_scm_organisation_repository(
                                            param_organization,
                                            param_scm,
                                            param_scm_organisation,
                                            param_repository,
                                            param_credential_id,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetSCMOrganisationRepositoryResponse::SuccessfullyRetrievedSCMOrganizationsDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_SCM_ORGANISATION_REPOSITORY_SUCCESSFULLY_RETRIEVED_SCM_ORGANIZATIONS_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetSCMOrganisationRepositoryResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetSCMOrganisationRepositoryResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetSCMOrganisations - GET /blue/rest/organizations/{organization}/scm/{scm}/organizations
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_scm = match percent_encoding::percent_decode(path_params["scm"].as_bytes()).decode_utf8() {
                    Ok(param_scm) => match param_scm.parse::<String>() {
                        Ok(param_scm) => param_scm,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter scm: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["scm"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_credential_id = query_params.iter().filter(|e| e.0 == "credentialId").map(|e| e.1.to_owned())
                    .nth(0);
                let param_credential_id = match param_credential_id {
                    Some(param_credential_id) => {
                        let param_credential_id =
                            <String as std::str::FromStr>::from_str
                                (&param_credential_id);
                        match param_credential_id {
                            Ok(param_credential_id) => Some(param_credential_id),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter credentialId - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter credentialId")),
                        }
                    },
                    None => None,
                };

                                let result = api_impl.get_scm_organisations(
                                            param_organization,
                                            param_scm,
                                            param_credential_id,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetSCMOrganisationsResponse::SuccessfullyRetrievedSCMOrganizationsDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_SCM_ORGANISATIONS_SUCCESSFULLY_RETRIEVED_SCM_ORGANIZATIONS_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetSCMOrganisationsResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetSCMOrganisationsResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetUser - GET /blue/rest/organizations/{organization}/users/{user}
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_USER) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_USER
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_USER in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_USER.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_user = match percent_encoding::percent_decode(path_params["user"].as_bytes()).decode_utf8() {
                    Ok(param_user) => match param_user.parse::<String>() {
                        Ok(param_user) => param_user,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter user: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["user"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_user(
                                            param_organization,
                                            param_user,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetUserResponse::SuccessfullyRetrievedUsersDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_USER_SUCCESSFULLY_RETRIEVED_USERS_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetUserResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetUserResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetUserFavorites - GET /blue/rest/users/{user}/favorites
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_USERS_USER_FAVORITES) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_USERS_USER_FAVORITES
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_USERS_USER_FAVORITES in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_USERS_USER_FAVORITES.as_str())
                    );

                let param_user = match percent_encoding::percent_decode(path_params["user"].as_bytes()).decode_utf8() {
                    Ok(param_user) => match param_user.parse::<String>() {
                        Ok(param_user) => param_user,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter user: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["user"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_user_favorites(
                                            param_user,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetUserFavoritesResponse::SuccessfullyRetrievedUsersFavoritesDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_USER_FAVORITES_SUCCESSFULLY_RETRIEVED_USERS_FAVORITES_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetUserFavoritesResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetUserFavoritesResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetUsers - GET /blue/rest/organizations/{organization}/users/
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_ in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_users(
                                            param_organization,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetUsersResponse::SuccessfullyRetrievedUsersDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_USERS_SUCCESSFULLY_RETRIEVED_USERS_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetUsersResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetUsersResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // PostPipelineRun - POST /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay
            &hyper::Method::POST if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_REPLAY) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_REPLAY
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_REPLAY in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_REPLAY.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter pipeline: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_run = match percent_encoding::percent_decode(path_params["run"].as_bytes()).decode_utf8() {
                    Ok(param_run) => match param_run.parse::<String>() {
                        Ok(param_run) => param_run,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter run: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["run"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.post_pipeline_run(
                                            param_organization,
                                            param_pipeline,
                                            param_run,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PostPipelineRunResponse::SuccessfullyReplayedAPipelineRun
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for POST_PIPELINE_RUN_SUCCESSFULLY_REPLAYED_A_PIPELINE_RUN"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                PostPipelineRunResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                PostPipelineRunResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // PostPipelineRuns - POST /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs
            &hyper::Method::POST if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter pipeline: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.post_pipeline_runs(
                                            param_organization,
                                            param_pipeline,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PostPipelineRunsResponse::SuccessfullyStartedABuild
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for POST_PIPELINE_RUNS_SUCCESSFULLY_STARTED_A_BUILD"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                PostPipelineRunsResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                PostPipelineRunsResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // PutPipelineFavorite - PUT /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite
            &hyper::Method::PUT if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_FAVORITE) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_FAVORITE
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_FAVORITE in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_FAVORITE.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter pipeline: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                // Body parameters (note that non-required body parameters will ignore garbage
                // values, rather than causing a 400 response). Produce warning header and logs for
                // any unused fields.
                let result = body.to_raw().await;
                match result {
                            Ok(body) => {
                                let mut unused_elements = Vec::new();
                                let param_unknown_base_type: Option<UNKNOWN_BASE_TYPE> = if !body.is_empty() {
                                    let deserializer = &mut serde_json::Deserializer::from_slice(&*body);
                                    match serde_ignored::deserialize(deserializer, |path| {
                                            warn!("Ignoring unknown field in body: {}", path);
                                            unused_elements.push(path.to_string());
                                    }) {
                                        Ok(param_unknown_base_type) => param_unknown_base_type,
                                        Err(e) => return Ok(Response::builder()
                                                        .status(StatusCode::BAD_REQUEST)
                                                        .body(Body::from(format!("Couldn't parse body parameter UNKNOWN_BASE_TYPE - doesn't match schema: {}", e)))
                                                        .expect("Unable to create Bad Request response for invalid body parameter UNKNOWN_BASE_TYPE due to schema")),
                                    }
                                } else {
                                    None
                                };
                                let param_unknown_base_type = match param_unknown_base_type {
                                    Some(param_unknown_base_type) => param_unknown_base_type,
                                    None => return Ok(Response::builder()
                                                        .status(StatusCode::BAD_REQUEST)
                                                        .body(Body::from("Missing required body parameter UNKNOWN_BASE_TYPE"))
                                                        .expect("Unable to create Bad Request response for missing body parameter UNKNOWN_BASE_TYPE")),
                                };

                                let result = api_impl.put_pipeline_favorite(
                                            param_organization,
                                            param_pipeline,
                                            param_unknown_base_type,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        if !unused_elements.is_empty() {
                                            response.headers_mut().insert(
                                                HeaderName::from_static("warning"),
                                                HeaderValue::from_str(format!("Ignoring unknown fields in body: {:?}", unused_elements).as_str())
                                                    .expect("Unable to create Warning header value"));
                                        }

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PutPipelineFavoriteResponse::SuccessfullyFavorited
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for PUT_PIPELINE_FAVORITE_SUCCESSFULLY_FAVORITED"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                PutPipelineFavoriteResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                PutPipelineFavoriteResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
                            },
                            Err(e) => Ok(Response::builder()
                                                .status(StatusCode::BAD_REQUEST)
                                                .body(Body::from(format!("Couldn't read body parameter UNKNOWN_BASE_TYPE: {}", e)))
                                                .expect("Unable to create Bad Request response due to unable to read body parameter UNKNOWN_BASE_TYPE")),
                        }
            },

            // PutPipelineRun - PUT /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop
            &hyper::Method::PUT if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_STOP) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_STOP
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_STOP in set but failed match against \"{}\"", path, paths::REGEX_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_STOP.as_str())
                    );

                let param_organization = match percent_encoding::percent_decode(path_params["organization"].as_bytes()).decode_utf8() {
                    Ok(param_organization) => match param_organization.parse::<String>() {
                        Ok(param_organization) => param_organization,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter organization: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["organization"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_pipeline = match percent_encoding::percent_decode(path_params["pipeline"].as_bytes()).decode_utf8() {
                    Ok(param_pipeline) => match param_pipeline.parse::<String>() {
                        Ok(param_pipeline) => param_pipeline,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter pipeline: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["pipeline"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_run = match percent_encoding::percent_decode(path_params["run"].as_bytes()).decode_utf8() {
                    Ok(param_run) => match param_run.parse::<String>() {
                        Ok(param_run) => param_run,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter run: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["run"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_blocking = query_params.iter().filter(|e| e.0 == "blocking").map(|e| e.1.to_owned())
                    .nth(0);
                let param_blocking = match param_blocking {
                    Some(param_blocking) => {
                        let param_blocking =
                            <String as std::str::FromStr>::from_str
                                (&param_blocking);
                        match param_blocking {
                            Ok(param_blocking) => Some(param_blocking),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter blocking - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter blocking")),
                        }
                    },
                    None => None,
                };
                let param_time_out_in_secs = query_params.iter().filter(|e| e.0 == "timeOutInSecs").map(|e| e.1.to_owned())
                    .nth(0);
                let param_time_out_in_secs = match param_time_out_in_secs {
                    Some(param_time_out_in_secs) => {
                        let param_time_out_in_secs =
                            <i32 as std::str::FromStr>::from_str
                                (&param_time_out_in_secs);
                        match param_time_out_in_secs {
                            Ok(param_time_out_in_secs) => Some(param_time_out_in_secs),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter timeOutInSecs - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter timeOutInSecs")),
                        }
                    },
                    None => None,
                };

                                let result = api_impl.put_pipeline_run(
                                            param_organization,
                                            param_pipeline,
                                            param_run,
                                            param_blocking,
                                            param_time_out_in_secs,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PutPipelineRunResponse::SuccessfullyStoppedABuild
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for PUT_PIPELINE_RUN_SUCCESSFULLY_STOPPED_A_BUILD"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                PutPipelineRunResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                PutPipelineRunResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // Search - GET /blue/rest/search/
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_SEARCH_) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_q = query_params.iter().filter(|e| e.0 == "q").map(|e| e.1.to_owned())
                    .nth(0);
                let param_q = match param_q {
                    Some(param_q) => {
                        let param_q =
                            <String as std::str::FromStr>::from_str
                                (&param_q);
                        match param_q {
                            Ok(param_q) => Some(param_q),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter q - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter q")),
                        }
                    },
                    None => None,
                };
                let param_q = match param_q {
                    Some(param_q) => param_q,
                    None => return Ok(Response::builder()
                        .status(StatusCode::BAD_REQUEST)
                        .body(Body::from("Missing required query parameter q"))
                        .expect("Unable to create Bad Request response for missing query parameter q")),
                };

                                let result = api_impl.search(
                                            param_q,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                SearchResponse::SuccessfullyRetrievedSearchResult
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for SEARCH_SUCCESSFULLY_RETRIEVED_SEARCH_RESULT"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                SearchResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                SearchResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // SearchClasses - GET /blue/rest/classes/
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_CLASSES_) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_q = query_params.iter().filter(|e| e.0 == "q").map(|e| e.1.to_owned())
                    .nth(0);
                let param_q = match param_q {
                    Some(param_q) => {
                        let param_q =
                            <String as std::str::FromStr>::from_str
                                (&param_q);
                        match param_q {
                            Ok(param_q) => Some(param_q),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter q - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter q")),
                        }
                    },
                    None => None,
                };
                let param_q = match param_q {
                    Some(param_q) => param_q,
                    None => return Ok(Response::builder()
                        .status(StatusCode::BAD_REQUEST)
                        .body(Body::from("Missing required query parameter q"))
                        .expect("Unable to create Bad Request response for missing query parameter q")),
                };

                                let result = api_impl.search_classes(
                                            param_q,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                SearchClassesResponse::SuccessfullyRetrievedSearchResult
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for SEARCH_CLASSES_SUCCESSFULLY_RETRIEVED_SEARCH_RESULT"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                SearchClassesResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                SearchClassesResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetComputer - GET /computer/api/json
            &hyper::Method::GET if path.matched(paths::ID_COMPUTER_API_JSON) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_depth = query_params.iter().filter(|e| e.0 == "depth").map(|e| e.1.to_owned())
                    .nth(0);
                let param_depth = match param_depth {
                    Some(param_depth) => {
                        let param_depth =
                            <i32 as std::str::FromStr>::from_str
                                (&param_depth);
                        match param_depth {
                            Ok(param_depth) => Some(param_depth),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter depth - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter depth")),
                        }
                    },
                    None => None,
                };
                let param_depth = match param_depth {
                    Some(param_depth) => param_depth,
                    None => return Ok(Response::builder()
                        .status(StatusCode::BAD_REQUEST)
                        .body(Body::from("Missing required query parameter depth"))
                        .expect("Unable to create Bad Request response for missing query parameter depth")),
                };

                                let result = api_impl.get_computer(
                                            param_depth,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetComputerResponse::SuccessfullyRetrievedComputerDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_COMPUTER_SUCCESSFULLY_RETRIEVED_COMPUTER_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetComputerResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetComputerResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetJenkins - GET /api/json
            &hyper::Method::GET if path.matched(paths::ID_API_JSON) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                                let result = api_impl.get_jenkins(
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetJenkinsResponse::SuccessfullyRetrievedJenkinsDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_JENKINS_SUCCESSFULLY_RETRIEVED_JENKINS_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetJenkinsResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetJenkinsResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetJob - GET /job/{name}/api/json
            &hyper::Method::GET if path.matched(paths::ID_JOB_NAME_API_JSON) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_JOB_NAME_API_JSON
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE JOB_NAME_API_JSON in set but failed match against \"{}\"", path, paths::REGEX_JOB_NAME_API_JSON.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter name: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_job(
                                            param_name,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetJobResponse::SuccessfullyRetrievedJobDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_JOB_SUCCESSFULLY_RETRIEVED_JOB_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetJobResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetJobResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                                GetJobResponse::JobCannotBeFoundOnJenkinsInstance
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(404).expect("Unable to turn 404 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetJobConfig - GET /job/{name}/config.xml
            &hyper::Method::GET if path.matched(paths::ID_JOB_NAME_CONFIG_XML) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_JOB_NAME_CONFIG_XML
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE JOB_NAME_CONFIG_XML in set but failed match against \"{}\"", path, paths::REGEX_JOB_NAME_CONFIG_XML.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter name: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_job_config(
                                            param_name,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetJobConfigResponse::SuccessfullyRetrievedJobConfigurationInConfig
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("text/xml")
                                                            .expect("Unable to create Content-Type header for GET_JOB_CONFIG_SUCCESSFULLY_RETRIEVED_JOB_CONFIGURATION_IN_CONFIG"));
                                                    let body = serde_xml_rs::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetJobConfigResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetJobConfigResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                                GetJobConfigResponse::JobCannotBeFoundOnJenkinsInstance
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(404).expect("Unable to turn 404 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetJobLastBuild - GET /job/{name}/lastBuild/api/json
            &hyper::Method::GET if path.matched(paths::ID_JOB_NAME_LASTBUILD_API_JSON) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_JOB_NAME_LASTBUILD_API_JSON
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE JOB_NAME_LASTBUILD_API_JSON in set but failed match against \"{}\"", path, paths::REGEX_JOB_NAME_LASTBUILD_API_JSON.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter name: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_job_last_build(
                                            param_name,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetJobLastBuildResponse::SuccessfullyRetrievedJob
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_JOB_LAST_BUILD_SUCCESSFULLY_RETRIEVED_JOB"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetJobLastBuildResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetJobLastBuildResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                                GetJobLastBuildResponse::JobCannotBeFoundOnJenkinsInstance
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(404).expect("Unable to turn 404 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetJobProgressiveText - GET /job/{name}/{number}/logText/progressiveText
            &hyper::Method::GET if path.matched(paths::ID_JOB_NAME_NUMBER_LOGTEXT_PROGRESSIVETEXT) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_JOB_NAME_NUMBER_LOGTEXT_PROGRESSIVETEXT
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE JOB_NAME_NUMBER_LOGTEXT_PROGRESSIVETEXT in set but failed match against \"{}\"", path, paths::REGEX_JOB_NAME_NUMBER_LOGTEXT_PROGRESSIVETEXT.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter name: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                let param_number = match percent_encoding::percent_decode(path_params["number"].as_bytes()).decode_utf8() {
                    Ok(param_number) => match param_number.parse::<String>() {
                        Ok(param_number) => param_number,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter number: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["number"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_start = query_params.iter().filter(|e| e.0 == "start").map(|e| e.1.to_owned())
                    .nth(0);
                let param_start = match param_start {
                    Some(param_start) => {
                        let param_start =
                            <String as std::str::FromStr>::from_str
                                (&param_start);
                        match param_start {
                            Ok(param_start) => Some(param_start),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter start - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter start")),
                        }
                    },
                    None => None,
                };
                let param_start = match param_start {
                    Some(param_start) => param_start,
                    None => return Ok(Response::builder()
                        .status(StatusCode::BAD_REQUEST)
                        .body(Body::from("Missing required query parameter start"))
                        .expect("Unable to create Bad Request response for missing query parameter start")),
                };

                                let result = api_impl.get_job_progressive_text(
                                            param_name,
                                            param_number,
                                            param_start,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetJobProgressiveTextResponse::SuccessfullyRetrievedJob
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                },
                                                GetJobProgressiveTextResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetJobProgressiveTextResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                                GetJobProgressiveTextResponse::JobCannotBeFoundOnJenkinsInstance
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(404).expect("Unable to turn 404 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetQueue - GET /queue/api/json
            &hyper::Method::GET if path.matched(paths::ID_QUEUE_API_JSON) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                                let result = api_impl.get_queue(
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetQueueResponse::SuccessfullyRetrievedQueueDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_QUEUE_SUCCESSFULLY_RETRIEVED_QUEUE_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetQueueResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetQueueResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetQueueItem - GET /queue/item/{number}/api/json
            &hyper::Method::GET if path.matched(paths::ID_QUEUE_ITEM_NUMBER_API_JSON) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_QUEUE_ITEM_NUMBER_API_JSON
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE QUEUE_ITEM_NUMBER_API_JSON in set but failed match against \"{}\"", path, paths::REGEX_QUEUE_ITEM_NUMBER_API_JSON.as_str())
                    );

                let param_number = match percent_encoding::percent_decode(path_params["number"].as_bytes()).decode_utf8() {
                    Ok(param_number) => match param_number.parse::<String>() {
                        Ok(param_number) => param_number,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter number: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["number"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_queue_item(
                                            param_number,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetQueueItemResponse::SuccessfullyRetrievedQueuedItemDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_QUEUE_ITEM_SUCCESSFULLY_RETRIEVED_QUEUED_ITEM_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetQueueItemResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetQueueItemResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetView - GET /view/{name}/api/json
            &hyper::Method::GET if path.matched(paths::ID_VIEW_NAME_API_JSON) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_VIEW_NAME_API_JSON
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE VIEW_NAME_API_JSON in set but failed match against \"{}\"", path, paths::REGEX_VIEW_NAME_API_JSON.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter name: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_view(
                                            param_name,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetViewResponse::SuccessfullyRetrievedViewDetails
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GET_VIEW_SUCCESSFULLY_RETRIEVED_VIEW_DETAILS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetViewResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetViewResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                                GetViewResponse::ViewCannotBeFoundOnJenkinsInstance
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(404).expect("Unable to turn 404 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GetViewConfig - GET /view/{name}/config.xml
            &hyper::Method::GET if path.matched(paths::ID_VIEW_NAME_CONFIG_XML) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_VIEW_NAME_CONFIG_XML
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE VIEW_NAME_CONFIG_XML in set but failed match against \"{}\"", path, paths::REGEX_VIEW_NAME_CONFIG_XML.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter name: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                                let result = api_impl.get_view_config(
                                            param_name,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GetViewConfigResponse::SuccessfullyRetrievedViewConfigurationInConfig
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("text/xml")
                                                            .expect("Unable to create Content-Type header for GET_VIEW_CONFIG_SUCCESSFULLY_RETRIEVED_VIEW_CONFIGURATION_IN_CONFIG"));
                                                    let body = serde_xml_rs::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GetViewConfigResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                GetViewConfigResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                                GetViewConfigResponse::ViewCannotBeFoundOnJenkinsInstance
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(404).expect("Unable to turn 404 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // HeadJenkins - HEAD /api/json
            &hyper::Method::HEAD if path.matched(paths::ID_API_JSON) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                                let result = api_impl.head_jenkins(
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                HeadJenkinsResponse::SuccessfullyRetrievedJenkinsHeaders
                                                    {
                                                        x_jenkins
                                                    }
                                                => {
                                                    if let Some(x_jenkins) = x_jenkins {
                                                    let x_jenkins = match header::IntoHeaderValue(x_jenkins).try_into() {
                                                        Ok(val) => val,
                                                        Err(e) => {
                                                            return Ok(Response::builder()
                                                                    .status(StatusCode::INTERNAL_SERVER_ERROR)
                                                                    .body(Body::from(format!("An internal server error occurred handling x_jenkins header - {}", e)))
                                                                    .expect("Unable to create Internal Server Error for invalid response header"))
                                                        }
                                                    };

                                                    response.headers_mut().insert(
                                                        HeaderName::from_static("x-jenkins"),
                                                        x_jenkins
                                                    );
                                                    }
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                },
                                                HeadJenkinsResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                HeadJenkinsResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // PostCreateItem - POST /createItem
            &hyper::Method::POST if path.matched(paths::ID_CREATEITEM) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Header parameters
                let param_jenkins_crumb = headers.get(HeaderName::from_static("jenkins-crumb"));

                let param_jenkins_crumb = match param_jenkins_crumb {
                    Some(v) => match header::IntoHeaderValue::<String>::try_from((*v).clone()) {
                        Ok(result) =>
                            Some(result.0),
                        Err(err) => {
                            return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Invalid header Jenkins-Crumb - {}", err)))
                                        .expect("Unable to create Bad Request response for invalid header Jenkins-Crumb"));

                        },
                    },
                    None => {
                        None
                    }
                };
                let param_content_type = headers.get(HeaderName::from_static("content-type"));

                let param_content_type = match param_content_type {
                    Some(v) => match header::IntoHeaderValue::<String>::try_from((*v).clone()) {
                        Ok(result) =>
                            Some(result.0),
                        Err(err) => {
                            return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Invalid header Content-Type - {}", err)))
                                        .expect("Unable to create Bad Request response for invalid header Content-Type"));

                        },
                    },
                    None => {
                        None
                    }
                };

                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_name = query_params.iter().filter(|e| e.0 == "name").map(|e| e.1.to_owned())
                    .nth(0);
                let param_name = match param_name {
                    Some(param_name) => {
                        let param_name =
                            <String as std::str::FromStr>::from_str
                                (&param_name);
                        match param_name {
                            Ok(param_name) => Some(param_name),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter name - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter name")),
                        }
                    },
                    None => None,
                };
                let param_name = match param_name {
                    Some(param_name) => param_name,
                    None => return Ok(Response::builder()
                        .status(StatusCode::BAD_REQUEST)
                        .body(Body::from("Missing required query parameter name"))
                        .expect("Unable to create Bad Request response for missing query parameter name")),
                };
                let param_from = query_params.iter().filter(|e| e.0 == "from").map(|e| e.1.to_owned())
                    .nth(0);
                let param_from = match param_from {
                    Some(param_from) => {
                        let param_from =
                            <String as std::str::FromStr>::from_str
                                (&param_from);
                        match param_from {
                            Ok(param_from) => Some(param_from),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter from - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter from")),
                        }
                    },
                    None => None,
                };
                let param_mode = query_params.iter().filter(|e| e.0 == "mode").map(|e| e.1.to_owned())
                    .nth(0);
                let param_mode = match param_mode {
                    Some(param_mode) => {
                        let param_mode =
                            <String as std::str::FromStr>::from_str
                                (&param_mode);
                        match param_mode {
                            Ok(param_mode) => Some(param_mode),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter mode - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter mode")),
                        }
                    },
                    None => None,
                };

                // Body parameters (note that non-required body parameters will ignore garbage
                // values, rather than causing a 400 response). Produce warning header and logs for
                // any unused fields.
                let result = body.to_raw().await;
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

                                let result = api_impl.post_create_item(
                                            param_name,
                                            param_from,
                                            param_mode,
                                            param_jenkins_crumb,
                                            param_content_type,
                                            param_body,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        if !unused_elements.is_empty() {
                                            response.headers_mut().insert(
                                                HeaderName::from_static("warning"),
                                                HeaderValue::from_str(format!("Ignoring unknown fields in body: {:?}", unused_elements).as_str())
                                                    .expect("Unable to create Warning header value"));
                                        }

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PostCreateItemResponse::SuccessfullyCreatedANewJob
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                },
                                                PostCreateItemResponse::AnErrorHasOccurred
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(400).expect("Unable to turn 400 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("*/*")
                                                            .expect("Unable to create Content-Type header for POST_CREATE_ITEM_AN_ERROR_HAS_OCCURRED"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                PostCreateItemResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                PostCreateItemResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
                            },
                            Err(e) => Ok(Response::builder()
                                                .status(StatusCode::BAD_REQUEST)
                                                .body(Body::from(format!("Couldn't read body parameter body: {}", e)))
                                                .expect("Unable to create Bad Request response due to unable to read body parameter body")),
                        }
            },

            // PostCreateView - POST /createView
            &hyper::Method::POST if path.matched(paths::ID_CREATEVIEW) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Header parameters
                let param_jenkins_crumb = headers.get(HeaderName::from_static("jenkins-crumb"));

                let param_jenkins_crumb = match param_jenkins_crumb {
                    Some(v) => match header::IntoHeaderValue::<String>::try_from((*v).clone()) {
                        Ok(result) =>
                            Some(result.0),
                        Err(err) => {
                            return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Invalid header Jenkins-Crumb - {}", err)))
                                        .expect("Unable to create Bad Request response for invalid header Jenkins-Crumb"));

                        },
                    },
                    None => {
                        None
                    }
                };
                let param_content_type = headers.get(HeaderName::from_static("content-type"));

                let param_content_type = match param_content_type {
                    Some(v) => match header::IntoHeaderValue::<String>::try_from((*v).clone()) {
                        Ok(result) =>
                            Some(result.0),
                        Err(err) => {
                            return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Invalid header Content-Type - {}", err)))
                                        .expect("Unable to create Bad Request response for invalid header Content-Type"));

                        },
                    },
                    None => {
                        None
                    }
                };

                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_name = query_params.iter().filter(|e| e.0 == "name").map(|e| e.1.to_owned())
                    .nth(0);
                let param_name = match param_name {
                    Some(param_name) => {
                        let param_name =
                            <String as std::str::FromStr>::from_str
                                (&param_name);
                        match param_name {
                            Ok(param_name) => Some(param_name),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter name - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter name")),
                        }
                    },
                    None => None,
                };
                let param_name = match param_name {
                    Some(param_name) => param_name,
                    None => return Ok(Response::builder()
                        .status(StatusCode::BAD_REQUEST)
                        .body(Body::from("Missing required query parameter name"))
                        .expect("Unable to create Bad Request response for missing query parameter name")),
                };

                // Body parameters (note that non-required body parameters will ignore garbage
                // values, rather than causing a 400 response). Produce warning header and logs for
                // any unused fields.
                let result = body.to_raw().await;
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

                                let result = api_impl.post_create_view(
                                            param_name,
                                            param_jenkins_crumb,
                                            param_content_type,
                                            param_body,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        if !unused_elements.is_empty() {
                                            response.headers_mut().insert(
                                                HeaderName::from_static("warning"),
                                                HeaderValue::from_str(format!("Ignoring unknown fields in body: {:?}", unused_elements).as_str())
                                                    .expect("Unable to create Warning header value"));
                                        }

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PostCreateViewResponse::SuccessfullyCreatedTheView
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                },
                                                PostCreateViewResponse::AnErrorHasOccurred
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(400).expect("Unable to turn 400 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("*/*")
                                                            .expect("Unable to create Content-Type header for POST_CREATE_VIEW_AN_ERROR_HAS_OCCURRED"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                PostCreateViewResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                PostCreateViewResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
                            },
                            Err(e) => Ok(Response::builder()
                                                .status(StatusCode::BAD_REQUEST)
                                                .body(Body::from(format!("Couldn't read body parameter body: {}", e)))
                                                .expect("Unable to create Bad Request response due to unable to read body parameter body")),
                        }
            },

            // PostJobBuild - POST /job/{name}/build
            &hyper::Method::POST if path.matched(paths::ID_JOB_NAME_BUILD) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_JOB_NAME_BUILD
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE JOB_NAME_BUILD in set but failed match against \"{}\"", path, paths::REGEX_JOB_NAME_BUILD.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter name: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                // Header parameters
                let param_jenkins_crumb = headers.get(HeaderName::from_static("jenkins-crumb"));

                let param_jenkins_crumb = match param_jenkins_crumb {
                    Some(v) => match header::IntoHeaderValue::<String>::try_from((*v).clone()) {
                        Ok(result) =>
                            Some(result.0),
                        Err(err) => {
                            return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Invalid header Jenkins-Crumb - {}", err)))
                                        .expect("Unable to create Bad Request response for invalid header Jenkins-Crumb"));

                        },
                    },
                    None => {
                        None
                    }
                };

                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_json = query_params.iter().filter(|e| e.0 == "json").map(|e| e.1.to_owned())
                    .nth(0);
                let param_json = match param_json {
                    Some(param_json) => {
                        let param_json =
                            <String as std::str::FromStr>::from_str
                                (&param_json);
                        match param_json {
                            Ok(param_json) => Some(param_json),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter json - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter json")),
                        }
                    },
                    None => None,
                };
                let param_json = match param_json {
                    Some(param_json) => param_json,
                    None => return Ok(Response::builder()
                        .status(StatusCode::BAD_REQUEST)
                        .body(Body::from("Missing required query parameter json"))
                        .expect("Unable to create Bad Request response for missing query parameter json")),
                };
                let param_token = query_params.iter().filter(|e| e.0 == "token").map(|e| e.1.to_owned())
                    .nth(0);
                let param_token = match param_token {
                    Some(param_token) => {
                        let param_token =
                            <String as std::str::FromStr>::from_str
                                (&param_token);
                        match param_token {
                            Ok(param_token) => Some(param_token),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter token - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter token")),
                        }
                    },
                    None => None,
                };

                                let result = api_impl.post_job_build(
                                            param_name,
                                            param_json,
                                            param_token,
                                            param_jenkins_crumb,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PostJobBuildResponse::SuccessfullyBuiltTheJob
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                },
                                                PostJobBuildResponse::SuccessfullyBuiltTheJob_2
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(201).expect("Unable to turn 201 into a StatusCode");
                                                },
                                                PostJobBuildResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                PostJobBuildResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                                PostJobBuildResponse::JobCannotBeFoundOnJenkinsInstance
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(404).expect("Unable to turn 404 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // PostJobConfig - POST /job/{name}/config.xml
            &hyper::Method::POST if path.matched(paths::ID_JOB_NAME_CONFIG_XML) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_JOB_NAME_CONFIG_XML
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE JOB_NAME_CONFIG_XML in set but failed match against \"{}\"", path, paths::REGEX_JOB_NAME_CONFIG_XML.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter name: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                // Header parameters
                let param_jenkins_crumb = headers.get(HeaderName::from_static("jenkins-crumb"));

                let param_jenkins_crumb = match param_jenkins_crumb {
                    Some(v) => match header::IntoHeaderValue::<String>::try_from((*v).clone()) {
                        Ok(result) =>
                            Some(result.0),
                        Err(err) => {
                            return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Invalid header Jenkins-Crumb - {}", err)))
                                        .expect("Unable to create Bad Request response for invalid header Jenkins-Crumb"));

                        },
                    },
                    None => {
                        None
                    }
                };

                // Body parameters (note that non-required body parameters will ignore garbage
                // values, rather than causing a 400 response). Produce warning header and logs for
                // any unused fields.
                let result = body.to_raw().await;
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
                                        Err(e) => return Ok(Response::builder()
                                                        .status(StatusCode::BAD_REQUEST)
                                                        .body(Body::from(format!("Couldn't parse body parameter body - doesn't match schema: {}", e)))
                                                        .expect("Unable to create Bad Request response for invalid body parameter body due to schema")),
                                    }
                                } else {
                                    None
                                };
                                let param_body = match param_body {
                                    Some(param_body) => param_body,
                                    None => return Ok(Response::builder()
                                                        .status(StatusCode::BAD_REQUEST)
                                                        .body(Body::from("Missing required body parameter body"))
                                                        .expect("Unable to create Bad Request response for missing body parameter body")),
                                };

                                let result = api_impl.post_job_config(
                                            param_name,
                                            param_body,
                                            param_jenkins_crumb,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        if !unused_elements.is_empty() {
                                            response.headers_mut().insert(
                                                HeaderName::from_static("warning"),
                                                HeaderValue::from_str(format!("Ignoring unknown fields in body: {:?}", unused_elements).as_str())
                                                    .expect("Unable to create Warning header value"));
                                        }

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PostJobConfigResponse::SuccessfullyRetrievedJobConfigurationInConfig
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                },
                                                PostJobConfigResponse::AnErrorHasOccurred
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(400).expect("Unable to turn 400 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("*/*")
                                                            .expect("Unable to create Content-Type header for POST_JOB_CONFIG_AN_ERROR_HAS_OCCURRED"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                PostJobConfigResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                PostJobConfigResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                                PostJobConfigResponse::JobCannotBeFoundOnJenkinsInstance
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(404).expect("Unable to turn 404 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
                            },
                            Err(e) => Ok(Response::builder()
                                                .status(StatusCode::BAD_REQUEST)
                                                .body(Body::from(format!("Couldn't read body parameter body: {}", e)))
                                                .expect("Unable to create Bad Request response due to unable to read body parameter body")),
                        }
            },

            // PostJobDelete - POST /job/{name}/doDelete
            &hyper::Method::POST if path.matched(paths::ID_JOB_NAME_DODELETE) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_JOB_NAME_DODELETE
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE JOB_NAME_DODELETE in set but failed match against \"{}\"", path, paths::REGEX_JOB_NAME_DODELETE.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter name: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                // Header parameters
                let param_jenkins_crumb = headers.get(HeaderName::from_static("jenkins-crumb"));

                let param_jenkins_crumb = match param_jenkins_crumb {
                    Some(v) => match header::IntoHeaderValue::<String>::try_from((*v).clone()) {
                        Ok(result) =>
                            Some(result.0),
                        Err(err) => {
                            return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Invalid header Jenkins-Crumb - {}", err)))
                                        .expect("Unable to create Bad Request response for invalid header Jenkins-Crumb"));

                        },
                    },
                    None => {
                        None
                    }
                };

                                let result = api_impl.post_job_delete(
                                            param_name,
                                            param_jenkins_crumb,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PostJobDeleteResponse::SuccessfullyDeletedTheJob
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                },
                                                PostJobDeleteResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                PostJobDeleteResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                                PostJobDeleteResponse::JobCannotBeFoundOnJenkinsInstance
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(404).expect("Unable to turn 404 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // PostJobDisable - POST /job/{name}/disable
            &hyper::Method::POST if path.matched(paths::ID_JOB_NAME_DISABLE) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_JOB_NAME_DISABLE
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE JOB_NAME_DISABLE in set but failed match against \"{}\"", path, paths::REGEX_JOB_NAME_DISABLE.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter name: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                // Header parameters
                let param_jenkins_crumb = headers.get(HeaderName::from_static("jenkins-crumb"));

                let param_jenkins_crumb = match param_jenkins_crumb {
                    Some(v) => match header::IntoHeaderValue::<String>::try_from((*v).clone()) {
                        Ok(result) =>
                            Some(result.0),
                        Err(err) => {
                            return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Invalid header Jenkins-Crumb - {}", err)))
                                        .expect("Unable to create Bad Request response for invalid header Jenkins-Crumb"));

                        },
                    },
                    None => {
                        None
                    }
                };

                                let result = api_impl.post_job_disable(
                                            param_name,
                                            param_jenkins_crumb,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PostJobDisableResponse::SuccessfullyDisabledTheJob
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                },
                                                PostJobDisableResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                PostJobDisableResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                                PostJobDisableResponse::JobCannotBeFoundOnJenkinsInstance
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(404).expect("Unable to turn 404 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // PostJobEnable - POST /job/{name}/enable
            &hyper::Method::POST if path.matched(paths::ID_JOB_NAME_ENABLE) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_JOB_NAME_ENABLE
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE JOB_NAME_ENABLE in set but failed match against \"{}\"", path, paths::REGEX_JOB_NAME_ENABLE.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter name: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                // Header parameters
                let param_jenkins_crumb = headers.get(HeaderName::from_static("jenkins-crumb"));

                let param_jenkins_crumb = match param_jenkins_crumb {
                    Some(v) => match header::IntoHeaderValue::<String>::try_from((*v).clone()) {
                        Ok(result) =>
                            Some(result.0),
                        Err(err) => {
                            return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Invalid header Jenkins-Crumb - {}", err)))
                                        .expect("Unable to create Bad Request response for invalid header Jenkins-Crumb"));

                        },
                    },
                    None => {
                        None
                    }
                };

                                let result = api_impl.post_job_enable(
                                            param_name,
                                            param_jenkins_crumb,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PostJobEnableResponse::SuccessfullyEnabledTheJob
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                },
                                                PostJobEnableResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                PostJobEnableResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                                PostJobEnableResponse::JobCannotBeFoundOnJenkinsInstance
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(404).expect("Unable to turn 404 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // PostJobLastBuildStop - POST /job/{name}/lastBuild/stop
            &hyper::Method::POST if path.matched(paths::ID_JOB_NAME_LASTBUILD_STOP) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_JOB_NAME_LASTBUILD_STOP
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE JOB_NAME_LASTBUILD_STOP in set but failed match against \"{}\"", path, paths::REGEX_JOB_NAME_LASTBUILD_STOP.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter name: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                // Header parameters
                let param_jenkins_crumb = headers.get(HeaderName::from_static("jenkins-crumb"));

                let param_jenkins_crumb = match param_jenkins_crumb {
                    Some(v) => match header::IntoHeaderValue::<String>::try_from((*v).clone()) {
                        Ok(result) =>
                            Some(result.0),
                        Err(err) => {
                            return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Invalid header Jenkins-Crumb - {}", err)))
                                        .expect("Unable to create Bad Request response for invalid header Jenkins-Crumb"));

                        },
                    },
                    None => {
                        None
                    }
                };

                                let result = api_impl.post_job_last_build_stop(
                                            param_name,
                                            param_jenkins_crumb,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PostJobLastBuildStopResponse::SuccessfullyStoppedTheJob
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                },
                                                PostJobLastBuildStopResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                PostJobLastBuildStopResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                                PostJobLastBuildStopResponse::JobCannotBeFoundOnJenkinsInstance
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(404).expect("Unable to turn 404 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // PostViewConfig - POST /view/{name}/config.xml
            &hyper::Method::POST if path.matched(paths::ID_VIEW_NAME_CONFIG_XML) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Path parameters
                let path: &str = &uri.path().to_string();
                let path_params =
                    paths::REGEX_VIEW_NAME_CONFIG_XML
                    .captures(&path)
                    .unwrap_or_else(||
                        panic!("Path {} matched RE VIEW_NAME_CONFIG_XML in set but failed match against \"{}\"", path, paths::REGEX_VIEW_NAME_CONFIG_XML.as_str())
                    );

                let param_name = match percent_encoding::percent_decode(path_params["name"].as_bytes()).decode_utf8() {
                    Ok(param_name) => match param_name.parse::<String>() {
                        Ok(param_name) => param_name,
                        Err(e) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't parse path parameter name: {}", e)))
                                        .expect("Unable to create Bad Request response for invalid path parameter")),
                    },
                    Err(_) => return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Couldn't percent-decode path parameter as UTF-8: {}", &path_params["name"])))
                                        .expect("Unable to create Bad Request response for invalid percent decode"))
                };

                // Header parameters
                let param_jenkins_crumb = headers.get(HeaderName::from_static("jenkins-crumb"));

                let param_jenkins_crumb = match param_jenkins_crumb {
                    Some(v) => match header::IntoHeaderValue::<String>::try_from((*v).clone()) {
                        Ok(result) =>
                            Some(result.0),
                        Err(err) => {
                            return Ok(Response::builder()
                                        .status(StatusCode::BAD_REQUEST)
                                        .body(Body::from(format!("Invalid header Jenkins-Crumb - {}", err)))
                                        .expect("Unable to create Bad Request response for invalid header Jenkins-Crumb"));

                        },
                    },
                    None => {
                        None
                    }
                };

                // Body parameters (note that non-required body parameters will ignore garbage
                // values, rather than causing a 400 response). Produce warning header and logs for
                // any unused fields.
                let result = body.to_raw().await;
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
                                        Err(e) => return Ok(Response::builder()
                                                        .status(StatusCode::BAD_REQUEST)
                                                        .body(Body::from(format!("Couldn't parse body parameter body - doesn't match schema: {}", e)))
                                                        .expect("Unable to create Bad Request response for invalid body parameter body due to schema")),
                                    }
                                } else {
                                    None
                                };
                                let param_body = match param_body {
                                    Some(param_body) => param_body,
                                    None => return Ok(Response::builder()
                                                        .status(StatusCode::BAD_REQUEST)
                                                        .body(Body::from("Missing required body parameter body"))
                                                        .expect("Unable to create Bad Request response for missing body parameter body")),
                                };

                                let result = api_impl.post_view_config(
                                            param_name,
                                            param_body,
                                            param_jenkins_crumb,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        if !unused_elements.is_empty() {
                                            response.headers_mut().insert(
                                                HeaderName::from_static("warning"),
                                                HeaderValue::from_str(format!("Ignoring unknown fields in body: {:?}", unused_elements).as_str())
                                                    .expect("Unable to create Warning header value"));
                                        }

                                        match result {
                                            Ok(rsp) => match rsp {
                                                PostViewConfigResponse::SuccessfullyUpdatedViewConfiguration
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                },
                                                PostViewConfigResponse::AnErrorHasOccurred
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(400).expect("Unable to turn 400 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("*/*")
                                                            .expect("Unable to create Content-Type header for POST_VIEW_CONFIG_AN_ERROR_HAS_OCCURRED"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                PostViewConfigResponse::AuthenticationFailed
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(401).expect("Unable to turn 401 into a StatusCode");
                                                },
                                                PostViewConfigResponse::JenkinsRequiresAuthentication
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(403).expect("Unable to turn 403 into a StatusCode");
                                                },
                                                PostViewConfigResponse::ViewCannotBeFoundOnJenkinsInstance
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(404).expect("Unable to turn 404 into a StatusCode");
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
                            },
                            Err(e) => Ok(Response::builder()
                                                .status(StatusCode::BAD_REQUEST)
                                                .body(Body::from(format!("Couldn't read body parameter body: {}", e)))
                                                .expect("Unable to create Bad Request response due to unable to read body parameter body")),
                        }
            },

            _ if path.matched(paths::ID_API_JSON) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_CLASSES_) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_CLASSES_CLASS) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_PIPELINES_PIPELINE) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_ACTIVITIES) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_RUNS_RUN) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_FAVORITE) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE_QUEUE) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_LOG) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP_LOG) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_REPLAY) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_STOP) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES_REPOSITORY) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USER_) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_USER) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_SEARCH_) => method_not_allowed(),
            _ if path.matched(paths::ID_BLUE_REST_USERS_USER_FAVORITES) => method_not_allowed(),
            _ if path.matched(paths::ID_COMPUTER_API_JSON) => method_not_allowed(),
            _ if path.matched(paths::ID_CREATEITEM) => method_not_allowed(),
            _ if path.matched(paths::ID_CREATEVIEW) => method_not_allowed(),
            _ if path.matched(paths::ID_CRUMBISSUER_API_JSON) => method_not_allowed(),
            _ if path.matched(paths::ID_JOB_NAME_API_JSON) => method_not_allowed(),
            _ if path.matched(paths::ID_JOB_NAME_BUILD) => method_not_allowed(),
            _ if path.matched(paths::ID_JOB_NAME_CONFIG_XML) => method_not_allowed(),
            _ if path.matched(paths::ID_JOB_NAME_DISABLE) => method_not_allowed(),
            _ if path.matched(paths::ID_JOB_NAME_DODELETE) => method_not_allowed(),
            _ if path.matched(paths::ID_JOB_NAME_ENABLE) => method_not_allowed(),
            _ if path.matched(paths::ID_JOB_NAME_LASTBUILD_API_JSON) => method_not_allowed(),
            _ if path.matched(paths::ID_JOB_NAME_LASTBUILD_STOP) => method_not_allowed(),
            _ if path.matched(paths::ID_JOB_NAME_NUMBER_LOGTEXT_PROGRESSIVETEXT) => method_not_allowed(),
            _ if path.matched(paths::ID_JWT_AUTH_JWKS_KEY) => method_not_allowed(),
            _ if path.matched(paths::ID_JWT_AUTH_TOKEN) => method_not_allowed(),
            _ if path.matched(paths::ID_QUEUE_API_JSON) => method_not_allowed(),
            _ if path.matched(paths::ID_QUEUE_ITEM_NUMBER_API_JSON) => method_not_allowed(),
            _ if path.matched(paths::ID_VIEW_NAME_API_JSON) => method_not_allowed(),
            _ if path.matched(paths::ID_VIEW_NAME_CONFIG_XML) => method_not_allowed(),
            _ => Ok(Response::builder().status(StatusCode::NOT_FOUND)
                    .body(Body::empty())
                    .expect("Unable to create Not Found response"))
        }
    } Box::pin(run(self.api_impl.clone(), req)) }
}

/// Request parser for `Api`.
pub struct ApiRequestParser;
impl<T> RequestParser<T> for ApiRequestParser {
    fn parse_operation_id(request: &Request<T>) -> Result<&'static str, ()> {
        let path = paths::GLOBAL_REGEX_SET.matches(request.uri().path());
        match request.method() {
            // GetCrumb - GET /crumbIssuer/api/json
            &hyper::Method::GET if path.matched(paths::ID_CRUMBISSUER_API_JSON) => Ok("GetCrumb"),
            // DeletePipelineQueueItem - DELETE /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}
            &hyper::Method::DELETE if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE_QUEUE) => Ok("DeletePipelineQueueItem"),
            // GetAuthenticatedUser - GET /blue/rest/organizations/{organization}/user/
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USER_) => Ok("GetAuthenticatedUser"),
            // GetClasses - GET /blue/rest/classes/{class}
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_CLASSES_CLASS) => Ok("GetClasses"),
            // GetJsonWebKey - GET /jwt-auth/jwks/{key}
            &hyper::Method::GET if path.matched(paths::ID_JWT_AUTH_JWKS_KEY) => Ok("GetJsonWebKey"),
            // GetJsonWebToken - GET /jwt-auth/token
            &hyper::Method::GET if path.matched(paths::ID_JWT_AUTH_TOKEN) => Ok("GetJsonWebToken"),
            // GetOrganisation - GET /blue/rest/organizations/{organization}
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION) => Ok("GetOrganisation"),
            // GetOrganisations - GET /blue/rest/organizations/
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_) => Ok("GetOrganisations"),
            // GetPipeline - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE) => Ok("GetPipeline"),
            // GetPipelineActivities - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_ACTIVITIES) => Ok("GetPipelineActivities"),
            // GetPipelineBranch - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_) => Ok("GetPipelineBranch"),
            // GetPipelineBranchRun - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES_BRANCH_RUNS_RUN) => Ok("GetPipelineBranchRun"),
            // GetPipelineBranches - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_BRANCHES) => Ok("GetPipelineBranches"),
            // GetPipelineFolder - GET /blue/rest/organizations/{organization}/pipelines/{folder}/
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_) => Ok("GetPipelineFolder"),
            // GetPipelineFolderPipeline - GET /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_FOLDER_PIPELINES_PIPELINE) => Ok("GetPipelineFolderPipeline"),
            // GetPipelineQueue - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_QUEUE) => Ok("GetPipelineQueue"),
            // GetPipelineRun - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN) => Ok("GetPipelineRun"),
            // GetPipelineRunLog - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_LOG) => Ok("GetPipelineRunLog"),
            // GetPipelineRunNode - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE) => Ok("GetPipelineRunNode"),
            // GetPipelineRunNodeStep - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP) => Ok("GetPipelineRunNodeStep"),
            // GetPipelineRunNodeStepLog - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS_STEP_LOG) => Ok("GetPipelineRunNodeStepLog"),
            // GetPipelineRunNodeSteps - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES_NODE_STEPS) => Ok("GetPipelineRunNodeSteps"),
            // GetPipelineRunNodes - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_NODES) => Ok("GetPipelineRunNodes"),
            // GetPipelineRuns - GET /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS) => Ok("GetPipelineRuns"),
            // GetPipelines - GET /blue/rest/organizations/{organization}/pipelines/
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_) => Ok("GetPipelines"),
            // GetSCM - GET /blue/rest/organizations/{organization}/scm/{scm}
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM) => Ok("GetSCM"),
            // GetSCMOrganisationRepositories - GET /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES) => Ok("GetSCMOrganisationRepositories"),
            // GetSCMOrganisationRepository - GET /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS_SCMORGANISATION_REPOSITORIES_REPOSITORY) => Ok("GetSCMOrganisationRepository"),
            // GetSCMOrganisations - GET /blue/rest/organizations/{organization}/scm/{scm}/organizations
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_SCM_SCM_ORGANIZATIONS) => Ok("GetSCMOrganisations"),
            // GetUser - GET /blue/rest/organizations/{organization}/users/{user}
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_USER) => Ok("GetUser"),
            // GetUserFavorites - GET /blue/rest/users/{user}/favorites
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_USERS_USER_FAVORITES) => Ok("GetUserFavorites"),
            // GetUsers - GET /blue/rest/organizations/{organization}/users/
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_USERS_) => Ok("GetUsers"),
            // PostPipelineRun - POST /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay
            &hyper::Method::POST if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_REPLAY) => Ok("PostPipelineRun"),
            // PostPipelineRuns - POST /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs
            &hyper::Method::POST if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS) => Ok("PostPipelineRuns"),
            // PutPipelineFavorite - PUT /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite
            &hyper::Method::PUT if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_FAVORITE) => Ok("PutPipelineFavorite"),
            // PutPipelineRun - PUT /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop
            &hyper::Method::PUT if path.matched(paths::ID_BLUE_REST_ORGANIZATIONS_ORGANIZATION_PIPELINES_PIPELINE_RUNS_RUN_STOP) => Ok("PutPipelineRun"),
            // Search - GET /blue/rest/search/
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_SEARCH_) => Ok("Search"),
            // SearchClasses - GET /blue/rest/classes/
            &hyper::Method::GET if path.matched(paths::ID_BLUE_REST_CLASSES_) => Ok("SearchClasses"),
            // GetComputer - GET /computer/api/json
            &hyper::Method::GET if path.matched(paths::ID_COMPUTER_API_JSON) => Ok("GetComputer"),
            // GetJenkins - GET /api/json
            &hyper::Method::GET if path.matched(paths::ID_API_JSON) => Ok("GetJenkins"),
            // GetJob - GET /job/{name}/api/json
            &hyper::Method::GET if path.matched(paths::ID_JOB_NAME_API_JSON) => Ok("GetJob"),
            // GetJobConfig - GET /job/{name}/config.xml
            &hyper::Method::GET if path.matched(paths::ID_JOB_NAME_CONFIG_XML) => Ok("GetJobConfig"),
            // GetJobLastBuild - GET /job/{name}/lastBuild/api/json
            &hyper::Method::GET if path.matched(paths::ID_JOB_NAME_LASTBUILD_API_JSON) => Ok("GetJobLastBuild"),
            // GetJobProgressiveText - GET /job/{name}/{number}/logText/progressiveText
            &hyper::Method::GET if path.matched(paths::ID_JOB_NAME_NUMBER_LOGTEXT_PROGRESSIVETEXT) => Ok("GetJobProgressiveText"),
            // GetQueue - GET /queue/api/json
            &hyper::Method::GET if path.matched(paths::ID_QUEUE_API_JSON) => Ok("GetQueue"),
            // GetQueueItem - GET /queue/item/{number}/api/json
            &hyper::Method::GET if path.matched(paths::ID_QUEUE_ITEM_NUMBER_API_JSON) => Ok("GetQueueItem"),
            // GetView - GET /view/{name}/api/json
            &hyper::Method::GET if path.matched(paths::ID_VIEW_NAME_API_JSON) => Ok("GetView"),
            // GetViewConfig - GET /view/{name}/config.xml
            &hyper::Method::GET if path.matched(paths::ID_VIEW_NAME_CONFIG_XML) => Ok("GetViewConfig"),
            // HeadJenkins - HEAD /api/json
            &hyper::Method::HEAD if path.matched(paths::ID_API_JSON) => Ok("HeadJenkins"),
            // PostCreateItem - POST /createItem
            &hyper::Method::POST if path.matched(paths::ID_CREATEITEM) => Ok("PostCreateItem"),
            // PostCreateView - POST /createView
            &hyper::Method::POST if path.matched(paths::ID_CREATEVIEW) => Ok("PostCreateView"),
            // PostJobBuild - POST /job/{name}/build
            &hyper::Method::POST if path.matched(paths::ID_JOB_NAME_BUILD) => Ok("PostJobBuild"),
            // PostJobConfig - POST /job/{name}/config.xml
            &hyper::Method::POST if path.matched(paths::ID_JOB_NAME_CONFIG_XML) => Ok("PostJobConfig"),
            // PostJobDelete - POST /job/{name}/doDelete
            &hyper::Method::POST if path.matched(paths::ID_JOB_NAME_DODELETE) => Ok("PostJobDelete"),
            // PostJobDisable - POST /job/{name}/disable
            &hyper::Method::POST if path.matched(paths::ID_JOB_NAME_DISABLE) => Ok("PostJobDisable"),
            // PostJobEnable - POST /job/{name}/enable
            &hyper::Method::POST if path.matched(paths::ID_JOB_NAME_ENABLE) => Ok("PostJobEnable"),
            // PostJobLastBuildStop - POST /job/{name}/lastBuild/stop
            &hyper::Method::POST if path.matched(paths::ID_JOB_NAME_LASTBUILD_STOP) => Ok("PostJobLastBuildStop"),
            // PostViewConfig - POST /view/{name}/config.xml
            &hyper::Method::POST if path.matched(paths::ID_VIEW_NAME_CONFIG_XML) => Ok("PostViewConfig"),
            _ => Err(()),
        }
    }
}
