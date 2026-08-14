package org.openapitools.server.api.model

import org.openapitools.server.api.model.ExtensionClassImpl
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class ExtensionClassContainerImpl1map(
    val ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl: ExtensionClassImpl? = null,
    val ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl: ExtensionClassImpl? = null,
    val propertyClass: kotlin.String? = null
)
