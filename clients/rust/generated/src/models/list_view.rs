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
pub struct ListView {
    #[serde(rename = "_class", skip_serializing_if = "Option::is_none")]
    pub _class: Option<String>,
    #[serde(rename = "description", skip_serializing_if = "Option::is_none")]
    pub description: Option<String>,
    #[serde(rename = "jobs", skip_serializing_if = "Option::is_none")]
    pub jobs: Option<Vec<crate::models::FreeStyleProject>>,
    #[serde(rename = "name", skip_serializing_if = "Option::is_none")]
    pub name: Option<String>,
    #[serde(rename = "url", skip_serializing_if = "Option::is_none")]
    pub url: Option<String>,
}

impl ListView {
    pub fn new() -> ListView {
        ListView {
            _class: None,
            description: None,
            jobs: None,
            name: None,
            url: None,
        }
    }
}


