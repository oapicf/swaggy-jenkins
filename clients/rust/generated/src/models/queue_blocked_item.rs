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
pub struct QueueBlockedItem {
    #[serde(rename = "_class", skip_serializing_if = "Option::is_none")]
    pub _class: Option<String>,
    #[serde(rename = "actions", skip_serializing_if = "Option::is_none")]
    pub actions: Option<Vec<crate::models::CauseAction>>,
    #[serde(rename = "blocked", skip_serializing_if = "Option::is_none")]
    pub blocked: Option<bool>,
    #[serde(rename = "buildable", skip_serializing_if = "Option::is_none")]
    pub buildable: Option<bool>,
    #[serde(rename = "id", skip_serializing_if = "Option::is_none")]
    pub id: Option<i32>,
    #[serde(rename = "inQueueSince", skip_serializing_if = "Option::is_none")]
    pub in_queue_since: Option<i32>,
    #[serde(rename = "params", skip_serializing_if = "Option::is_none")]
    pub params: Option<String>,
    #[serde(rename = "stuck", skip_serializing_if = "Option::is_none")]
    pub stuck: Option<bool>,
    #[serde(rename = "task", skip_serializing_if = "Option::is_none")]
    pub task: Option<Box<crate::models::FreeStyleProject>>,
    #[serde(rename = "url", skip_serializing_if = "Option::is_none")]
    pub url: Option<String>,
    #[serde(rename = "why", skip_serializing_if = "Option::is_none")]
    pub why: Option<String>,
    #[serde(rename = "buildableStartMilliseconds", skip_serializing_if = "Option::is_none")]
    pub buildable_start_milliseconds: Option<i32>,
}

impl QueueBlockedItem {
    pub fn new() -> QueueBlockedItem {
        QueueBlockedItem {
            _class: None,
            actions: None,
            blocked: None,
            buildable: None,
            id: None,
            in_queue_since: None,
            params: None,
            stuck: None,
            task: None,
            url: None,
            why: None,
            buildable_start_milliseconds: None,
        }
    }
}


