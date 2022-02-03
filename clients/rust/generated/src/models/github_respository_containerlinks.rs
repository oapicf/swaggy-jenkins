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
pub struct GithubRespositoryContainerlinks {
    #[serde(rename = "self", skip_serializing_if = "Option::is_none")]
    pub _self: Option<Box<crate::models::Link>>,
    #[serde(rename = "_class", skip_serializing_if = "Option::is_none")]
    pub _class: Option<String>,
}

impl GithubRespositoryContainerlinks {
    pub fn new() -> GithubRespositoryContainerlinks {
        GithubRespositoryContainerlinks {
            _self: None,
            _class: None,
        }
    }
}


