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
pub struct ClockDifference {
    #[serde(rename = "_class", skip_serializing_if = "Option::is_none")]
    pub _class: Option<String>,
    #[serde(rename = "diff", skip_serializing_if = "Option::is_none")]
    pub diff: Option<i32>,
}

impl ClockDifference {
    pub fn new() -> ClockDifference {
        ClockDifference {
            _class: None,
            diff: None,
        }
    }
}


