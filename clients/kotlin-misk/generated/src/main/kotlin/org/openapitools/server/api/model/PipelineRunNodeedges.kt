package org.openapitools.server.api.model

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class PipelineRunNodeedges(
    val id: kotlin.String? = null,
    val propertyClass: kotlin.String? = null
)
