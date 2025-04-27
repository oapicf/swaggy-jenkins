//! CLI tool driving the API client
use anyhow::{anyhow, Context, Result};
use dialoguer::Confirm;
use log::{debug, info};
// models may be unused if all inputs are primitive types
#[allow(unused_imports)]
use openapi_client::{
    models, ApiNoContext, Client, ContextWrapperExt,
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
use simple_logger::SimpleLogger;
use structopt::StructOpt;
use swagger::{AuthData, ContextBuilder, EmptyContext, Push, XSpanIdString};

type ClientContext = swagger::make_context_ty!(
    ContextBuilder,
    EmptyContext,
    Option<AuthData>,
    XSpanIdString
);

#[derive(StructOpt, Debug)]
#[structopt(
    name = "Swaggy Jenkins",
    version = "3.0.2-pre.0",
    about = "CLI access to Swaggy Jenkins"
)]
struct Cli {
    #[structopt(subcommand)]
    operation: Operation,

    /// Address or hostname of the server hosting this API, including optional port
    #[structopt(short = "a", long, default_value = "http://localhost")]
    server_address: String,

    /// Path to the client private key if using client-side TLS authentication
    #[cfg(not(any(target_os = "macos", target_os = "windows", target_os = "ios")))]
    #[structopt(long, requires_all(&["client-certificate", "server-certificate"]))]
    client_key: Option<String>,

    /// Path to the client's public certificate associated with the private key
    #[cfg(not(any(target_os = "macos", target_os = "windows", target_os = "ios")))]
    #[structopt(long, requires_all(&["client-key", "server-certificate"]))]
    client_certificate: Option<String>,

    /// Path to CA certificate used to authenticate the server
    #[cfg(not(any(target_os = "macos", target_os = "windows", target_os = "ios")))]
    #[structopt(long)]
    server_certificate: Option<String>,

    /// If set, write output to file instead of stdout
    #[structopt(short, long)]
    output_file: Option<String>,

    #[structopt(flatten)]
    verbosity: clap_verbosity_flag::Verbosity,

    /// Don't ask for any confirmation prompts
    #[allow(dead_code)]
    #[structopt(short, long)]
    force: bool,
}

#[derive(StructOpt, Debug)]
enum Operation {
    GetCrumb {
    },
    GetJsonWebToken {
        /// Token expiry time in minutes, default: 30 minutes
        expiry_time_in_mins: Option<i32>,
        /// Maximum token expiry time in minutes, default: 480 minutes
        max_expiry_time_in_mins: Option<i32>,
    },
    GetOrganisations {
    },
    Search {
        /// Query string
        q: String,
    },
    SearchClasses {
        /// Query string containing an array of class names
        q: String,
    },
    GetAuthenticatedUser {
        /// Name of the organization
        organization: String,
    },
    GetClasses {
        /// Name of the class
        class: String,
    },
    GetJsonWebKey {
        /// Key ID received as part of JWT header field kid
        key: i32,
    },
    GetOrganisation {
        /// Name of the organization
        organization: String,
    },
    GetPipelines {
        /// Name of the organization
        organization: String,
    },
    GetUserFavorites {
        /// Name of the user
        user: String,
    },
    GetUsers {
        /// Name of the organization
        organization: String,
    },
    GetPipeline {
        /// Name of the organization
        organization: String,
        /// Name of the pipeline
        pipeline: String,
    },
    GetPipelineActivities {
        /// Name of the organization
        organization: String,
        /// Name of the pipeline
        pipeline: String,
    },
    GetPipelineBranches {
        /// Name of the organization
        organization: String,
        /// Name of the pipeline
        pipeline: String,
    },
    GetPipelineFolder {
        /// Name of the organization
        organization: String,
        /// Name of the folder
        folder: String,
    },
    GetPipelineQueue {
        /// Name of the organization
        organization: String,
        /// Name of the pipeline
        pipeline: String,
    },
    GetPipelineRuns {
        /// Name of the organization
        organization: String,
        /// Name of the pipeline
        pipeline: String,
    },
    GetScm {
        /// Name of the organization
        organization: String,
        /// Name of SCM
        scm: String,
    },
    GetScmOrganisations {
        /// Name of the organization
        organization: String,
        /// Name of SCM
        scm: String,
        /// Credential ID
        credential_id: Option<String>,
    },
    GetUser {
        /// Name of the organization
        organization: String,
        /// Name of the user
        user: String,
    },
    PostPipelineRuns {
        /// Name of the organization
        organization: String,
        /// Name of the pipeline
        pipeline: String,
    },
    PutPipelineFavorite {
        /// Name of the organization
        organization: String,
        /// Name of the pipeline
        pipeline: String,
        /// Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite
        #[structopt(short, long)]
        body: bool,
    },
    DeletePipelineQueueItem {
        /// Name of the organization
        organization: String,
        /// Name of the pipeline
        pipeline: String,
        /// Name of the queue item
        queue: String,
    },
    GetPipelineBranch {
        /// Name of the organization
        organization: String,
        /// Name of the pipeline
        pipeline: String,
        /// Name of the branch
        branch: String,
    },
    GetPipelineFolderPipeline {
        /// Name of the organization
        organization: String,
        /// Name of the pipeline
        pipeline: String,
        /// Name of the folder
        folder: String,
    },
    GetPipelineRun {
        /// Name of the organization
        organization: String,
        /// Name of the pipeline
        pipeline: String,
        /// Name of the run
        run: String,
    },
    GetPipelineRunLog {
        /// Name of the organization
        organization: String,
        /// Name of the pipeline
        pipeline: String,
        /// Name of the run
        run: String,
        /// Start position of the log
        start: Option<i32>,
        /// Set to true in order to download the file, otherwise it's passed as a response body
        #[structopt(short, long)]
        download: Option<bool>,
    },
    GetPipelineRunNodes {
        /// Name of the organization
        organization: String,
        /// Name of the pipeline
        pipeline: String,
        /// Name of the run
        run: String,
    },
    GetScmOrganisationRepositories {
        /// Name of the organization
        organization: String,
        /// Name of SCM
        scm: String,
        /// Name of the SCM organization
        scm_organisation: String,
        /// Credential ID
        credential_id: Option<String>,
        /// Number of items in a page
        page_size: Option<i32>,
        /// Page number
        page_number: Option<i32>,
    },
    PostPipelineRun {
        /// Name of the organization
        organization: String,
        /// Name of the pipeline
        pipeline: String,
        /// Name of the run
        run: String,
    },
    PutPipelineRun {
        /// Name of the organization
        organization: String,
        /// Name of the pipeline
        pipeline: String,
        /// Name of the run
        run: String,
        /// Set to true to make blocking stop, default: false
        blocking: Option<String>,
        /// Timeout in seconds, default: 10 seconds
        time_out_in_secs: Option<i32>,
    },
    GetPipelineBranchRun {
        /// Name of the organization
        organization: String,
        /// Name of the pipeline
        pipeline: String,
        /// Name of the branch
        branch: String,
        /// Name of the run
        run: String,
    },
    GetPipelineRunNode {
        /// Name of the organization
        organization: String,
        /// Name of the pipeline
        pipeline: String,
        /// Name of the run
        run: String,
        /// Name of the node
        node: String,
    },
    GetPipelineRunNodeSteps {
        /// Name of the organization
        organization: String,
        /// Name of the pipeline
        pipeline: String,
        /// Name of the run
        run: String,
        /// Name of the node
        node: String,
    },
    GetScmOrganisationRepository {
        /// Name of the organization
        organization: String,
        /// Name of SCM
        scm: String,
        /// Name of the SCM organization
        scm_organisation: String,
        /// Name of the SCM repository
        repository: String,
        /// Credential ID
        credential_id: Option<String>,
    },
    GetPipelineRunNodeStep {
        /// Name of the organization
        organization: String,
        /// Name of the pipeline
        pipeline: String,
        /// Name of the run
        run: String,
        /// Name of the node
        node: String,
        /// Name of the step
        step: String,
    },
    GetPipelineRunNodeStepLog {
        /// Name of the organization
        organization: String,
        /// Name of the pipeline
        pipeline: String,
        /// Name of the run
        run: String,
        /// Name of the node
        node: String,
        /// Name of the step
        step: String,
    },
    GetComputer {
        /// Recursion depth in response model
        depth: i32,
    },
    GetJenkins {
    },
    GetQueue {
    },
    HeadJenkins {
    },
    PostCreateItem {
        /// Name of the new job
        name: String,
        /// Existing job to copy from
        from: Option<String>,
        /// Set to 'copy' for copying an existing job
        mode: Option<String>,
        /// CSRF protection token
        jenkins_crumb: Option<String>,
        /// Content type header application/xml
        content_type: Option<String>,
        /// Job configuration in config.xml format
        body: Option<String>,
    },
    PostCreateView {
        /// Name of the new view
        name: String,
        /// CSRF protection token
        jenkins_crumb: Option<String>,
        /// Content type header application/xml
        content_type: Option<String>,
        /// View configuration in config.xml format
        body: Option<String>,
    },
    GetJob {
        /// Name of the job
        name: String,
    },
    GetJobConfig {
        /// Name of the job
        name: String,
    },
    GetJobLastBuild {
        /// Name of the job
        name: String,
    },
    GetQueueItem {
        /// Queue number
        number: String,
    },
    GetView {
        /// Name of the view
        name: String,
    },
    GetViewConfig {
        /// Name of the view
        name: String,
    },
    PostJobBuild {
        /// Name of the job
        name: String,
        json: String,
        token: Option<String>,
        /// CSRF protection token
        jenkins_crumb: Option<String>,
    },
    PostJobConfig {
        /// Name of the job
        name: String,
        /// Job configuration in config.xml format
        body: String,
        /// CSRF protection token
        jenkins_crumb: Option<String>,
    },
    PostJobDelete {
        /// Name of the job
        name: String,
        /// CSRF protection token
        jenkins_crumb: Option<String>,
    },
    PostJobDisable {
        /// Name of the job
        name: String,
        /// CSRF protection token
        jenkins_crumb: Option<String>,
    },
    PostJobEnable {
        /// Name of the job
        name: String,
        /// CSRF protection token
        jenkins_crumb: Option<String>,
    },
    PostJobLastBuildStop {
        /// Name of the job
        name: String,
        /// CSRF protection token
        jenkins_crumb: Option<String>,
    },
    PostViewConfig {
        /// Name of the view
        name: String,
        /// View configuration in config.xml format
        body: String,
        /// CSRF protection token
        jenkins_crumb: Option<String>,
    },
    GetJobProgressiveText {
        /// Name of the job
        name: String,
        /// Build number
        number: String,
        /// Starting point of progressive text output
        start: String,
    },
}

#[cfg(not(any(target_os = "macos", target_os = "windows", target_os = "ios")))]
fn create_client(args: &Cli, context: ClientContext) -> Result<Box<dyn ApiNoContext<ClientContext>>> {
    if args.client_certificate.is_some() {
        debug!("Using mutual TLS");
        let client = Client::try_new_https_mutual(
            &args.server_address,
            args.server_certificate.clone().unwrap(),
            args.client_key.clone().unwrap(),
            args.client_certificate.clone().unwrap(),
        )
        .context("Failed to create HTTPS client")?;
        Ok(Box::new(client.with_context(context)))
    } else if args.server_certificate.is_some() {
        debug!("Using TLS with pinned server certificate");
        let client =
            Client::try_new_https_pinned(&args.server_address, args.server_certificate.clone().unwrap())
                .context("Failed to create HTTPS client")?;
        Ok(Box::new(client.with_context(context)))
    } else {
        debug!("Using client without certificates");
        let client =
            Client::try_new(&args.server_address).context("Failed to create HTTP(S) client")?;
        Ok(Box::new(client.with_context(context)))
    }
}

#[cfg(any(target_os = "macos", target_os = "windows", target_os = "ios"))]
fn create_client(args: &Cli, context: ClientContext) -> Result<Box<dyn ApiNoContext<ClientContext>>> {
    let client =
        Client::try_new(&args.server_address).context("Failed to create HTTP(S) client")?;
    Ok(Box::new(client.with_context(context)))
}

#[tokio::main]
async fn main() -> Result<()> {
    let args = Cli::from_args();
    if let Some(log_level) = args.verbosity.log_level() {
        SimpleLogger::new().with_level(log_level.to_level_filter()).init()?;
    }

    debug!("Arguments: {:?}", &args);

    let auth_data: Option<AuthData> = None;

    #[allow(trivial_casts)]
    let context = swagger::make_context!(
        ContextBuilder,
        EmptyContext,
        auth_data,
        XSpanIdString::default()
    );

    let client = create_client(&args, context)?;

    let result = match args.operation {
        Operation::GetCrumb {
        } => {
            info!("Performing a GetCrumb request");

            let result = client.get_crumb(
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetCrumbResponse::SuccessfullyRetrievedCSRFProtectionToken
                (body)
                => "SuccessfullyRetrievedCSRFProtectionToken\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetCrumbResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetCrumbResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetJsonWebToken {
            expiry_time_in_mins,
            max_expiry_time_in_mins,
        } => {
            info!("Performing a GetJsonWebToken request");

            let result = client.get_json_web_token(
                expiry_time_in_mins,
                max_expiry_time_in_mins,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetJsonWebTokenResponse::SuccessfullyRetrievedJWTToken
                (body)
                => "SuccessfullyRetrievedJWTToken\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetJsonWebTokenResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetJsonWebTokenResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetOrganisations {
        } => {
            info!("Performing a GetOrganisations request");

            let result = client.get_organisations(
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetOrganisationsResponse::SuccessfullyRetrievedPipelinesDetails
                (body)
                => "SuccessfullyRetrievedPipelinesDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetOrganisationsResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetOrganisationsResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::Search {
            q,
        } => {
            info!("Performing a Search request");

            let result = client.search(
                q,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                SearchResponse::SuccessfullyRetrievedSearchResult
                (body)
                => "SuccessfullyRetrievedSearchResult\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                SearchResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                SearchResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::SearchClasses {
            q,
        } => {
            info!("Performing a SearchClasses request");

            let result = client.search_classes(
                q,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                SearchClassesResponse::SuccessfullyRetrievedSearchResult
                (body)
                => "SuccessfullyRetrievedSearchResult\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                SearchClassesResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                SearchClassesResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetAuthenticatedUser {
            organization,
        } => {
            info!("Performing a GetAuthenticatedUser request on {:?}", (
                &organization
            ));

            let result = client.get_authenticated_user(
                organization,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetAuthenticatedUserResponse::SuccessfullyRetrievedAuthenticatedUserDetails
                (body)
                => "SuccessfullyRetrievedAuthenticatedUserDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetAuthenticatedUserResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetAuthenticatedUserResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetClasses {
            class,
        } => {
            info!("Performing a GetClasses request on {:?}", (
                &class
            ));

            let result = client.get_classes(
                class,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetClassesResponse::SuccessfullyRetrievedClassNames
                (body)
                => "SuccessfullyRetrievedClassNames\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetClassesResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetClassesResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetJsonWebKey {
            key,
        } => {
            info!("Performing a GetJsonWebKey request on {:?}", (
                &key
            ));

            let result = client.get_json_web_key(
                key,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetJsonWebKeyResponse::SuccessfullyRetrievedJWTToken
                (body)
                => "SuccessfullyRetrievedJWTToken\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetJsonWebKeyResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetJsonWebKeyResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetOrganisation {
            organization,
        } => {
            info!("Performing a GetOrganisation request on {:?}", (
                &organization
            ));

            let result = client.get_organisation(
                organization,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetOrganisationResponse::SuccessfullyRetrievedPipelineDetails
                (body)
                => "SuccessfullyRetrievedPipelineDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetOrganisationResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetOrganisationResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
                GetOrganisationResponse::PipelineCannotBeFoundOnJenkinsInstance
                => "PipelineCannotBeFoundOnJenkinsInstance\n".to_string()
                    ,
            }
        }
        Operation::GetPipelines {
            organization,
        } => {
            info!("Performing a GetPipelines request on {:?}", (
                &organization
            ));

            let result = client.get_pipelines(
                organization,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetPipelinesResponse::SuccessfullyRetrievedPipelinesDetails
                (body)
                => "SuccessfullyRetrievedPipelinesDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetPipelinesResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetPipelinesResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetUserFavorites {
            user,
        } => {
            info!("Performing a GetUserFavorites request on {:?}", (
                &user
            ));

            let result = client.get_user_favorites(
                user,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetUserFavoritesResponse::SuccessfullyRetrievedUsersFavoritesDetails
                (body)
                => "SuccessfullyRetrievedUsersFavoritesDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetUserFavoritesResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetUserFavoritesResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetUsers {
            organization,
        } => {
            info!("Performing a GetUsers request on {:?}", (
                &organization
            ));

            let result = client.get_users(
                organization,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetUsersResponse::SuccessfullyRetrievedUsersDetails
                (body)
                => "SuccessfullyRetrievedUsersDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetUsersResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetUsersResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetPipeline {
            organization,
            pipeline,
        } => {
            info!("Performing a GetPipeline request on {:?}", (
                &organization,
                &pipeline
            ));

            let result = client.get_pipeline(
                organization,
                pipeline,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetPipelineResponse::SuccessfullyRetrievedPipelineDetails
                (body)
                => "SuccessfullyRetrievedPipelineDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetPipelineResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetPipelineResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
                GetPipelineResponse::PipelineCannotBeFoundOnJenkinsInstance
                => "PipelineCannotBeFoundOnJenkinsInstance\n".to_string()
                    ,
            }
        }
        Operation::GetPipelineActivities {
            organization,
            pipeline,
        } => {
            info!("Performing a GetPipelineActivities request on {:?}", (
                &organization,
                &pipeline
            ));

            let result = client.get_pipeline_activities(
                organization,
                pipeline,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetPipelineActivitiesResponse::SuccessfullyRetrievedAllActivitiesDetails
                (body)
                => "SuccessfullyRetrievedAllActivitiesDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetPipelineActivitiesResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetPipelineActivitiesResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetPipelineBranches {
            organization,
            pipeline,
        } => {
            info!("Performing a GetPipelineBranches request on {:?}", (
                &organization,
                &pipeline
            ));

            let result = client.get_pipeline_branches(
                organization,
                pipeline,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetPipelineBranchesResponse::SuccessfullyRetrievedAllBranchesDetails
                (body)
                => "SuccessfullyRetrievedAllBranchesDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetPipelineBranchesResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetPipelineBranchesResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetPipelineFolder {
            organization,
            folder,
        } => {
            info!("Performing a GetPipelineFolder request on {:?}", (
                &organization,
                &folder
            ));

            let result = client.get_pipeline_folder(
                organization,
                folder,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetPipelineFolderResponse::SuccessfullyRetrievedFolderDetails
                (body)
                => "SuccessfullyRetrievedFolderDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetPipelineFolderResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetPipelineFolderResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetPipelineQueue {
            organization,
            pipeline,
        } => {
            info!("Performing a GetPipelineQueue request on {:?}", (
                &organization,
                &pipeline
            ));

            let result = client.get_pipeline_queue(
                organization,
                pipeline,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetPipelineQueueResponse::SuccessfullyRetrievedQueueDetails
                (body)
                => "SuccessfullyRetrievedQueueDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetPipelineQueueResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetPipelineQueueResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetPipelineRuns {
            organization,
            pipeline,
        } => {
            info!("Performing a GetPipelineRuns request on {:?}", (
                &organization,
                &pipeline
            ));

            let result = client.get_pipeline_runs(
                organization,
                pipeline,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetPipelineRunsResponse::SuccessfullyRetrievedRunsDetails
                (body)
                => "SuccessfullyRetrievedRunsDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetPipelineRunsResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetPipelineRunsResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetScm {
            organization,
            scm,
        } => {
            info!("Performing a GetScm request on {:?}", (
                &organization,
                &scm
            ));

            let result = client.get_scm(
                organization,
                scm,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetScmResponse::SuccessfullyRetrievedSCMDetails
                (body)
                => "SuccessfullyRetrievedSCMDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetScmResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetScmResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetScmOrganisations {
            organization,
            scm,
            credential_id,
        } => {
            info!("Performing a GetScmOrganisations request on {:?}", (
                &organization,
                &scm
            ));

            let result = client.get_scm_organisations(
                organization,
                scm,
                credential_id,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetScmOrganisationsResponse::SuccessfullyRetrievedSCMOrganizationsDetails
                (body)
                => "SuccessfullyRetrievedSCMOrganizationsDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetScmOrganisationsResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetScmOrganisationsResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetUser {
            organization,
            user,
        } => {
            info!("Performing a GetUser request on {:?}", (
                &organization,
                &user
            ));

            let result = client.get_user(
                organization,
                user,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetUserResponse::SuccessfullyRetrievedUsersDetails
                (body)
                => "SuccessfullyRetrievedUsersDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetUserResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetUserResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::PostPipelineRuns {
            organization,
            pipeline,
        } => {
            info!("Performing a PostPipelineRuns request on {:?}", (
                &organization,
                &pipeline
            ));

            let result = client.post_pipeline_runs(
                organization,
                pipeline,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                PostPipelineRunsResponse::SuccessfullyStartedABuild
                (body)
                => "SuccessfullyStartedABuild\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                PostPipelineRunsResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                PostPipelineRunsResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::PutPipelineFavorite {
            organization,
            pipeline,
            body,
        } => {
            info!("Performing a PutPipelineFavorite request on {:?}", (
                &organization,
                &pipeline
            ));

            let result = client.put_pipeline_favorite(
                organization,
                pipeline,
                body,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                PutPipelineFavoriteResponse::SuccessfullyFavorited
                (body)
                => "SuccessfullyFavorited\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                PutPipelineFavoriteResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                PutPipelineFavoriteResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::DeletePipelineQueueItem {
            organization,
            pipeline,
            queue,
        } => {
            prompt(args.force, "This will delete the given entry, are you sure?")?;
            info!("Performing a DeletePipelineQueueItem request on {:?}", (
                &organization,
                &pipeline,
                &queue
            ));

            let result = client.delete_pipeline_queue_item(
                organization,
                pipeline,
                queue,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                DeletePipelineQueueItemResponse::SuccessfullyDeletedQueueItem
                => "SuccessfullyDeletedQueueItem\n".to_string()
                    ,
                DeletePipelineQueueItemResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                DeletePipelineQueueItemResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetPipelineBranch {
            organization,
            pipeline,
            branch,
        } => {
            info!("Performing a GetPipelineBranch request on {:?}", (
                &organization,
                &pipeline,
                &branch
            ));

            let result = client.get_pipeline_branch(
                organization,
                pipeline,
                branch,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetPipelineBranchResponse::SuccessfullyRetrievedBranchDetails
                (body)
                => "SuccessfullyRetrievedBranchDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetPipelineBranchResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetPipelineBranchResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetPipelineFolderPipeline {
            organization,
            pipeline,
            folder,
        } => {
            info!("Performing a GetPipelineFolderPipeline request on {:?}", (
                &organization,
                &pipeline,
                &folder
            ));

            let result = client.get_pipeline_folder_pipeline(
                organization,
                pipeline,
                folder,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetPipelineFolderPipelineResponse::SuccessfullyRetrievedPipelineDetails
                (body)
                => "SuccessfullyRetrievedPipelineDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetPipelineFolderPipelineResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetPipelineFolderPipelineResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetPipelineRun {
            organization,
            pipeline,
            run,
        } => {
            info!("Performing a GetPipelineRun request on {:?}", (
                &organization,
                &pipeline,
                &run
            ));

            let result = client.get_pipeline_run(
                organization,
                pipeline,
                run,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetPipelineRunResponse::SuccessfullyRetrievedRunDetails
                (body)
                => "SuccessfullyRetrievedRunDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetPipelineRunResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetPipelineRunResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetPipelineRunLog {
            organization,
            pipeline,
            run,
            start,
            download,
        } => {
            info!("Performing a GetPipelineRunLog request on {:?}", (
                &organization,
                &pipeline,
                &run
            ));

            let result = client.get_pipeline_run_log(
                organization,
                pipeline,
                run,
                start,
                download,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetPipelineRunLogResponse::SuccessfullyRetrievedPipelineRunLog
                (body)
                => "SuccessfullyRetrievedPipelineRunLog\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetPipelineRunLogResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetPipelineRunLogResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetPipelineRunNodes {
            organization,
            pipeline,
            run,
        } => {
            info!("Performing a GetPipelineRunNodes request on {:?}", (
                &organization,
                &pipeline,
                &run
            ));

            let result = client.get_pipeline_run_nodes(
                organization,
                pipeline,
                run,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetPipelineRunNodesResponse::SuccessfullyRetrievedRunNodesDetails
                (body)
                => "SuccessfullyRetrievedRunNodesDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetPipelineRunNodesResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetPipelineRunNodesResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetScmOrganisationRepositories {
            organization,
            scm,
            scm_organisation,
            credential_id,
            page_size,
            page_number,
        } => {
            info!("Performing a GetScmOrganisationRepositories request on {:?}", (
                &organization,
                &scm,
                &scm_organisation
            ));

            let result = client.get_scm_organisation_repositories(
                organization,
                scm,
                scm_organisation,
                credential_id,
                page_size,
                page_number,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetScmOrganisationRepositoriesResponse::SuccessfullyRetrievedSCMOrganizationRepositoriesDetails
                (body)
                => "SuccessfullyRetrievedSCMOrganizationRepositoriesDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetScmOrganisationRepositoriesResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetScmOrganisationRepositoriesResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::PostPipelineRun {
            organization,
            pipeline,
            run,
        } => {
            info!("Performing a PostPipelineRun request on {:?}", (
                &organization,
                &pipeline,
                &run
            ));

            let result = client.post_pipeline_run(
                organization,
                pipeline,
                run,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                PostPipelineRunResponse::SuccessfullyReplayedAPipelineRun
                (body)
                => "SuccessfullyReplayedAPipelineRun\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                PostPipelineRunResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                PostPipelineRunResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::PutPipelineRun {
            organization,
            pipeline,
            run,
            blocking,
            time_out_in_secs,
        } => {
            info!("Performing a PutPipelineRun request on {:?}", (
                &organization,
                &pipeline,
                &run
            ));

            let result = client.put_pipeline_run(
                organization,
                pipeline,
                run,
                blocking,
                time_out_in_secs,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                PutPipelineRunResponse::SuccessfullyStoppedABuild
                (body)
                => "SuccessfullyStoppedABuild\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                PutPipelineRunResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                PutPipelineRunResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetPipelineBranchRun {
            organization,
            pipeline,
            branch,
            run,
        } => {
            info!("Performing a GetPipelineBranchRun request on {:?}", (
                &organization,
                &pipeline,
                &branch,
                &run
            ));

            let result = client.get_pipeline_branch_run(
                organization,
                pipeline,
                branch,
                run,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetPipelineBranchRunResponse::SuccessfullyRetrievedRunDetails
                (body)
                => "SuccessfullyRetrievedRunDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetPipelineBranchRunResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetPipelineBranchRunResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetPipelineRunNode {
            organization,
            pipeline,
            run,
            node,
        } => {
            info!("Performing a GetPipelineRunNode request on {:?}", (
                &organization,
                &pipeline,
                &run,
                &node
            ));

            let result = client.get_pipeline_run_node(
                organization,
                pipeline,
                run,
                node,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetPipelineRunNodeResponse::SuccessfullyRetrievedRunNodeDetails
                (body)
                => "SuccessfullyRetrievedRunNodeDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetPipelineRunNodeResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetPipelineRunNodeResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetPipelineRunNodeSteps {
            organization,
            pipeline,
            run,
            node,
        } => {
            info!("Performing a GetPipelineRunNodeSteps request on {:?}", (
                &organization,
                &pipeline,
                &run,
                &node
            ));

            let result = client.get_pipeline_run_node_steps(
                organization,
                pipeline,
                run,
                node,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetPipelineRunNodeStepsResponse::SuccessfullyRetrievedRunNodeStepsDetails
                (body)
                => "SuccessfullyRetrievedRunNodeStepsDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetPipelineRunNodeStepsResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetPipelineRunNodeStepsResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetScmOrganisationRepository {
            organization,
            scm,
            scm_organisation,
            repository,
            credential_id,
        } => {
            info!("Performing a GetScmOrganisationRepository request on {:?}", (
                &organization,
                &scm,
                &scm_organisation,
                &repository
            ));

            let result = client.get_scm_organisation_repository(
                organization,
                scm,
                scm_organisation,
                repository,
                credential_id,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetScmOrganisationRepositoryResponse::SuccessfullyRetrievedSCMOrganizationsDetails
                (body)
                => "SuccessfullyRetrievedSCMOrganizationsDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetScmOrganisationRepositoryResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetScmOrganisationRepositoryResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetPipelineRunNodeStep {
            organization,
            pipeline,
            run,
            node,
            step,
        } => {
            info!("Performing a GetPipelineRunNodeStep request on {:?}", (
                &organization,
                &pipeline,
                &run,
                &node,
                &step
            ));

            let result = client.get_pipeline_run_node_step(
                organization,
                pipeline,
                run,
                node,
                step,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetPipelineRunNodeStepResponse::SuccessfullyRetrievedRunNodeStepDetails
                (body)
                => "SuccessfullyRetrievedRunNodeStepDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetPipelineRunNodeStepResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetPipelineRunNodeStepResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetPipelineRunNodeStepLog {
            organization,
            pipeline,
            run,
            node,
            step,
        } => {
            info!("Performing a GetPipelineRunNodeStepLog request on {:?}", (
                &organization,
                &pipeline,
                &run,
                &node,
                &step
            ));

            let result = client.get_pipeline_run_node_step_log(
                organization,
                pipeline,
                run,
                node,
                step,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetPipelineRunNodeStepLogResponse::SuccessfullyRetrievedPipelineRunNodeStepLog
                (body)
                => "SuccessfullyRetrievedPipelineRunNodeStepLog\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetPipelineRunNodeStepLogResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetPipelineRunNodeStepLogResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetComputer {
            depth,
        } => {
            info!("Performing a GetComputer request");

            let result = client.get_computer(
                depth,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetComputerResponse::SuccessfullyRetrievedComputerDetails
                (body)
                => "SuccessfullyRetrievedComputerDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetComputerResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetComputerResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetJenkins {
        } => {
            info!("Performing a GetJenkins request");

            let result = client.get_jenkins(
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetJenkinsResponse::SuccessfullyRetrievedJenkinsDetails
                (body)
                => "SuccessfullyRetrievedJenkinsDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetJenkinsResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetJenkinsResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetQueue {
        } => {
            info!("Performing a GetQueue request");

            let result = client.get_queue(
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetQueueResponse::SuccessfullyRetrievedQueueDetails
                (body)
                => "SuccessfullyRetrievedQueueDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetQueueResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetQueueResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::HeadJenkins {
        } => {
            info!("Performing a HeadJenkins request");

            let result = client.head_jenkins(
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                HeadJenkinsResponse::SuccessfullyRetrievedJenkinsHeaders
                {
                    x_jenkins,
                }
                => "SuccessfullyRetrievedJenkinsHeaders\n".to_string()
                    +
                    &format!(
                        "x_jenkins: {}\n",
                        serde_json::to_string_pretty(&x_jenkins)?
                    ),
                HeadJenkinsResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                HeadJenkinsResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::PostCreateItem {
            name,
            from,
            mode,
            jenkins_crumb,
            content_type,
            body,
        } => {
            info!("Performing a PostCreateItem request");

            let result = client.post_create_item(
                name,
                from,
                mode,
                jenkins_crumb,
                content_type,
                body,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                PostCreateItemResponse::SuccessfullyCreatedANewJob
                => "SuccessfullyCreatedANewJob\n".to_string()
                    ,
                PostCreateItemResponse::AnErrorHasOccurred
                (body)
                => "AnErrorHasOccurred\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                PostCreateItemResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                PostCreateItemResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::PostCreateView {
            name,
            jenkins_crumb,
            content_type,
            body,
        } => {
            info!("Performing a PostCreateView request");

            let result = client.post_create_view(
                name,
                jenkins_crumb,
                content_type,
                body,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                PostCreateViewResponse::SuccessfullyCreatedTheView
                => "SuccessfullyCreatedTheView\n".to_string()
                    ,
                PostCreateViewResponse::AnErrorHasOccurred
                (body)
                => "AnErrorHasOccurred\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                PostCreateViewResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                PostCreateViewResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetJob {
            name,
        } => {
            info!("Performing a GetJob request on {:?}", (
                &name
            ));

            let result = client.get_job(
                name,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetJobResponse::SuccessfullyRetrievedJobDetails
                (body)
                => "SuccessfullyRetrievedJobDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetJobResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetJobResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
                GetJobResponse::JobCannotBeFoundOnJenkinsInstance
                => "JobCannotBeFoundOnJenkinsInstance\n".to_string()
                    ,
            }
        }
        Operation::GetJobConfig {
            name,
        } => {
            info!("Performing a GetJobConfig request on {:?}", (
                &name
            ));

            let result = client.get_job_config(
                name,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetJobConfigResponse::SuccessfullyRetrievedJobConfigurationInConfig
                (body)
                => "SuccessfullyRetrievedJobConfigurationInConfig\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetJobConfigResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetJobConfigResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
                GetJobConfigResponse::JobCannotBeFoundOnJenkinsInstance
                => "JobCannotBeFoundOnJenkinsInstance\n".to_string()
                    ,
            }
        }
        Operation::GetJobLastBuild {
            name,
        } => {
            info!("Performing a GetJobLastBuild request on {:?}", (
                &name
            ));

            let result = client.get_job_last_build(
                name,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetJobLastBuildResponse::SuccessfullyRetrievedJob
                (body)
                => "SuccessfullyRetrievedJob\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetJobLastBuildResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetJobLastBuildResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
                GetJobLastBuildResponse::JobCannotBeFoundOnJenkinsInstance
                => "JobCannotBeFoundOnJenkinsInstance\n".to_string()
                    ,
            }
        }
        Operation::GetQueueItem {
            number,
        } => {
            info!("Performing a GetQueueItem request on {:?}", (
                &number
            ));

            let result = client.get_queue_item(
                number,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetQueueItemResponse::SuccessfullyRetrievedQueuedItemDetails
                (body)
                => "SuccessfullyRetrievedQueuedItemDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetQueueItemResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetQueueItemResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
            }
        }
        Operation::GetView {
            name,
        } => {
            info!("Performing a GetView request on {:?}", (
                &name
            ));

            let result = client.get_view(
                name,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetViewResponse::SuccessfullyRetrievedViewDetails
                (body)
                => "SuccessfullyRetrievedViewDetails\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetViewResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetViewResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
                GetViewResponse::ViewCannotBeFoundOnJenkinsInstance
                => "ViewCannotBeFoundOnJenkinsInstance\n".to_string()
                    ,
            }
        }
        Operation::GetViewConfig {
            name,
        } => {
            info!("Performing a GetViewConfig request on {:?}", (
                &name
            ));

            let result = client.get_view_config(
                name,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetViewConfigResponse::SuccessfullyRetrievedViewConfigurationInConfig
                (body)
                => "SuccessfullyRetrievedViewConfigurationInConfig\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                GetViewConfigResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetViewConfigResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
                GetViewConfigResponse::ViewCannotBeFoundOnJenkinsInstance
                => "ViewCannotBeFoundOnJenkinsInstance\n".to_string()
                    ,
            }
        }
        Operation::PostJobBuild {
            name,
            json,
            token,
            jenkins_crumb,
        } => {
            info!("Performing a PostJobBuild request on {:?}", (
                &name
            ));

            let result = client.post_job_build(
                name,
                json,
                token,
                jenkins_crumb,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                PostJobBuildResponse::SuccessfullyBuiltTheJob
                => "SuccessfullyBuiltTheJob\n".to_string()
                    ,
                PostJobBuildResponse::SuccessfullyBuiltTheJob_2
                => "SuccessfullyBuiltTheJob_2\n".to_string()
                    ,
                PostJobBuildResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                PostJobBuildResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
                PostJobBuildResponse::JobCannotBeFoundOnJenkinsInstance
                => "JobCannotBeFoundOnJenkinsInstance\n".to_string()
                    ,
            }
        }
        Operation::PostJobConfig {
            name,
            body,
            jenkins_crumb,
        } => {
            info!("Performing a PostJobConfig request on {:?}", (
                &name
            ));

            let result = client.post_job_config(
                name,
                body,
                jenkins_crumb,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                PostJobConfigResponse::SuccessfullyRetrievedJobConfigurationInConfig
                => "SuccessfullyRetrievedJobConfigurationInConfig\n".to_string()
                    ,
                PostJobConfigResponse::AnErrorHasOccurred
                (body)
                => "AnErrorHasOccurred\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                PostJobConfigResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                PostJobConfigResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
                PostJobConfigResponse::JobCannotBeFoundOnJenkinsInstance
                => "JobCannotBeFoundOnJenkinsInstance\n".to_string()
                    ,
            }
        }
        Operation::PostJobDelete {
            name,
            jenkins_crumb,
        } => {
            info!("Performing a PostJobDelete request on {:?}", (
                &name
            ));

            let result = client.post_job_delete(
                name,
                jenkins_crumb,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                PostJobDeleteResponse::SuccessfullyDeletedTheJob
                => "SuccessfullyDeletedTheJob\n".to_string()
                    ,
                PostJobDeleteResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                PostJobDeleteResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
                PostJobDeleteResponse::JobCannotBeFoundOnJenkinsInstance
                => "JobCannotBeFoundOnJenkinsInstance\n".to_string()
                    ,
            }
        }
        Operation::PostJobDisable {
            name,
            jenkins_crumb,
        } => {
            info!("Performing a PostJobDisable request on {:?}", (
                &name
            ));

            let result = client.post_job_disable(
                name,
                jenkins_crumb,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                PostJobDisableResponse::SuccessfullyDisabledTheJob
                => "SuccessfullyDisabledTheJob\n".to_string()
                    ,
                PostJobDisableResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                PostJobDisableResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
                PostJobDisableResponse::JobCannotBeFoundOnJenkinsInstance
                => "JobCannotBeFoundOnJenkinsInstance\n".to_string()
                    ,
            }
        }
        Operation::PostJobEnable {
            name,
            jenkins_crumb,
        } => {
            info!("Performing a PostJobEnable request on {:?}", (
                &name
            ));

            let result = client.post_job_enable(
                name,
                jenkins_crumb,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                PostJobEnableResponse::SuccessfullyEnabledTheJob
                => "SuccessfullyEnabledTheJob\n".to_string()
                    ,
                PostJobEnableResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                PostJobEnableResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
                PostJobEnableResponse::JobCannotBeFoundOnJenkinsInstance
                => "JobCannotBeFoundOnJenkinsInstance\n".to_string()
                    ,
            }
        }
        Operation::PostJobLastBuildStop {
            name,
            jenkins_crumb,
        } => {
            info!("Performing a PostJobLastBuildStop request on {:?}", (
                &name
            ));

            let result = client.post_job_last_build_stop(
                name,
                jenkins_crumb,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                PostJobLastBuildStopResponse::SuccessfullyStoppedTheJob
                => "SuccessfullyStoppedTheJob\n".to_string()
                    ,
                PostJobLastBuildStopResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                PostJobLastBuildStopResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
                PostJobLastBuildStopResponse::JobCannotBeFoundOnJenkinsInstance
                => "JobCannotBeFoundOnJenkinsInstance\n".to_string()
                    ,
            }
        }
        Operation::PostViewConfig {
            name,
            body,
            jenkins_crumb,
        } => {
            info!("Performing a PostViewConfig request on {:?}", (
                &name
            ));

            let result = client.post_view_config(
                name,
                body,
                jenkins_crumb,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                PostViewConfigResponse::SuccessfullyUpdatedViewConfiguration
                => "SuccessfullyUpdatedViewConfiguration\n".to_string()
                    ,
                PostViewConfigResponse::AnErrorHasOccurred
                (body)
                => "AnErrorHasOccurred\n".to_string()
                   +
                    &serde_json::to_string_pretty(&body)?,
                PostViewConfigResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                PostViewConfigResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
                PostViewConfigResponse::ViewCannotBeFoundOnJenkinsInstance
                => "ViewCannotBeFoundOnJenkinsInstance\n".to_string()
                    ,
            }
        }
        Operation::GetJobProgressiveText {
            name,
            number,
            start,
        } => {
            info!("Performing a GetJobProgressiveText request on {:?}", (
                &name,
                &number
            ));

            let result = client.get_job_progressive_text(
                name,
                number,
                start,
            ).await?;
            debug!("Result: {:?}", result);

            match result {
                GetJobProgressiveTextResponse::SuccessfullyRetrievedJob
                => "SuccessfullyRetrievedJob\n".to_string()
                    ,
                GetJobProgressiveTextResponse::AuthenticationFailed
                => "AuthenticationFailed\n".to_string()
                    ,
                GetJobProgressiveTextResponse::JenkinsRequiresAuthentication
                => "JenkinsRequiresAuthentication\n".to_string()
                    ,
                GetJobProgressiveTextResponse::JobCannotBeFoundOnJenkinsInstance
                => "JobCannotBeFoundOnJenkinsInstance\n".to_string()
                    ,
            }
        }
    };

    if let Some(output_file) = args.output_file {
        std::fs::write(output_file, result)?
    } else {
        println!("{}", result);
    }
    Ok(())
}

fn prompt(force: bool, text: &str) -> Result<()> {
    if force || Confirm::new().with_prompt(text).interact()? {
        Ok(())
    } else {
        Err(anyhow!("Aborting"))
    }
}

// May be unused if all inputs are primitive types
#[allow(dead_code)]
fn parse_json<'a, T: serde::de::Deserialize<'a>>(json_string: &'a str) -> Result<T> {
    serde_json::from_str(json_string).map_err(|err| anyhow!("Error parsing input: {}", err))
}
