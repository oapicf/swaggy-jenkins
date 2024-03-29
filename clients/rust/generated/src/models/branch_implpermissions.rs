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
pub struct BranchImplpermissions {
    #[serde(rename = "create", skip_serializing_if = "Option::is_none")]
    pub create: Option<bool>,
    #[serde(rename = "read", skip_serializing_if = "Option::is_none")]
    pub read: Option<bool>,
    #[serde(rename = "start", skip_serializing_if = "Option::is_none")]
    pub start: Option<bool>,
    #[serde(rename = "stop", skip_serializing_if = "Option::is_none")]
    pub stop: Option<bool>,
    #[serde(rename = "_class", skip_serializing_if = "Option::is_none")]
    pub _class: Option<String>,
}

impl BranchImplpermissions {
    pub fn new() -> BranchImplpermissions {
        BranchImplpermissions {
            create: None,
            read: None,
            start: None,
            stop: None,
            _class: None,
        }
    }
}

