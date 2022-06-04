/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Default, Serialize, Deserialize)]
pub struct MultibranchPipeline {
    #[serde(rename = "displayName", skip_serializing_if = "Option::is_none")]
    pub display_name: Option<String>,
    #[serde(rename = "estimatedDurationInMillis", skip_serializing_if = "Option::is_none")]
    pub estimated_duration_in_millis: Option<i32>,
    #[serde(rename = "latestRun", skip_serializing_if = "Option::is_none")]
    pub latest_run: Option<String>,
    #[serde(rename = "name", skip_serializing_if = "Option::is_none")]
    pub name: Option<String>,
    #[serde(rename = "organization", skip_serializing_if = "Option::is_none")]
    pub organization: Option<String>,
    #[serde(rename = "weatherScore", skip_serializing_if = "Option::is_none")]
    pub weather_score: Option<i32>,
    #[serde(rename = "branchNames", skip_serializing_if = "Option::is_none")]
    pub branch_names: Option<Vec<String>>,
    #[serde(rename = "numberOfFailingBranches", skip_serializing_if = "Option::is_none")]
    pub number_of_failing_branches: Option<i32>,
    #[serde(rename = "numberOfFailingPullRequests", skip_serializing_if = "Option::is_none")]
    pub number_of_failing_pull_requests: Option<i32>,
    #[serde(rename = "numberOfSuccessfulBranches", skip_serializing_if = "Option::is_none")]
    pub number_of_successful_branches: Option<i32>,
    #[serde(rename = "numberOfSuccessfulPullRequests", skip_serializing_if = "Option::is_none")]
    pub number_of_successful_pull_requests: Option<i32>,
    #[serde(rename = "totalNumberOfBranches", skip_serializing_if = "Option::is_none")]
    pub total_number_of_branches: Option<i32>,
    #[serde(rename = "totalNumberOfPullRequests", skip_serializing_if = "Option::is_none")]
    pub total_number_of_pull_requests: Option<i32>,
    #[serde(rename = "_class", skip_serializing_if = "Option::is_none")]
    pub _class: Option<String>,
}

impl MultibranchPipeline {
    pub fn new() -> MultibranchPipeline {
        MultibranchPipeline {
            display_name: None,
            estimated_duration_in_millis: None,
            latest_run: None,
            name: None,
            organization: None,
            weather_score: None,
            branch_names: None,
            number_of_failing_branches: None,
            number_of_failing_pull_requests: None,
            number_of_successful_branches: None,
            number_of_successful_pull_requests: None,
            total_number_of_branches: None,
            total_number_of_pull_requests: None,
            _class: None,
        }
    }
}


