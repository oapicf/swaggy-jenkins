#![allow(missing_docs, unused_variables, trivial_casts)]


#[allow(unused_imports)]
use futures::{future, Stream, stream};
#[allow(unused_imports)]
use openapi_client::{Api, ApiNoContext, Client, ContextWrapperExt, models,
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
                      PostViewConfigResponse,
                     };
use clap::{App, Arg};

#[allow(unused_imports)]
use log::info;

// swagger::Has may be unused if there are no examples
#[allow(unused_imports)]
use swagger::{AuthData, ContextBuilder, EmptyContext, Has, Push, XSpanIdString};

type ClientContext = swagger::make_context_ty!(ContextBuilder, EmptyContext, Option<AuthData>, XSpanIdString);

// rt may be unused if there are no examples
#[allow(unused_mut)]
fn main() {
    env_logger::init();

    let matches = App::new("client")
        .arg(Arg::with_name("operation")
            .help("Sets the operation to run")
            .possible_values(&[
                "GetCrumb",
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
                "GetScm",
                "GetScmOrganisationRepositories",
                "GetScmOrganisationRepository",
                "GetScmOrganisations",
                "GetUser",
                "GetUserFavorites",
                "GetUsers",
                "PostPipelineRun",
                "PostPipelineRuns",
                "PutPipelineFavorite",
                "PutPipelineRun",
                "Search",
                "SearchClasses",
                "GetComputer",
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
            .default_value("8080")
            .help("Port to contact"))
        .get_matches();

    let is_https = matches.is_present("https");
    let base_url = format!("{}://{}:{}",
                           if is_https { "https" } else { "http" },
                           matches.value_of("host").unwrap(),
                           matches.value_of("port").unwrap());

    let context: ClientContext =
        swagger::make_context!(ContextBuilder, EmptyContext, None as Option<AuthData>, XSpanIdString::default());

    let mut client : Box<dyn ApiNoContext<ClientContext>> = if matches.is_present("https") {
        // Using Simple HTTPS
        let client = Box::new(Client::try_new_https(&base_url)
            .expect("Failed to create HTTPS client"));
        Box::new(client.with_context(context))
    } else {
        // Using HTTP
        let client = Box::new(Client::try_new_http(
            &base_url)
            .expect("Failed to create HTTP client"));
        Box::new(client.with_context(context))
    };

    let mut rt = tokio::runtime::Runtime::new().unwrap();

    match matches.value_of("operation") {
        Some("GetCrumb") => {
            let result = rt.block_on(client.get_crumb(
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("DeletePipelineQueueItem") => {
            let result = rt.block_on(client.delete_pipeline_queue_item(
                  "organization_example".to_string(),
                  "pipeline_example".to_string(),
                  "queue_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetAuthenticatedUser") => {
            let result = rt.block_on(client.get_authenticated_user(
                  "organization_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetClasses") => {
            let result = rt.block_on(client.get_classes(
                  "class_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetJsonWebKey") => {
            let result = rt.block_on(client.get_json_web_key(
                  56
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetJsonWebToken") => {
            let result = rt.block_on(client.get_json_web_token(
                  Some(56),
                  Some(56)
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetOrganisation") => {
            let result = rt.block_on(client.get_organisation(
                  "organization_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetOrganisations") => {
            let result = rt.block_on(client.get_organisations(
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetPipeline") => {
            let result = rt.block_on(client.get_pipeline(
                  "organization_example".to_string(),
                  "pipeline_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetPipelineActivities") => {
            let result = rt.block_on(client.get_pipeline_activities(
                  "organization_example".to_string(),
                  "pipeline_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetPipelineBranch") => {
            let result = rt.block_on(client.get_pipeline_branch(
                  "organization_example".to_string(),
                  "pipeline_example".to_string(),
                  "branch_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetPipelineBranchRun") => {
            let result = rt.block_on(client.get_pipeline_branch_run(
                  "organization_example".to_string(),
                  "pipeline_example".to_string(),
                  "branch_example".to_string(),
                  "run_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetPipelineBranches") => {
            let result = rt.block_on(client.get_pipeline_branches(
                  "organization_example".to_string(),
                  "pipeline_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetPipelineFolder") => {
            let result = rt.block_on(client.get_pipeline_folder(
                  "organization_example".to_string(),
                  "folder_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetPipelineFolderPipeline") => {
            let result = rt.block_on(client.get_pipeline_folder_pipeline(
                  "organization_example".to_string(),
                  "pipeline_example".to_string(),
                  "folder_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetPipelineQueue") => {
            let result = rt.block_on(client.get_pipeline_queue(
                  "organization_example".to_string(),
                  "pipeline_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetPipelineRun") => {
            let result = rt.block_on(client.get_pipeline_run(
                  "organization_example".to_string(),
                  "pipeline_example".to_string(),
                  "run_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetPipelineRunLog") => {
            let result = rt.block_on(client.get_pipeline_run_log(
                  "organization_example".to_string(),
                  "pipeline_example".to_string(),
                  "run_example".to_string(),
                  Some(56),
                  Some(true)
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetPipelineRunNode") => {
            let result = rt.block_on(client.get_pipeline_run_node(
                  "organization_example".to_string(),
                  "pipeline_example".to_string(),
                  "run_example".to_string(),
                  "node_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetPipelineRunNodeStep") => {
            let result = rt.block_on(client.get_pipeline_run_node_step(
                  "organization_example".to_string(),
                  "pipeline_example".to_string(),
                  "run_example".to_string(),
                  "node_example".to_string(),
                  "step_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetPipelineRunNodeStepLog") => {
            let result = rt.block_on(client.get_pipeline_run_node_step_log(
                  "organization_example".to_string(),
                  "pipeline_example".to_string(),
                  "run_example".to_string(),
                  "node_example".to_string(),
                  "step_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetPipelineRunNodeSteps") => {
            let result = rt.block_on(client.get_pipeline_run_node_steps(
                  "organization_example".to_string(),
                  "pipeline_example".to_string(),
                  "run_example".to_string(),
                  "node_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetPipelineRunNodes") => {
            let result = rt.block_on(client.get_pipeline_run_nodes(
                  "organization_example".to_string(),
                  "pipeline_example".to_string(),
                  "run_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetPipelineRuns") => {
            let result = rt.block_on(client.get_pipeline_runs(
                  "organization_example".to_string(),
                  "pipeline_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetPipelines") => {
            let result = rt.block_on(client.get_pipelines(
                  "organization_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetScm") => {
            let result = rt.block_on(client.get_scm(
                  "organization_example".to_string(),
                  "scm_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetScmOrganisationRepositories") => {
            let result = rt.block_on(client.get_scm_organisation_repositories(
                  "organization_example".to_string(),
                  "scm_example".to_string(),
                  "scm_organisation_example".to_string(),
                  Some("credential_id_example".to_string()),
                  Some(56),
                  Some(56)
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetScmOrganisationRepository") => {
            let result = rt.block_on(client.get_scm_organisation_repository(
                  "organization_example".to_string(),
                  "scm_example".to_string(),
                  "scm_organisation_example".to_string(),
                  "repository_example".to_string(),
                  Some("credential_id_example".to_string())
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetScmOrganisations") => {
            let result = rt.block_on(client.get_scm_organisations(
                  "organization_example".to_string(),
                  "scm_example".to_string(),
                  Some("credential_id_example".to_string())
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetUser") => {
            let result = rt.block_on(client.get_user(
                  "organization_example".to_string(),
                  "user_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetUserFavorites") => {
            let result = rt.block_on(client.get_user_favorites(
                  "user_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetUsers") => {
            let result = rt.block_on(client.get_users(
                  "organization_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("PostPipelineRun") => {
            let result = rt.block_on(client.post_pipeline_run(
                  "organization_example".to_string(),
                  "pipeline_example".to_string(),
                  "run_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("PostPipelineRuns") => {
            let result = rt.block_on(client.post_pipeline_runs(
                  "organization_example".to_string(),
                  "pipeline_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("PutPipelineFavorite") => {
            let result = rt.block_on(client.put_pipeline_favorite(
                  "organization_example".to_string(),
                  "pipeline_example".to_string(),
                  true
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("PutPipelineRun") => {
            let result = rt.block_on(client.put_pipeline_run(
                  "organization_example".to_string(),
                  "pipeline_example".to_string(),
                  "run_example".to_string(),
                  Some("blocking_example".to_string()),
                  Some(56)
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("Search") => {
            let result = rt.block_on(client.search(
                  "q_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("SearchClasses") => {
            let result = rt.block_on(client.search_classes(
                  "q_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetComputer") => {
            let result = rt.block_on(client.get_computer(
                  56
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetJenkins") => {
            let result = rt.block_on(client.get_jenkins(
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetJob") => {
            let result = rt.block_on(client.get_job(
                  "name_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetJobConfig") => {
            let result = rt.block_on(client.get_job_config(
                  "name_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetJobLastBuild") => {
            let result = rt.block_on(client.get_job_last_build(
                  "name_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetJobProgressiveText") => {
            let result = rt.block_on(client.get_job_progressive_text(
                  "name_example".to_string(),
                  "number_example".to_string(),
                  "start_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetQueue") => {
            let result = rt.block_on(client.get_queue(
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetQueueItem") => {
            let result = rt.block_on(client.get_queue_item(
                  "number_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetView") => {
            let result = rt.block_on(client.get_view(
                  "name_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetViewConfig") => {
            let result = rt.block_on(client.get_view_config(
                  "name_example".to_string()
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("HeadJenkins") => {
            let result = rt.block_on(client.head_jenkins(
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("PostCreateItem") => {
            let result = rt.block_on(client.post_create_item(
                  "name_example".to_string(),
                  Some("from_example".to_string()),
                  Some("mode_example".to_string()),
                  Some("jenkins_crumb_example".to_string()),
                  Some("content_type_example".to_string()),
                  Some("body_example".to_string())
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("PostCreateView") => {
            let result = rt.block_on(client.post_create_view(
                  "name_example".to_string(),
                  Some("jenkins_crumb_example".to_string()),
                  Some("content_type_example".to_string()),
                  Some("body_example".to_string())
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("PostJobBuild") => {
            let result = rt.block_on(client.post_job_build(
                  "name_example".to_string(),
                  "json_example".to_string(),
                  Some("token_example".to_string()),
                  Some("jenkins_crumb_example".to_string())
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("PostJobConfig") => {
            let result = rt.block_on(client.post_job_config(
                  "name_example".to_string(),
                  "body_example".to_string(),
                  Some("jenkins_crumb_example".to_string())
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("PostJobDelete") => {
            let result = rt.block_on(client.post_job_delete(
                  "name_example".to_string(),
                  Some("jenkins_crumb_example".to_string())
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("PostJobDisable") => {
            let result = rt.block_on(client.post_job_disable(
                  "name_example".to_string(),
                  Some("jenkins_crumb_example".to_string())
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("PostJobEnable") => {
            let result = rt.block_on(client.post_job_enable(
                  "name_example".to_string(),
                  Some("jenkins_crumb_example".to_string())
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("PostJobLastBuildStop") => {
            let result = rt.block_on(client.post_job_last_build_stop(
                  "name_example".to_string(),
                  Some("jenkins_crumb_example".to_string())
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("PostViewConfig") => {
            let result = rt.block_on(client.post_view_config(
                  "name_example".to_string(),
                  "body_example".to_string(),
                  Some("jenkins_crumb_example".to_string())
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        _ => {
            panic!("Invalid operation provided")
        }
    }
}
