package org.openapitools.server.api.model

import org.openapitools.server.api.model.Link
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class PipelineImpllinks(
    val self: Link? = null,
    val actions: Link? = null,
    val runs: Link? = null,
    val queue: Link? = null,
    val propertyClass: kotlin.String? = null
)
