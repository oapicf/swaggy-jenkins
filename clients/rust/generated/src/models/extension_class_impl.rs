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
pub struct ExtensionClassImpl {
    #[serde(rename = "_class", skip_serializing_if = "Option::is_none")]
    pub _class: Option<String>,
    #[serde(rename = "_links", skip_serializing_if = "Option::is_none")]
    pub _links: Option<Box<crate::models::ExtensionClassImpllinks>>,
    #[serde(rename = "classes", skip_serializing_if = "Option::is_none")]
    pub classes: Option<Vec<String>>,
}

impl ExtensionClassImpl {
    pub fn new() -> ExtensionClassImpl {
        ExtensionClassImpl {
            _class: None,
            _links: None,
            classes: None,
        }
    }
}


