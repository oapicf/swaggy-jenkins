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
pub struct FavoriteImpl {
    #[serde(rename = "_class", skip_serializing_if = "Option::is_none")]
    pub _class: Option<String>,
    #[serde(rename = "_links", skip_serializing_if = "Option::is_none")]
    pub _links: Option<Box<crate::models::FavoriteImpllinks>>,
    #[serde(rename = "item", skip_serializing_if = "Option::is_none")]
    pub item: Option<Box<crate::models::PipelineImpl>>,
}

impl FavoriteImpl {
    pub fn new() -> FavoriteImpl {
        FavoriteImpl {
            _class: None,
            _links: None,
            item: None,
        }
    }
}


