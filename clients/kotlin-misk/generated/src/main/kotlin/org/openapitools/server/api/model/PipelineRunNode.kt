package org.openapitools.server.api.model

import org.openapitools.server.api.model.PipelineRunNodeedges
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class PipelineRunNode(
    val propertyClass: kotlin.String? = null,
    val displayName: kotlin.String? = null,
    val durationInMillis: kotlin.Int? = null,
    val edges: kotlin.collections.List<PipelineRunNodeedges>? = null,
    val id: kotlin.String? = null,
    val result: kotlin.String? = null,
    val startTime: kotlin.String? = null,
    val state: kotlin.String? = null
)
