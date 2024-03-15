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
pub struct FreeStyleProjecthealthReport {
    #[serde(rename = "description", skip_serializing_if = "Option::is_none")]
    pub description: Option<String>,
    #[serde(rename = "iconClassName", skip_serializing_if = "Option::is_none")]
    pub icon_class_name: Option<String>,
    #[serde(rename = "iconUrl", skip_serializing_if = "Option::is_none")]
    pub icon_url: Option<String>,
    #[serde(rename = "score", skip_serializing_if = "Option::is_none")]
    pub score: Option<i32>,
    #[serde(rename = "_class", skip_serializing_if = "Option::is_none")]
    pub _class: Option<String>,
}

impl FreeStyleProjecthealthReport {
    pub fn new() -> FreeStyleProjecthealthReport {
        FreeStyleProjecthealthReport {
            description: None,
            icon_class_name: None,
            icon_url: None,
            score: None,
            _class: None,
        }
    }
}

