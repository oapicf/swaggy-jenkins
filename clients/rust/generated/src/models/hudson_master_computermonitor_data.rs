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
pub struct HudsonMasterComputermonitorData {
    #[serde(rename = "hudson.node_monitors.SwapSpaceMonitor", skip_serializing_if = "Option::is_none")]
    pub hudson_period_node_monitors_period_swap_space_monitor: Option<Box<models::SwapSpaceMonitorMemoryUsage2>>,
    #[serde(rename = "hudson.node_monitors.TemporarySpaceMonitor", skip_serializing_if = "Option::is_none")]
    pub hudson_period_node_monitors_period_temporary_space_monitor: Option<Box<models::DiskSpaceMonitorDescriptorDiskSpace>>,
    #[serde(rename = "hudson.node_monitors.DiskSpaceMonitor", skip_serializing_if = "Option::is_none")]
    pub hudson_period_node_monitors_period_disk_space_monitor: Option<Box<models::DiskSpaceMonitorDescriptorDiskSpace>>,
    #[serde(rename = "hudson.node_monitors.ArchitectureMonitor", skip_serializing_if = "Option::is_none")]
    pub hudson_period_node_monitors_period_architecture_monitor: Option<String>,
    #[serde(rename = "hudson.node_monitors.ResponseTimeMonitor", skip_serializing_if = "Option::is_none")]
    pub hudson_period_node_monitors_period_response_time_monitor: Option<Box<models::ResponseTimeMonitorData>>,
    #[serde(rename = "hudson.node_monitors.ClockMonitor", skip_serializing_if = "Option::is_none")]
    pub hudson_period_node_monitors_period_clock_monitor: Option<Box<models::ClockDifference>>,
    #[serde(rename = "_class", skip_serializing_if = "Option::is_none")]
    pub _class: Option<String>,
}

impl HudsonMasterComputermonitorData {
    pub fn new() -> HudsonMasterComputermonitorData {
        HudsonMasterComputermonitorData {
            hudson_period_node_monitors_period_swap_space_monitor: None,
            hudson_period_node_monitors_period_temporary_space_monitor: None,
            hudson_period_node_monitors_period_disk_space_monitor: None,
            hudson_period_node_monitors_period_architecture_monitor: None,
            hudson_period_node_monitors_period_response_time_monitor: None,
            hudson_period_node_monitors_period_clock_monitor: None,
            _class: None,
        }
    }
}

