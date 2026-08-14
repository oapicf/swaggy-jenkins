#![allow(missing_docs, unused_variables, trivial_casts)]


#[allow(unused_imports)]
use futures::{future, Stream, stream};
#[allow(unused_imports)]
use openapi_client::{Api, ApiNoContext, Claims, Client, ContextWrapperExt, models,
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
use clap::{Command, Arg};

// NOTE: Set environment variable RUST_LOG to the name of the executable (or "cargo run") to activate console logging for all loglevels.
//     See https://docs.rs/env_logger/latest/env_logger/  for more details

#[allow(unused_imports)]
use log::info;

// swagger::Has may be unused if there are no examples
#[allow(unused_imports)]
use swagger::{AuthData, ContextBuilder, EmptyContext, Has, Push, XSpanIdString};

type ClientContext = swagger::make_context_ty!(ContextBuilder, EmptyContext, Option<AuthData>, XSpanIdString);

mod client_auth;
use client_auth::build_token;


// rt may be unused if there are no examples
#[allow(unused_mut)]
fn main() {
    env_logger::init();

    let matches = Command::new("client")
        .arg(Arg::new("operation")
            .help("Sets the operation to run")
            .value_parser(Vec::<&str>::from([
                "GetCrumb",
                "GetJsonWebToken",
                "GetOrganisations",
                "GetJsonWebKey",
                "GetComputer",
                "GetJenkins",
                "GetQueue",
                "HeadJenkins",
            ]))
            .required(true)
            .index(1))
        .arg(Arg::new("https")
            .long("https")
            .help("Whether to use HTTPS or not"))
        .arg(Arg::new("host")
            .long("host")
            .default_value("localhost")
            .help("Hostname to contact"))
        .arg(Arg::new("port")
            .long("port")
            .default_value("8080")
            .help("Port to contact"))
        .get_matches();

    // Create Bearer-token with a fixed key (secret) for test purposes.
    // In a real (production) system this Bearer token should be obtained via an external Identity/Authentication-server
    // Ensure that you set the correct algorithm and encodingkey that matches what is used on the server side.
    // See https://github.com/Keats/jsonwebtoken for more information
    let auth_token = build_token(
            Claims {
                sub: "tester@acme.com".to_owned(),
                company: "ACME".to_owned(),
                iss: "my_identity_provider".to_owned(),
                // added a very long expiry time
                aud: "org.acme.Resource_Server".to_string(),
                exp: 10000000000,
                // In this example code all available Scopes are added, so the current Bearer Token gets fully authorization.
                scopes:
                  "".to_owned()
            },
            b"secret").unwrap();

    let auth_data = if !auth_token.is_empty() {
        Some(AuthData::Bearer(auth_token))
    } else {
        // No Bearer-token available, so return None
        None
    };

    let is_https = matches.contains_id("https");
    let base_url = format!("{}://{}:{}",
        if is_https { "https" } else { "http" },
        matches.get_one::<String>("host").unwrap(),
        matches.get_one::<u16>("port").unwrap());

    let context: ClientContext =
        swagger::make_context!(ContextBuilder, EmptyContext, auth_data, XSpanIdString::default());

    let mut client : Box<dyn ApiNoContext<ClientContext>> = {
        #[cfg(feature = "client-tls")]
        {
            if is_https {
                // Using HTTPS with native-tls
                let client = Box::new(Client::try_new_https(&base_url)
                    .expect("Failed to create HTTPS client"));
                Box::new(client.with_context(context))
            } else {
                // Using HTTP
                let client = Box::new(Client::try_new_http(&base_url)
                    .expect("Failed to create HTTP client"));
                Box::new(client.with_context(context))
            }
        }

        #[cfg(not(feature = "client-tls"))]
        {
            if is_https {
                panic!("HTTPS requested but TLS support not enabled. \
                        Enable the 'client-tls' feature to use HTTPS.");
            }
            // Using HTTP only
            let client = Box::new(Client::try_new_http(&base_url)
                .expect("Failed to create HTTP client"));
            Box::new(client.with_context(context))
        }
    };

    let mut rt = tokio::runtime::Runtime::new().unwrap();

    match matches.get_one::<String>("operation").map(String::as_str) {
        Some("GetCrumb") => {
            let result = rt.block_on(client.get_crumb(
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetJsonWebToken") => {
            let result = rt.block_on(client.get_json_web_token(
                  Some(0),
                  Some(0)
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetOrganisations") => {
            let result = rt.block_on(client.get_organisations(
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        /* Disabled because there's no example.
        Some("Search") => {
            let result = rt.block_on(client.search(
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("SearchClasses") => {
            let result = rt.block_on(client.search_classes(
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetAuthenticatedUser") => {
            let result = rt.block_on(client.get_authenticated_user(
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetClasses") => {
            let result = rt.block_on(client.get_classes(
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        Some("GetJsonWebKey") => {
            let result = rt.block_on(client.get_json_web_key(
                  0
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        /* Disabled because there's no example.
        Some("GetOrganisation") => {
            let result = rt.block_on(client.get_organisation(
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetPipelines") => {
            let result = rt.block_on(client.get_pipelines(
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetUserFavorites") => {
            let result = rt.block_on(client.get_user_favorites(
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetUsers") => {
            let result = rt.block_on(client.get_users(
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetPipeline") => {
            let result = rt.block_on(client.get_pipeline(
                  ???,
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetPipelineActivities") => {
            let result = rt.block_on(client.get_pipeline_activities(
                  ???,
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetPipelineBranches") => {
            let result = rt.block_on(client.get_pipeline_branches(
                  ???,
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetPipelineFolder") => {
            let result = rt.block_on(client.get_pipeline_folder(
                  ???,
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetPipelineQueue") => {
            let result = rt.block_on(client.get_pipeline_queue(
                  ???,
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetPipelineRuns") => {
            let result = rt.block_on(client.get_pipeline_runs(
                  ???,
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetScm") => {
            let result = rt.block_on(client.get_scm(
                  ???,
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetScmOrganisations") => {
            let result = rt.block_on(client.get_scm_organisations(
                  ???,
                  ???,
                  None
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetUser") => {
            let result = rt.block_on(client.get_user(
                  ???,
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("PostPipelineRuns") => {
            let result = rt.block_on(client.post_pipeline_runs(
                  ???,
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("PutPipelineFavorite") => {
            let result = rt.block_on(client.put_pipeline_favorite(
                  ???,
                  ???,
                  true
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("DeletePipelineQueueItem") => {
            let result = rt.block_on(client.delete_pipeline_queue_item(
                  ???,
                  ???,
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetPipelineBranch") => {
            let result = rt.block_on(client.get_pipeline_branch(
                  ???,
                  ???,
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetPipelineFolderPipeline") => {
            let result = rt.block_on(client.get_pipeline_folder_pipeline(
                  ???,
                  ???,
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetPipelineRun") => {
            let result = rt.block_on(client.get_pipeline_run(
                  ???,
                  ???,
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetPipelineRunLog") => {
            let result = rt.block_on(client.get_pipeline_run_log(
                  ???,
                  ???,
                  ???,
                  Some(0),
                  Some(true)
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetPipelineRunNodes") => {
            let result = rt.block_on(client.get_pipeline_run_nodes(
                  ???,
                  ???,
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetScmOrganisationRepositories") => {
            let result = rt.block_on(client.get_scm_organisation_repositories(
                  ???,
                  ???,
                  ???,
                  None,
                  Some(0),
                  Some(0)
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("PostPipelineRun") => {
            let result = rt.block_on(client.post_pipeline_run(
                  ???,
                  ???,
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("PutPipelineRun") => {
            let result = rt.block_on(client.put_pipeline_run(
                  ???,
                  ???,
                  ???,
                  None,
                  Some(0)
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetPipelineBranchRun") => {
            let result = rt.block_on(client.get_pipeline_branch_run(
                  ???,
                  ???,
                  ???,
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetPipelineRunNode") => {
            let result = rt.block_on(client.get_pipeline_run_node(
                  ???,
                  ???,
                  ???,
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetPipelineRunNodeSteps") => {
            let result = rt.block_on(client.get_pipeline_run_node_steps(
                  ???,
                  ???,
                  ???,
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetScmOrganisationRepository") => {
            let result = rt.block_on(client.get_scm_organisation_repository(
                  ???,
                  ???,
                  ???,
                  ???,
                  None
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetPipelineRunNodeStep") => {
            let result = rt.block_on(client.get_pipeline_run_node_step(
                  ???,
                  ???,
                  ???,
                  ???,
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetPipelineRunNodeStepLog") => {
            let result = rt.block_on(client.get_pipeline_run_node_step_log(
                  ???,
                  ???,
                  ???,
                  ???,
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        Some("GetComputer") => {
            let result = rt.block_on(client.get_computer(
                  0
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetJenkins") => {
            let result = rt.block_on(client.get_jenkins(
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("GetQueue") => {
            let result = rt.block_on(client.get_queue(
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        Some("HeadJenkins") => {
            let result = rt.block_on(client.head_jenkins(
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        /* Disabled because there's no example.
        Some("PostCreateItem") => {
            let result = rt.block_on(client.post_create_item(
                  ???,
                  None,
                  None,
                  None,
                  None,
                  Some("body_example".to_string())
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("PostCreateView") => {
            let result = rt.block_on(client.post_create_view(
                  ???,
                  None,
                  None,
                  Some("body_example".to_string())
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetJob") => {
            let result = rt.block_on(client.get_job(
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetJobConfig") => {
            let result = rt.block_on(client.get_job_config(
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetJobLastBuild") => {
            let result = rt.block_on(client.get_job_last_build(
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetQueueItem") => {
            let result = rt.block_on(client.get_queue_item(
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetView") => {
            let result = rt.block_on(client.get_view(
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetViewConfig") => {
            let result = rt.block_on(client.get_view_config(
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("PostJobBuild") => {
            let result = rt.block_on(client.post_job_build(
                  ???,
                  ???,
                  None,
                  None
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("PostJobConfig") => {
            let result = rt.block_on(client.post_job_config(
                  ???,
                  "body_example".to_string(),
                  None
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("PostJobDelete") => {
            let result = rt.block_on(client.post_job_delete(
                  ???,
                  None
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("PostJobDisable") => {
            let result = rt.block_on(client.post_job_disable(
                  ???,
                  None
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("PostJobEnable") => {
            let result = rt.block_on(client.post_job_enable(
                  ???,
                  None
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("PostJobLastBuildStop") => {
            let result = rt.block_on(client.post_job_last_build_stop(
                  ???,
                  None
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("PostViewConfig") => {
            let result = rt.block_on(client.post_view_config(
                  ???,
                  "body_example".to_string(),
                  None
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        /* Disabled because there's no example.
        Some("GetJobProgressiveText") => {
            let result = rt.block_on(client.get_job_progressive_text(
                  ???,
                  ???,
                  ???
            ));
            info!("{:?} (X-Span-ID: {:?})", result, (client.context() as &dyn Has<XSpanIdString>).get().clone());
        },
        */
        _ => {
            panic!("Invalid operation provided")
        }
    }
}
