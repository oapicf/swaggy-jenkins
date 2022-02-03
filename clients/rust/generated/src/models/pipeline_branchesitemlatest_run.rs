/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Default, Serialize, Deserialize)]
pub struct PipelineBranchesitemlatestRun {
    #[serde(rename = "durationInMillis", skip_serializing_if = "Option::is_none")]
    pub duration_in_millis: Option<i32>,
    #[serde(rename = "estimatedDurationInMillis", skip_serializing_if = "Option::is_none")]
    pub estimated_duration_in_millis: Option<i32>,
    #[serde(rename = "enQueueTime", skip_serializing_if = "Option::is_none")]
    pub en_queue_time: Option<String>,
    #[serde(rename = "endTime", skip_serializing_if = "Option::is_none")]
    pub end_time: Option<String>,
    #[serde(rename = "id", skip_serializing_if = "Option::is_none")]
    pub id: Option<String>,
    #[serde(rename = "organization", skip_serializing_if = "Option::is_none")]
    pub organization: Option<String>,
    #[serde(rename = "pipeline", skip_serializing_if = "Option::is_none")]
    pub pipeline: Option<String>,
    #[serde(rename = "result", skip_serializing_if = "Option::is_none")]
    pub result: Option<String>,
    #[serde(rename = "runSummary", skip_serializing_if = "Option::is_none")]
    pub run_summary: Option<String>,
    #[serde(rename = "startTime", skip_serializing_if = "Option::is_none")]
    pub start_time: Option<String>,
    #[serde(rename = "state", skip_serializing_if = "Option::is_none")]
    pub state: Option<String>,
    #[serde(rename = "type", skip_serializing_if = "Option::is_none")]
    pub _type: Option<String>,
    #[serde(rename = "commitId", skip_serializing_if = "Option::is_none")]
    pub commit_id: Option<String>,
    #[serde(rename = "_class", skip_serializing_if = "Option::is_none")]
    pub _class: Option<String>,
}

impl PipelineBranchesitemlatestRun {
    pub fn new() -> PipelineBranchesitemlatestRun {
        PipelineBranchesitemlatestRun {
            duration_in_millis: None,
            estimated_duration_in_millis: None,
            en_queue_time: None,
            end_time: None,
            id: None,
            organization: None,
            pipeline: None,
            result: None,
            run_summary: None,
            start_time: None,
            state: None,
            _type: None,
            commit_id: None,
            _class: None,
        }
    }
}


