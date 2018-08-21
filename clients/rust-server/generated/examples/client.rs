#![allow(missing_docs, unused_variables, trivial_casts)]

extern crate swagger_client;
#[allow(unused_extern_crates)]
extern crate futures;
#[allow(unused_extern_crates)]
#[macro_use]
extern crate swagger;
#[allow(unused_extern_crates)]
extern crate uuid;
extern crate clap;
extern crate tokio_core;

use swagger::{ContextBuilder, EmptyContext, XSpanIdString, Has, Push, AuthData};

#[allow(unused_imports)]
use futures::{Future, future, Stream, stream};
use tokio_core::reactor;
#[allow(unused_imports)]
use swagger_client::{ApiNoContext, ContextWrapperExt,
                      ApiError,
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
use clap::{App, Arg};

fn main() {
    let matches = App::new("client")
        .arg(Arg::with_name("operation")
            .help("Sets the operation to run")
            .possible_values(&[
    "DeletePipelineQueueItem",
    "GetAuthenticatedUser",
    "GetClasses",
    "GetJsonWebKey",
    "GetJsonWebToken",
    "GetOrganisation",
    "GetOrganisations",
    "GetPipeline",
    "GetPipelineActivities",
    "GetPipelineBranch",
    "GetPipelineBranchRun",
    "GetPipelineBranches",
    "GetPipelineFolder",
    "GetPipelineFolderPipeline",
    "GetPipelineQueue",
    "GetPipelineRun",
    "GetPipelineRunLog",
    "GetPipelineRunNode",
    "GetPipelineRunNodeStep",
    "GetPipelineRunNodeStepLog",
    "GetPipelineRunNodeSteps",
    "GetPipelineRunNodes",
    "GetPipelineRuns",
    "GetPipelines",
    "GetSCM",
    "GetSCMOrganisationRepositories",
    "GetSCMOrganisationRepository",
    "GetSCMOrganisations",
    "GetUser",
    "GetUserFavorites",
    "GetUsers",
    "PostPipelineRun",
    "PostPipelineRuns",
    "PutPipelineRun",
    "Search",
    "SearchClasses",
    "GetComputer",
    "GetCrumb",
    "GetJenkins",
    "GetJob",
    "GetJobConfig",
    "GetJobLastBuild",
    "GetJobProgressiveText",
    "GetQueue",
    "GetQueueItem",
    "GetView",
    "GetViewConfig",
    "HeadJenkins",
    "PostCreateItem",
    "PostCreateView",
    "PostJobBuild",
    "PostJobConfig",
    "PostJobDelete",
    "PostJobDisable",
    "PostJobEnable",
    "PostJobLastBuildStop",
    "PostViewConfig",
])
            .required(true)
            .index(1))
        .arg(Arg::with_name("https")
            .long("https")
            .help("Whether to use HTTPS or not"))
        .arg(Arg::with_name("host")
            .long("host")
            .takes_value(true)
            .default_value("localhost")
            .help("Hostname to contact"))
        .arg(Arg::with_name("port")
            .long("port")
            .takes_value(true)
            .default_value("80")
            .help("Port to contact"))
        .get_matches();

    let mut core = reactor::Core::new().unwrap();
    let is_https = matches.is_present("https");
    let base_url = format!("{}://{}:{}",
                           if is_https { "https" } else { "http" },
                           matches.value_of("host").unwrap(),
                           matches.value_of("port").unwrap());
    let client = if matches.is_present("https") {
        // Using Simple HTTPS
        swagger_client::Client::try_new_https(core.handle(), &base_url, "examples/ca.pem")
            .expect("Failed to create HTTPS client")
    } else {
        // Using HTTP
        swagger_client::Client::try_new_http(core.handle(), &base_url)
            .expect("Failed to create HTTP client")
    };

    let context: make_context_ty!(ContextBuilder, EmptyContext, Option<AuthData>, XSpanIdString) =
        make_context!(ContextBuilder, EmptyContext, None, XSpanIdString(self::uuid::Uuid::new_v4().to_string()));
    let client = client.with_context(context);

    match matches.value_of("operation") {

        Some("DeletePipelineQueueItem") => {
            let result = core.run(client.delete_pipeline_queue_item("organization_example".to_string(), "pipeline_example".to_string(), "queue_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetAuthenticatedUser") => {
            let result = core.run(client.get_authenticated_user("organization_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetClasses") => {
            let result = core.run(client.get_classes("class_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetJsonWebKey") => {
            let result = core.run(client.get_json_web_key(56));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetJsonWebToken") => {
            let result = core.run(client.get_json_web_token(Some(56), Some(56)));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetOrganisation") => {
            let result = core.run(client.get_organisation("organization_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetOrganisations") => {
            let result = core.run(client.get_organisations());
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetPipeline") => {
            let result = core.run(client.get_pipeline("organization_example".to_string(), "pipeline_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetPipelineActivities") => {
            let result = core.run(client.get_pipeline_activities("organization_example".to_string(), "pipeline_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetPipelineBranch") => {
            let result = core.run(client.get_pipeline_branch("organization_example".to_string(), "pipeline_example".to_string(), "branch_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetPipelineBranchRun") => {
            let result = core.run(client.get_pipeline_branch_run("organization_example".to_string(), "pipeline_example".to_string(), "branch_example".to_string(), "run_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetPipelineBranches") => {
            let result = core.run(client.get_pipeline_branches("organization_example".to_string(), "pipeline_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetPipelineFolder") => {
            let result = core.run(client.get_pipeline_folder("organization_example".to_string(), "folder_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetPipelineFolderPipeline") => {
            let result = core.run(client.get_pipeline_folder_pipeline("organization_example".to_string(), "pipeline_example".to_string(), "folder_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetPipelineQueue") => {
            let result = core.run(client.get_pipeline_queue("organization_example".to_string(), "pipeline_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetPipelineRun") => {
            let result = core.run(client.get_pipeline_run("organization_example".to_string(), "pipeline_example".to_string(), "run_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetPipelineRunLog") => {
            let result = core.run(client.get_pipeline_run_log("organization_example".to_string(), "pipeline_example".to_string(), "run_example".to_string(), Some(56), Some(true)));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetPipelineRunNode") => {
            let result = core.run(client.get_pipeline_run_node("organization_example".to_string(), "pipeline_example".to_string(), "run_example".to_string(), "node_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetPipelineRunNodeStep") => {
            let result = core.run(client.get_pipeline_run_node_step("organization_example".to_string(), "pipeline_example".to_string(), "run_example".to_string(), "node_example".to_string(), "step_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetPipelineRunNodeStepLog") => {
            let result = core.run(client.get_pipeline_run_node_step_log("organization_example".to_string(), "pipeline_example".to_string(), "run_example".to_string(), "node_example".to_string(), "step_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetPipelineRunNodeSteps") => {
            let result = core.run(client.get_pipeline_run_node_steps("organization_example".to_string(), "pipeline_example".to_string(), "run_example".to_string(), "node_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetPipelineRunNodes") => {
            let result = core.run(client.get_pipeline_run_nodes("organization_example".to_string(), "pipeline_example".to_string(), "run_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetPipelineRuns") => {
            let result = core.run(client.get_pipeline_runs("organization_example".to_string(), "pipeline_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetPipelines") => {
            let result = core.run(client.get_pipelines("organization_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetSCM") => {
            let result = core.run(client.get_scm("organization_example".to_string(), "scm_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetSCMOrganisationRepositories") => {
            let result = core.run(client.get_scm_organisation_repositories("organization_example".to_string(), "scm_example".to_string(), "scm_organisation_example".to_string(), Some("credential_id_example".to_string()), Some(56), Some(56)));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetSCMOrganisationRepository") => {
            let result = core.run(client.get_scm_organisation_repository("organization_example".to_string(), "scm_example".to_string(), "scm_organisation_example".to_string(), "repository_example".to_string(), Some("credential_id_example".to_string())));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetSCMOrganisations") => {
            let result = core.run(client.get_scm_organisations("organization_example".to_string(), "scm_example".to_string(), Some("credential_id_example".to_string())));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetUser") => {
            let result = core.run(client.get_user("organization_example".to_string(), "user_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetUserFavorites") => {
            let result = core.run(client.get_user_favorites("user_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetUsers") => {
            let result = core.run(client.get_users("organization_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("PostPipelineRun") => {
            let result = core.run(client.post_pipeline_run("organization_example".to_string(), "pipeline_example".to_string(), "run_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("PostPipelineRuns") => {
            let result = core.run(client.post_pipeline_runs("organization_example".to_string(), "pipeline_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        // Disabled because there's no example.
        // Some("PutPipelineFavorite") => {
        //     let result = core.run(client.put_pipeline_favorite("organization_example".to_string(), "pipeline_example".to_string(), ???));
        //     println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
        //  },

        Some("PutPipelineRun") => {
            let result = core.run(client.put_pipeline_run("organization_example".to_string(), "pipeline_example".to_string(), "run_example".to_string(), Some("blocking_example".to_string()), Some(56)));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("Search") => {
            let result = core.run(client.search("q_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("SearchClasses") => {
            let result = core.run(client.search_classes("q_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetComputer") => {
            let result = core.run(client.get_computer(56));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetCrumb") => {
            let result = core.run(client.get_crumb());
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetJenkins") => {
            let result = core.run(client.get_jenkins());
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetJob") => {
            let result = core.run(client.get_job("name_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetJobConfig") => {
            let result = core.run(client.get_job_config("name_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetJobLastBuild") => {
            let result = core.run(client.get_job_last_build("name_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetJobProgressiveText") => {
            let result = core.run(client.get_job_progressive_text("name_example".to_string(), "number_example".to_string(), "start_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetQueue") => {
            let result = core.run(client.get_queue());
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetQueueItem") => {
            let result = core.run(client.get_queue_item("number_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetView") => {
            let result = core.run(client.get_view("name_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("GetViewConfig") => {
            let result = core.run(client.get_view_config("name_example".to_string()));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("HeadJenkins") => {
            let result = core.run(client.head_jenkins());
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("PostCreateItem") => {
            let result = core.run(client.post_create_item("name_example".to_string(), Some("from_example".to_string()), Some("mode_example".to_string()), Some("jenkins_crumb_example".to_string()), Some("content_type_example".to_string()), Some("body_example".to_string())));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("PostCreateView") => {
            let result = core.run(client.post_create_view("name_example".to_string(), Some("jenkins_crumb_example".to_string()), Some("content_type_example".to_string()), Some("body_example".to_string())));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("PostJobBuild") => {
            let result = core.run(client.post_job_build("name_example".to_string(), "json_example".to_string(), Some("token_example".to_string()), Some("jenkins_crumb_example".to_string())));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("PostJobConfig") => {
            let result = core.run(client.post_job_config("name_example".to_string(), "body_example".to_string(), Some("jenkins_crumb_example".to_string())));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("PostJobDelete") => {
            let result = core.run(client.post_job_delete("name_example".to_string(), Some("jenkins_crumb_example".to_string())));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("PostJobDisable") => {
            let result = core.run(client.post_job_disable("name_example".to_string(), Some("jenkins_crumb_example".to_string())));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("PostJobEnable") => {
            let result = core.run(client.post_job_enable("name_example".to_string(), Some("jenkins_crumb_example".to_string())));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("PostJobLastBuildStop") => {
            let result = core.run(client.post_job_last_build_stop("name_example".to_string(), Some("jenkins_crumb_example".to_string())));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        Some("PostViewConfig") => {
            let result = core.run(client.post_view_config("name_example".to_string(), "body_example".to_string(), Some("jenkins_crumb_example".to_string())));
            println!("{:?} (X-Span-ID: {:?})", result, (client.context() as &Has<XSpanIdString>).get().clone());
         },

        _ => {
            panic!("Invalid operation provided")
        }
    }
}

