/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct FreeStyleBuild {
    #[serde(rename = "_class", skip_serializing_if = "Option::is_none")]
    pub _class: Option<String>,
    #[serde(rename = "number", skip_serializing_if = "Option::is_none")]
    pub number: Option<i32>,
    #[serde(rename = "url", skip_serializing_if = "Option::is_none")]
    pub url: Option<String>,
    #[serde(rename = "actions", skip_serializing_if = "Option::is_none")]
    pub actions: Option<Vec<models::CauseAction>>,
    #[serde(rename = "building", skip_serializing_if = "Option::is_none")]
    pub building: Option<bool>,
    #[serde(rename = "description", skip_serializing_if = "Option::is_none")]
    pub description: Option<String>,
    #[serde(rename = "displayName", skip_serializing_if = "Option::is_none")]
    pub display_name: Option<String>,
    #[serde(rename = "duration", skip_serializing_if = "Option::is_none")]
    pub duration: Option<i32>,
    #[serde(rename = "estimatedDuration", skip_serializing_if = "Option::is_none")]
    pub estimated_duration: Option<i32>,
    #[serde(rename = "executor", skip_serializing_if = "Option::is_none")]
    pub executor: Option<String>,
    #[serde(rename = "fullDisplayName", skip_serializing_if = "Option::is_none")]
    pub full_display_name: Option<String>,
    #[serde(rename = "id", skip_serializing_if = "Option::is_none")]
    pub id: Option<String>,
    #[serde(rename = "keepLog", skip_serializing_if = "Option::is_none")]
    pub keep_log: Option<bool>,
    #[serde(rename = "queueId", skip_serializing_if = "Option::is_none")]
    pub queue_id: Option<i32>,
    #[serde(rename = "result", skip_serializing_if = "Option::is_none")]
    pub result: Option<String>,
    #[serde(rename = "timestamp", skip_serializing_if = "Option::is_none")]
    pub timestamp: Option<i32>,
    #[serde(rename = "builtOn", skip_serializing_if = "Option::is_none")]
    pub built_on: Option<String>,
    #[serde(rename = "changeSet", skip_serializing_if = "Option::is_none")]
    pub change_set: Option<Box<models::EmptyChangeLogSet>>,
}

impl FreeStyleBuild {
    pub fn new() -> FreeStyleBuild {
        FreeStyleBuild {
            _class: None,
            number: None,
            url: None,
            actions: None,
            building: None,
            description: None,
            display_name: None,
            duration: None,
            estimated_duration: None,
            executor: None,
            full_display_name: None,
            id: None,
            keep_log: None,
            queue_id: None,
            result: None,
            timestamp: None,
            built_on: None,
            change_set: None,
        }
    }
}

