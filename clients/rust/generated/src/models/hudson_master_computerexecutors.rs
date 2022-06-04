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
pub struct HudsonMasterComputerexecutors {
    #[serde(rename = "currentExecutable", skip_serializing_if = "Option::is_none")]
    pub current_executable: Option<Box<crate::models::FreeStyleBuild>>,
    #[serde(rename = "idle", skip_serializing_if = "Option::is_none")]
    pub idle: Option<bool>,
    #[serde(rename = "likelyStuck", skip_serializing_if = "Option::is_none")]
    pub likely_stuck: Option<bool>,
    #[serde(rename = "number", skip_serializing_if = "Option::is_none")]
    pub number: Option<i32>,
    #[serde(rename = "progress", skip_serializing_if = "Option::is_none")]
    pub progress: Option<i32>,
    #[serde(rename = "_class", skip_serializing_if = "Option::is_none")]
    pub _class: Option<String>,
}

impl HudsonMasterComputerexecutors {
    pub fn new() -> HudsonMasterComputerexecutors {
        HudsonMasterComputerexecutors {
            current_executable: None,
            idle: None,
            likely_stuck: None,
            number: None,
            progress: None,
            _class: None,
        }
    }
}


