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
pub struct ResponseTimeMonitorData {
    #[serde(rename = "_class", skip_serializing_if = "Option::is_none")]
    pub _class: Option<String>,
    #[serde(rename = "timestamp", skip_serializing_if = "Option::is_none")]
    pub timestamp: Option<i32>,
    #[serde(rename = "average", skip_serializing_if = "Option::is_none")]
    pub average: Option<i32>,
}

impl ResponseTimeMonitorData {
    pub fn new() -> ResponseTimeMonitorData {
        ResponseTimeMonitorData {
            _class: None,
            timestamp: None,
            average: None,
        }
    }
}

