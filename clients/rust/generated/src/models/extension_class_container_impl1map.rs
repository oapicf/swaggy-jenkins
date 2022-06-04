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
pub struct ExtensionClassContainerImpl1map {
    #[serde(rename = "io.jenkins.blueocean.service.embedded.rest.PipelineImpl", skip_serializing_if = "Option::is_none")]
    pub io_jenkins_blueocean_service_embedded_rest_pipeline_impl: Option<Box<crate::models::ExtensionClassImpl>>,
    #[serde(rename = "io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl", skip_serializing_if = "Option::is_none")]
    pub io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl: Option<Box<crate::models::ExtensionClassImpl>>,
    #[serde(rename = "_class", skip_serializing_if = "Option::is_none")]
    pub _class: Option<String>,
}

impl ExtensionClassContainerImpl1map {
    pub fn new() -> ExtensionClassContainerImpl1map {
        ExtensionClassContainerImpl1map {
            io_jenkins_blueocean_service_embedded_rest_pipeline_impl: None,
            io_jenkins_blueocean_service_embedded_rest_multi_branch_pipeline_impl: None,
            _class: None,
        }
    }
}


