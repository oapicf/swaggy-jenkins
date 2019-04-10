/// mime types for requests and responses

pub mod responses {
    use hyper::mime::*;

    // The macro is called per-operation to beat the recursion limit
    /// Create Mime objects for the response content types for GetCrumb
    lazy_static! {
        pub static ref GET_CRUMB_SUCCESSFULLY_RETRIEVED_CSRF_PROTECTION_TOKEN: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetAuthenticatedUser
    lazy_static! {
        pub static ref GET_AUTHENTICATED_USER_SUCCESSFULLY_RETRIEVED_AUTHENTICATED_USER_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetClasses
    lazy_static! {
        pub static ref GET_CLASSES_SUCCESSFULLY_RETRIEVED_CLASS_NAMES: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetJsonWebKey
    lazy_static! {
        pub static ref GET_JSON_WEB_KEY_SUCCESSFULLY_RETRIEVED_JWT_TOKEN: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetJsonWebToken
    lazy_static! {
        pub static ref GET_JSON_WEB_TOKEN_SUCCESSFULLY_RETRIEVED_JWT_TOKEN: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetOrganisation
    lazy_static! {
        pub static ref GET_ORGANISATION_SUCCESSFULLY_RETRIEVED_PIPELINE_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetOrganisations
    lazy_static! {
        pub static ref GET_ORGANISATIONS_SUCCESSFULLY_RETRIEVED_PIPELINES_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetPipeline
    lazy_static! {
        pub static ref GET_PIPELINE_SUCCESSFULLY_RETRIEVED_PIPELINE_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetPipelineActivities
    lazy_static! {
        pub static ref GET_PIPELINE_ACTIVITIES_SUCCESSFULLY_RETRIEVED_ALL_ACTIVITIES_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetPipelineBranch
    lazy_static! {
        pub static ref GET_PIPELINE_BRANCH_SUCCESSFULLY_RETRIEVED_BRANCH_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetPipelineBranchRun
    lazy_static! {
        pub static ref GET_PIPELINE_BRANCH_RUN_SUCCESSFULLY_RETRIEVED_RUN_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetPipelineBranches
    lazy_static! {
        pub static ref GET_PIPELINE_BRANCHES_SUCCESSFULLY_RETRIEVED_ALL_BRANCHES_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetPipelineFolder
    lazy_static! {
        pub static ref GET_PIPELINE_FOLDER_SUCCESSFULLY_RETRIEVED_FOLDER_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetPipelineFolderPipeline
    lazy_static! {
        pub static ref GET_PIPELINE_FOLDER_PIPELINE_SUCCESSFULLY_RETRIEVED_PIPELINE_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetPipelineQueue
    lazy_static! {
        pub static ref GET_PIPELINE_QUEUE_SUCCESSFULLY_RETRIEVED_QUEUE_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetPipelineRun
    lazy_static! {
        pub static ref GET_PIPELINE_RUN_SUCCESSFULLY_RETRIEVED_RUN_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetPipelineRunLog
    lazy_static! {
        pub static ref GET_PIPELINE_RUN_LOG_SUCCESSFULLY_RETRIEVED_PIPELINE_RUN_LOG: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetPipelineRunNode
    lazy_static! {
        pub static ref GET_PIPELINE_RUN_NODE_SUCCESSFULLY_RETRIEVED_RUN_NODE_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetPipelineRunNodeStep
    lazy_static! {
        pub static ref GET_PIPELINE_RUN_NODE_STEP_SUCCESSFULLY_RETRIEVED_RUN_NODE_STEP_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetPipelineRunNodeStepLog
    lazy_static! {
        pub static ref GET_PIPELINE_RUN_NODE_STEP_LOG_SUCCESSFULLY_RETRIEVED_PIPELINE_RUN_NODE_STEP_LOG: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetPipelineRunNodeSteps
    lazy_static! {
        pub static ref GET_PIPELINE_RUN_NODE_STEPS_SUCCESSFULLY_RETRIEVED_RUN_NODE_STEPS_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetPipelineRunNodes
    lazy_static! {
        pub static ref GET_PIPELINE_RUN_NODES_SUCCESSFULLY_RETRIEVED_RUN_NODES_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetPipelineRuns
    lazy_static! {
        pub static ref GET_PIPELINE_RUNS_SUCCESSFULLY_RETRIEVED_RUNS_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetPipelines
    lazy_static! {
        pub static ref GET_PIPELINES_SUCCESSFULLY_RETRIEVED_PIPELINES_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetSCM
    lazy_static! {
        pub static ref GET_SCM_SUCCESSFULLY_RETRIEVED_SCM_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetSCMOrganisationRepositories
    lazy_static! {
        pub static ref GET_SCM_ORGANISATION_REPOSITORIES_SUCCESSFULLY_RETRIEVED_SCM_ORGANIZATION_REPOSITORIES_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetSCMOrganisationRepository
    lazy_static! {
        pub static ref GET_SCM_ORGANISATION_REPOSITORY_SUCCESSFULLY_RETRIEVED_SCM_ORGANIZATIONS_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetSCMOrganisations
    lazy_static! {
        pub static ref GET_SCM_ORGANISATIONS_SUCCESSFULLY_RETRIEVED_SCM_ORGANIZATIONS_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetUser
    lazy_static! {
        pub static ref GET_USER_SUCCESSFULLY_RETRIEVED_USERS_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetUserFavorites
    lazy_static! {
        pub static ref GET_USER_FAVORITES_SUCCESSFULLY_RETRIEVED_USERS_FAVORITES_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetUsers
    lazy_static! {
        pub static ref GET_USERS_SUCCESSFULLY_RETRIEVED_USERS_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for PostPipelineRun
    lazy_static! {
        pub static ref POST_PIPELINE_RUN_SUCCESSFULLY_REPLAYED_A_PIPELINE_RUN: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for PostPipelineRuns
    lazy_static! {
        pub static ref POST_PIPELINE_RUNS_SUCCESSFULLY_STARTED_A_BUILD: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for PutPipelineFavorite
    lazy_static! {
        pub static ref PUT_PIPELINE_FAVORITE_SUCCESSFULLY_FAVORITED: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for PutPipelineRun
    lazy_static! {
        pub static ref PUT_PIPELINE_RUN_SUCCESSFULLY_STOPPED_A_BUILD: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for Search
    lazy_static! {
        pub static ref SEARCH_SUCCESSFULLY_RETRIEVED_SEARCH_RESULT: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for SearchClasses
    lazy_static! {
        pub static ref SEARCH_CLASSES_SUCCESSFULLY_RETRIEVED_SEARCH_RESULT: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetComputer
    lazy_static! {
        pub static ref GET_COMPUTER_SUCCESSFULLY_RETRIEVED_COMPUTER_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetJenkins
    lazy_static! {
        pub static ref GET_JENKINS_SUCCESSFULLY_RETRIEVED_JENKINS_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetJob
    lazy_static! {
        pub static ref GET_JOB_SUCCESSFULLY_RETRIEVED_JOB_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetJobConfig
    lazy_static! {
        pub static ref GET_JOB_CONFIG_SUCCESSFULLY_RETRIEVED_JOB_CONFIGURATION_IN_CONFIG: Mime = "text/xml".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetJobLastBuild
    lazy_static! {
        pub static ref GET_JOB_LAST_BUILD_SUCCESSFULLY_RETRIEVED_JOB: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetQueue
    lazy_static! {
        pub static ref GET_QUEUE_SUCCESSFULLY_RETRIEVED_QUEUE_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetQueueItem
    lazy_static! {
        pub static ref GET_QUEUE_ITEM_SUCCESSFULLY_RETRIEVED_QUEUED_ITEM_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetView
    lazy_static! {
        pub static ref GET_VIEW_SUCCESSFULLY_RETRIEVED_VIEW_DETAILS: Mime = "application/json".parse().unwrap();
    }
    /// Create Mime objects for the response content types for GetViewConfig
    lazy_static! {
        pub static ref GET_VIEW_CONFIG_SUCCESSFULLY_RETRIEVED_VIEW_CONFIGURATION_IN_CONFIG: Mime = "text/xml".parse().unwrap();
    }
    /// Create Mime objects for the response content types for PostCreateItem
    lazy_static! {
        pub static ref POST_CREATE_ITEM_AN_ERROR_HAS_OCCURRED: Mime = "*/*".parse().unwrap();
    }
    /// Create Mime objects for the response content types for PostCreateView
    lazy_static! {
        pub static ref POST_CREATE_VIEW_AN_ERROR_HAS_OCCURRED: Mime = "*/*".parse().unwrap();
    }
    /// Create Mime objects for the response content types for PostJobConfig
    lazy_static! {
        pub static ref POST_JOB_CONFIG_AN_ERROR_HAS_OCCURRED: Mime = "*/*".parse().unwrap();
    }
    /// Create Mime objects for the response content types for PostViewConfig
    lazy_static! {
        pub static ref POST_VIEW_CONFIG_AN_ERROR_HAS_OCCURRED: Mime = "*/*".parse().unwrap();
    }

}

pub mod requests {
    use hyper::mime::*;
   /// Create Mime objects for the request content types for PutPipelineFavorite
    lazy_static! {
        pub static ref PUT_PIPELINE_FAVORITE: Mime = "application/json".parse().unwrap();
    }
   /// Create Mime objects for the request content types for PostCreateItem
    lazy_static! {
        pub static ref POST_CREATE_ITEM: Mime = "application/json".parse().unwrap();
    }
   /// Create Mime objects for the request content types for PostCreateView
    lazy_static! {
        pub static ref POST_CREATE_VIEW: Mime = "application/json".parse().unwrap();
    }
   /// Create Mime objects for the request content types for PostJobConfig
    lazy_static! {
        pub static ref POST_JOB_CONFIG: Mime = "application/json".parse().unwrap();
    }
   /// Create Mime objects for the request content types for PostViewConfig
    lazy_static! {
        pub static ref POST_VIEW_CONFIG: Mime = "application/json".parse().unwrap();
    }

}
