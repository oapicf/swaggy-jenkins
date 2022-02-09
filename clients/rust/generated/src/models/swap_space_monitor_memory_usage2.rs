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
pub struct SwapSpaceMonitorMemoryUsage2 {
    #[serde(rename = "_class", skip_serializing_if = "Option::is_none")]
    pub _class: Option<String>,
    #[serde(rename = "availablePhysicalMemory", skip_serializing_if = "Option::is_none")]
    pub available_physical_memory: Option<i32>,
    #[serde(rename = "availableSwapSpace", skip_serializing_if = "Option::is_none")]
    pub available_swap_space: Option<i32>,
    #[serde(rename = "totalPhysicalMemory", skip_serializing_if = "Option::is_none")]
    pub total_physical_memory: Option<i32>,
    #[serde(rename = "totalSwapSpace", skip_serializing_if = "Option::is_none")]
    pub total_swap_space: Option<i32>,
}

impl SwapSpaceMonitorMemoryUsage2 {
    pub fn new() -> SwapSpaceMonitorMemoryUsage2 {
        SwapSpaceMonitorMemoryUsage2 {
            _class: None,
            available_physical_memory: None,
            available_swap_space: None,
            total_physical_memory: None,
            total_swap_space: None,
        }
    }
}


