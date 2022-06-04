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
pub struct PipelineRunartifacts {
    #[serde(rename = "name", skip_serializing_if = "Option::is_none")]
    pub name: Option<String>,
    #[serde(rename = "size", skip_serializing_if = "Option::is_none")]
    pub size: Option<i32>,
    #[serde(rename = "url", skip_serializing_if = "Option::is_none")]
    pub url: Option<String>,
    #[serde(rename = "_class", skip_serializing_if = "Option::is_none")]
    pub _class: Option<String>,
}

impl PipelineRunartifacts {
    pub fn new() -> PipelineRunartifacts {
        PipelineRunartifacts {
            name: None,
            size: None,
            url: None,
            _class: None,
        }
    }
}


