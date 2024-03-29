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
pub struct ClassesByClass {
    #[serde(rename = "classes", skip_serializing_if = "Option::is_none")]
    pub classes: Option<Vec<String>>,
    #[serde(rename = "_class", skip_serializing_if = "Option::is_none")]
    pub _class: Option<String>,
}

impl ClassesByClass {
    pub fn new() -> ClassesByClass {
        ClassesByClass {
            classes: None,
            _class: None,
        }
    }
}

