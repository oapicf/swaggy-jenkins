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
pub struct UnlabeledLoadStatistics {
    #[serde(rename = "_class", skip_serializing_if = "Option::is_none")]
    pub _class: Option<String>,
}

impl UnlabeledLoadStatistics {
    pub fn new() -> UnlabeledLoadStatistics {
        UnlabeledLoadStatistics {
            _class: None,
        }
    }
}


