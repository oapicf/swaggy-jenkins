package org.openapitools.server.api.model

import org.openapitools.server.api.model.ExtensionClassContainerImpl1links
import org.openapitools.server.api.model.ExtensionClassContainerImpl1map
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class ExtensionClassContainerImpl1(
    val propertyClass: kotlin.String? = null,
    val links: ExtensionClassContainerImpl1links? = null,
    val map: ExtensionClassContainerImpl1map? = null
)
