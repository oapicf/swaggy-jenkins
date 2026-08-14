package org.openapitools.server.api.model

import org.openapitools.server.api.model.Link
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class PipelineRunImpllinks(
    val nodes: Link? = null,
    val log: Link? = null,
    val self: Link? = null,
    val actions: Link? = null,
    val steps: Link? = null,
    val propertyClass: kotlin.String? = null
)
