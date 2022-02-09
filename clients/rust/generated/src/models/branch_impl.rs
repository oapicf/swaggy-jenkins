/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Default, Serialize, Deserialize)]
pub struct BranchImpl {
    #[serde(rename = "_class", skip_serializing_if = "Option::is_none")]
    pub _class: Option<String>,
    #[serde(rename = "displayName", skip_serializing_if = "Option::is_none")]
    pub display_name: Option<String>,
    #[serde(rename = "estimatedDurationInMillis", skip_serializing_if = "Option::is_none")]
    pub estimated_duration_in_millis: Option<i32>,
    #[serde(rename = "fullDisplayName", skip_serializing_if = "Option::is_none")]
    pub full_display_name: Option<String>,
    #[serde(rename = "fullName", skip_serializing_if = "Option::is_none")]
    pub full_name: Option<String>,
    #[serde(rename = "name", skip_serializing_if = "Option::is_none")]
    pub name: Option<String>,
    #[serde(rename = "organization", skip_serializing_if = "Option::is_none")]
    pub organization: Option<String>,
    #[serde(rename = "parameters", skip_serializing_if = "Option::is_none")]
    pub parameters: Option<Vec<crate::models::StringParameterDefinition>>,
    #[serde(rename = "permissions", skip_serializing_if = "Option::is_none")]
    pub permissions: Option<Box<crate::models::BranchImplpermissions>>,
    #[serde(rename = "weatherScore", skip_serializing_if = "Option::is_none")]
    pub weather_score: Option<i32>,
    #[serde(rename = "pullRequest", skip_serializing_if = "Option::is_none")]
    pub pull_request: Option<String>,
    #[serde(rename = "_links", skip_serializing_if = "Option::is_none")]
    pub _links: Option<Box<crate::models::BranchImpllinks>>,
    #[serde(rename = "latestRun", skip_serializing_if = "Option::is_none")]
    pub latest_run: Option<Box<crate::models::PipelineRunImpl>>,
}

impl BranchImpl {
    pub fn new() -> BranchImpl {
        BranchImpl {
            _class: None,
            display_name: None,
            estimated_duration_in_millis: None,
            full_display_name: None,
            full_name: None,
            name: None,
            organization: None,
            parameters: None,
            permissions: None,
            weather_score: None,
            pull_request: None,
            _links: None,
            latest_run: None,
        }
    }
}


