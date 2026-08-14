package org.openapitools.server.api.model

import org.openapitools.server.api.model.ExtensionClassImpllinks
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class ExtensionClassImpl(
    val propertyClass: kotlin.String? = null,
    val links: ExtensionClassImpllinks? = null,
    val classes: kotlin.collections.List<kotlin.String>? = null
)
