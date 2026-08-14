@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class ExtensionClassContainerImpl1map(
    @field:JsonProperty("io.jenkins.blueocean.service.embedded.rest.PipelineImpl")
    val ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl: ExtensionClassImpl? = null,

    @field:JsonProperty("io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl")
    val ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl: ExtensionClassImpl? = null,

    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

)
